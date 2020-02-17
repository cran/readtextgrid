data_raw <-
'File type = "ooTextFile"
Object class = "TextGrid"

xmin = 0
xmax = 2.3
tiers? <exists>
size = 3
item []:
    item [1]:
       class = "IntervalTier"
       name = "Mary"
       xmin = 0
       xmax = 2.3
       intervals: size = 1
       intervals [1]:
          xmin = 0
          xmax = 2.3
          text = ""
    item [2]:
       class = "IntervalTier"
       name = "John"
       xmin = 0
       xmax = 2.3
       intervals: size = 1
       intervals [1]:
          xmin = 0
          xmax = 2.3
          text = ""
    item [3]:
       class = "TextTier"
       name = "bell"
       xmin = 0
       xmax = 2.3
       points: size = 0
'

data_raw <-
'File type = "ooTextFile"
Object class = "TextGrid"

xmin = 0
xmax = 1
tiers? <exists>
size = 3
item []:
    item [1]:
        class = "IntervalTier"
        name = "Mary"
        xmin = 0
        xmax = 1
        intervals: size = 1
        intervals [1]:
            xmin = 0
            xmax = 1
            text = "hello there"
    item [2]:
        class = "IntervalTier"
        name = "John"
        xmin = 0
        xmax = 1
        intervals: size = 2
        intervals [1]:
            xmin = 0
            xmax = 0.4356640625
            text = "                                lol"
        intervals [2]:
            xmin = 0.4356640625
            xmax = 1
            text = "what is ""this"" word"
    item [3]:
        class = "TextTier"
        name = "bell"
        xmin = 0
        xmax = 1
        points: size = 2
        points [1]:
            number = 0.18944010416666668
            mark = "a test"
        points [2]:
            number = 0.3911848958333333
            mark = " a line break
here"
'

data <- readr::read_lines(data_raw, )

data %>%
  str_extract_all("\\\".+\\\"")
unlist(str_split(data, "\\s+"))




library(tidyverse)
