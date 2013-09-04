import re, operations, dl_edit_distance

class Spelling:
  def __init__(self, obs):
    """
      Create a spelling observation for processing.
      NOISY BOX ALGORITIHM 
      A noisy channel with step 2 modified.
    """
    self.obs  = obs
    self.size = len(obs)
    self.words = file("words").read()
    self.fallback = [] #fallback to store deletions, when no candidate is found

    #for regex matching
    self.alphabets = "[a-zA-Z'-]{1,3}" #all aphabets including apostrophe and hyphen

    return None

  def candidate_set(self):
    """
    Genrate a list of candidate set using the noisy
    channel step 1 fact that each spelling mistake can
    be corrected by making just one insertion, deletion,
    substitution or transposition.

    ALGORITHM
    =========
    Given an observation, say 'abck', an Insertion can be
    made at n+1 positions. [a-z]abck, a[a-z]bck, ..., abck[a-z]
    Substituition can be made in n ways. [a-zbck], ...
    Deletion in n ways
    Transposition in n ways
    Use regex to match everything

    @param None
    @return dict with each key mapping to 0
    """
    obs = self.obs
    size = self.size
    regexes = []

    #iterate over list and generate regexes
    for i in range(0, size+1):
      regexes.append(operations.insert(obs, i, self.alphabets)) #insertion candidates
      if(i<size):
        regexes.append(operations.sub(obs, i, self.alphabets)) #substituition candidates
        d = operations.delete(obs, i)
        regexes.append(d)#deletion candidates
        #send deletion to fallbacks as well
        self.fallback.append(d)
    regexes += operations.all_trans(obs) #transposition candidates
    pattern = "|".join(regexes)
    candidates = list( set( re.findall(pattern, self.words) ) ) #set removes duplicates
    c_set = {}
    [c_set.update({w:0}) for w in candidates]
    return c_set

  def edit_distances(self):
    """
      Calc. Demaro Levenstein edit distance between obs. and candidate set
    """
    candidate_set = self.candidate_set()
    for w in candidate_set.keys():
      candidate_set[w] = dl_edit_distance.dl(self.obs, w)
    return candidate_set

  def correct(self):
    """
    Return first element with min edit distance because
    freq. analysis. in unigram does not make sens 

    @return list()
      >>>one elementic implies auto correct
      >>>one+ elementic implies suggestions
    """
    candidates = self.edit_distances()
    if(len(candidates) > 0):
      correction = min(candidates.values())
      #print candidates
      for w in candidates.keys():
        if(candidates[w] == correction):
          return [w]
    else:
      #no match found, fallback
      rescue = {}
      for w in self.fallback:
        rescue.update(Spelling(w).candidate_set())
      return rescue.keys()

def main():
  print Spelling('acress').edit_distances()
  while True:
    obs = raw_input("Enter observation : ")
    print Spelling(obs).correct()

if __name__ == '__main__':
    main()
