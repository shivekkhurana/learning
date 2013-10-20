<?php namespace Core\User;

use Abstracts;
use Core\Traits;
use Core\IndustryMember\Model as IndustryMember;
use Core\Artist\Model as Artist;
use Core\Event\Model as Event;
use Core\Venue\Model as Venue;
use Core\IndustryMember\Model as IndustryMember;
use Core\Media\Song;
use Core\Media\Video;
use Core\Classification\Genre;

class Model extends Abstracts\Model {

	/**
	 * Settings and Metadata
	 */
	protected $table = 'core_users';

	/**
	 * Setup
	 */

	/**
	 * Relations
	 */
	public function roles()
	{
		return $this->belongsToMany(Role::class, 'core_user_role', 'user_id', 'role_id');
	}

	public function industryMember()
	{
		return $this->hasOne(IndustryMember::class, 'user_id');
	}

	public function favoriteGenres()
	{
		return $this->belongsToMany(
			Genre::class, 'core_user_favorite_genres', 'user_id', 'genre_id'
		);
	}

	public function favoriteArtists()
	{
		return $this->belongsToMany(
			Artist::class, 'core_user_favorite_artists', 'user_id', 'artist_id'
		);
	}

	public function favoriteEvents()
	{
		return $this->belongsToMany(
			Event::class, 'core_user_favorite_events', 'user_id', 'event_id'
		);
	}

	public function favoriteSongs()
	{
		return $this->belongsToMany(
			Song::class, 'core_user_favorite_songs', 'user_id', 'song_id'
		);
	}

	public function favoriteVideos()
	{
		return $this->belongsToMany(
			Video::class, 'core_user_favorite_videos', 'user_id', 'video_id'
		);
	}

	public function favoriteIndustryMembers()
	{
		return $this->belongsToMany(
			IndustryMember::class, 'core_user_favorite_industry_members', 'user_id', 'industry_member_id'			
		);
	}

}