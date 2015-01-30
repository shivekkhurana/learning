
load data.mat;
% w_age, w_edu, h_edu, num_children, w_islam, w_working, h_occupation, stand_living, media_exposure, contraceptive
% results -> contraceptive (1-no use, 2-long term, 3-short term)


global Classes = {
    'No Use'; 
    'Long Term';
    'Short Term'
};

global Evidences = {
    'Wife Age';
    'Wife Eduction';
    'Husband Eduction';
    'Number of children';
    'Wife Islam ?';
    'Wife Working ?';
    'Husband Occupation';
    'Standard of Living';
    'Media Exposure';
};

global ClassProbability = [
    size(find(data(:, 10)==1), 1)/size(data, 1);
    size(find(data(:, 10)==2), 1)/size(data, 1);
    size(find(data(:, 10)==3), 1)/size(data, 1)
];

function [p] = eClassProb(evidence_id, evidence_value, class_id, data)
    global ClassProbability;
    % Find P(evidence_number at value evidence_value | class_id)
    p_evidence_and_result = size(find(data(:, evidence_id) == evidence_value & data(:, 10) == class_id), 1)/size(data, 1);
    
    p_result = ClassProbability(class_id);

    p = p_evidence_and_result/p_result;
end

function [class_id] = classify(EvidenceValues, data)
    global Classes Evidences ClassProbability;

    size_classes = size(Classes, 1);
    size_evidences = size(Evidences, 1);

    prob = zeros(size_classes, size_evidences);

    for c=1:size_classes-1
        for e=1:size_evidences-1
            prob(c,e) = eClassProb(e, EvidenceValues(e), c, data);
        end 
        prob(size_classes, size_evidences) = ClassProbability(c);
    end


    sum_probs = zeros(size_classes, 1);
    for c=1:size_classes
        sum_probs(c, 1) = sum(prob(c, :));
    end
    [m, class_id] = max(sum_probs);
end

Classes(classify([30,4,4,1,0,1,2,4,0,2], data))