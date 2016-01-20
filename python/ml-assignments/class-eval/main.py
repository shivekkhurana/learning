#!/usr/bin/python

class User(object):
    def __init__(self):
        super(User, self).__init__()
        self.liked = {
            'authors': {},
            'categories': {},
            'tags':[] 
        }
        self.like_tally = []

    def like_author(self, author):
        try:
            self.liked['authors'][author] += 1
        except KeyError:
            self.liked['authors'][author] = 1

    def liked_authors(self):
        return [author[0] for author in sorted(self.liked['authors'].items(), key=lambda x: x[1], reverse=True)][0:5]

    def like_category(self, category):
        try:
            self.liked['categories'][category] += 1
        except KeyError:
            self.liked['categories'][category] = 1

    def liked_categories(self):
        return [category[0] for category in sorted(self.liked['categories'].items(), key=lambda x: x[1], reverse=True)][0:5]

    def author_score(self, quotes_buffer):
        scores = []
        liked_authors = self.liked_authors()
        for q in quotes_buffer:
            if q[1] in liked_authors:
                scores.append(1)
            else:
                scores.append(0)

        return scores

    def category_score(self, quotes_buffer):
        scores = []
        liked_categories = self.liked_categories()
        for q in quotes_buffer:
            if q[2] in liked_categories:
                scores.append(1)
            else:
                scores.append(0)
        return scores

    def tags_score():
        pass

    def show_quote(self, quotes_buffer):
        # evaluate distances and show the most apt of ten quotes
        # we hope that the like tally increases over time
        a_score = self.author_score(quotes_buffer)
        c_score = self.category_score(quotes_buffer)

        overall = [sum(x) for x in zip(a_score, c_score)]
        most_apt_quote = quotes_buffer[overall.index(max(overall))] # quote is at index 0
        if (input("%s\nPress 1 to like, any other key to continue :"% most_apt_quote[0]) == '1'
            ):
            self.like_author(most_apt_quote[1])
            self.like_category(most_apt_quote[2])
            self.like_tally.append(1)
            print(self.liked_authors())
            print(self.liked_categories())
            print(self.like_tally)

        else:
            self.like_tally.append(0)


def main():
    me = User()
    quotes = (quote.split(';') for quote in open('quotes_all.csv') if quote[0] != '#')
    while(True):
        #create a 10 item buffer to avoid comparison with entire dataset. Can be looked into by using db in prod.
        i = 10
        quotes_buffer = []
        for quote in quotes:
            i -= 1
            quotes_buffer.append(quote)
            if (i == 0):
                me.show_quote(quotes_buffer)
                break


if __name__ == '__main__':
    main()