/*  Android 3-DOF Controller
    Copyright (C) 2010 Nicholas Katzakis

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.*/

package com.elenhos;

import java.io.IOException;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

//import javax.jmdns.*;
//import javax.jmdns.impl.JmDNSImpl;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Toast;

import com.elenhos.ElenhosData.PhoneEvent;

public class Remocon extends Activity implements SensorEventListener,
		OnTouchListener {

	private SensorManager sm;
	private Context context;
	private SurfaceView canvas;

	private short speed; // toggle this on button press to regulate sensor data
							// throughoutput
	private boolean working;

	InetAddress dest; // where we'll send the UDP packets
	DatagramSocket sk; // our socket

	Toast notifier; // Pop-up notifier for errors etc

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		speed = SensorManager.SENSOR_DELAY_FASTEST;

		super.onCreate(savedInstanceState);
		setContentView(com.elenhos.R.layout.main);

		canvas = (SurfaceView) findViewById(R.id.Canvas); // object that
															// receives touch
															// events
		canvas.setOnTouchListener(this);

		sm = (SensorManager) getSystemService(Context.SENSOR_SERVICE);

		// register to listen for changes in values for two sensor types
		// sensorReg();
		working = false;
		// needed for the toast popups
		context = getApplicationContext();

		// pop-up notifications Toast
		notifier = new Toast(context);
		notifier = Toast.makeText(context, "jubei", 2);

		// set the destination address
		// set the destination address
		try {
			dest = InetAddress.getByName("192.168.0.10"); // Jubei
			// dest = InetAddress.getByName("192.168.11.4"); //Jason
			sk = new DatagramSocket();

		} catch (UnknownHostException e) {
			sensorUnreg();
			popup("UknownHostException :" + e.toString());

		} catch (SocketException e) {
			sensorUnreg();
			popup("SocketException :" + e.toString());
		}
	}

	// display a toast pop-up for 2 seconds
	private void popup(String msg) {
		notifier.setText(msg);
		notifier.show();
	}

	// functions to register and unregister on sensor event listener
	private void sensorReg() {
		sm.registerListener(this, sm.getSensorList(Sensor.TYPE_MAGNETIC_FIELD)
				.get(0), speed);
		sm.registerListener(this, sm.getSensorList(Sensor.TYPE_ACCELEROMETER)
				.get(0), speed);
		working = true;
	}

	private void sensorUnreg() {
		sm.unregisterListener(this, sm
				.getSensorList(Sensor.TYPE_MAGNETIC_FIELD).get(0));
		sm.unregisterListener(this, sm.getSensorList(Sensor.TYPE_ACCELEROMETER)
				.get(0));
		working = false;
	}

	public void onAccuracyChanged(Sensor arg0, int arg1) {
		// TODO Auto-generated method stub
	}

	// as soon as a new sensor value exists
	// build a message and put it on the network with tx()
	public void onSensorChanged(SensorEvent s_ev) {
		if (working) {
			PhoneEvent.Builder toTransmit = PhoneEvent.newBuilder().setX(
					s_ev.values[0]).setY(s_ev.values[1]).setZ(s_ev.values[2]);
			
			if (s_ev.sensor.getType() == Sensor.TYPE_MAGNETIC_FIELD) {
				toTransmit.setType(ElenhosData.MsgType.MAG);
			} else {
				toTransmit.setType(ElenhosData.MsgType.ACCEL);
			}
			tx(toTransmit.build().toByteArray());
		}
	}

	// unregister from listener so that
	// we don't keep transmitting packets
	@Override
	public void onPause() {
		super.onPause();
		sensorUnreg();
	}

	@Override
	public void onStop() {
		super.onStop();
		sensorUnreg();
	}

	@Override
	public void onResume() {
		super.onResume();
		sensorReg();
	}

	// Menu Stuff
	/* Creates the menu items */
	public boolean onCreateOptionsMenu(Menu menu) {
		menu.add(0, 0, 0, "Start");
		menu.add(0, 1, 1, "Stop");
		menu.add(1, 2, 2, "Calibrate");
		return true;
	}

	/* Handles item selections */
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case 0:
			sensorReg();
			popup("Sensor Data transmission Initiated");
			return true;
		case 1:
			sensorUnreg();
			popup("Sensor Data Transmission terminated");
			return true;
		case 2:
			calibrate();
			popup("Phone Orientation Calibrated");
		}
		return false;
	}

	public void calibrate() {
		PhoneEvent.Builder toTransmit = PhoneEvent.newBuilder().setType(
				ElenhosData.MsgType.BUTTON).setButtontype(1);
		tx(toTransmit.build().toByteArray());
		popup("Orientation Calibrated");
	}

	// handle touch event
	public boolean onTouch(View v, MotionEvent event) {
		sensorReg();
		return true;
	}

	// transmit a string via UDP to the preset host
	private void tx(byte[] bs) {
		try {
			sk.send(new DatagramPacket(bs, bs.length, dest, 9999));

		} catch (UnknownHostException e) {
			sensorUnreg();
			popup("InetAddress Error: " + e.toString());
		} catch (SocketException e) {
			sensorUnreg();
			popup("Socket Error: " + e.toString());
		} catch (IOException e) {
			sensorUnreg();
			popup("IO Error: " + e.toString());
		}

	}

	// handle key presses
	public boolean onKeyDown(int KeyCode, KeyEvent event) {
		switch (KeyCode) {
		// case KeyEvent.KEYCODE_SEARCH:
		case KeyEvent.KEYCODE_CAMERA:
			calibrate();
			break;
		case KeyEvent.KEYCODE_DPAD_CENTER:
			toggleSpeed();
			break;
		case KeyEvent.KEYCODE_VOLUME_DOWN:
			//tx(events.BUTTON_EVENT+";");
			break;
		case KeyEvent.KEYCODE_MENU:
			super.onKeyDown(KeyCode, event);
			break;
		}
		return true;
	}

	private void toggleSpeed() {
		sensorUnreg();
		if (speed == 3) {
			speed = SensorManager.SENSOR_DELAY_FASTEST;
		} else
			speed += 1;
		sensorReg();
		popup("Speed set to " + speed);

	}

}
