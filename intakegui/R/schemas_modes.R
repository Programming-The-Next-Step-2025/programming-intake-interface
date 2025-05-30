ysq_items <- list(
  "Emotional Deprivation" = c("I’ve rarely had a strong person to give me
                              sound advice or direction when I'm not sure what
                              to do.",
                              "I haven't gotten enough love and attention.",
                              "For the most part, I haven’t had someone who
                              really listens to me, understands me, or is tuned
                              into my true needs and feelings.",
                              "For much of my life, I haven't felt that I’m
                              special to someone.",
                              "For much of my life, I haven't had someone
                              who wanted to get close to me and spend a lot of
                              time with me.",
                              "For the most part, I haven't had someone to
                              depend on for advice and emotional support.",
                              "Most of the time, I haven't had someone to
                              nurture me, share him/herself with me, or care
                              deeply about everything that happens to me.",
                              "In general, people haven’t been there to give me
                              warmth, holding, and affection."),
  "Abandonment" = c("I need other people so much that I worry about losing them.",
                    "I can't let myself get really close to other people,
                    because I can't be sure they'll always be there.",
                    "The people close to me have been very unpredictable:
                    one moment they're available and nice to me; the next,
                    they're angry, upset, self-absorbed, fighting, etc.",
                    "I become upset when someone leaves me alone, even for a
                    short period of time.",
                    "I worry that people I feel close to will leave me or
                    abandon me.",
                    "Sometimes I’m so worried about people leaving me that I
                    drive them away.",
                    "When I feel someone I care for pulling away from me, I get
                    desperate.",
                    "I can't be myself or express what I really feel, or people
                    will leave me.",
                    "I feel addicted to partners who can't be there for me in a
                    committed way.",
                    "I don't feel that important relationships will last; I
                    expect them to end.",
                    "I find myself clinging to people I'm close to, because I'm
                    afraid they'll leave me."),
  "Mistrust/Abuse" = c("I have a great deal of difficulty trusting people.",
                       'I subscribe to the belief: "Control or be controlled."',
                       "I'm usually on the lookout for people's ulterior motives.",
                       'I set up "tests" for other people, to see if they are
                       telling me the truth and are well-intentioned.',
                       "I feel that people will take advantage of me.",
                       "It’s only a matter of time before someone betrays me.",
                       "I feel that I can’t let my guard down in the presence
                       of other people, or else they will intentionally
                       hurt me.",
                       "I’m quite suspicious of other people's motives."),
  "Social Isolation" = c("I feel alienated from other people.",
                         "I sometimes feel as if I'm an alien.",
                         "I don't belong; I'm a loner.",
                         "No one really understands me.",
                         "I'm fundamentally different from other people.",
                         "I don't fit in.",
                         "I always feel on the outside of groups."),
  "Defectiveness/Shame" = c("I feel that I'm not lovable.",
                            "None of the people I desire would want to stay
                            close to me if they knew my real me.",
                            "I’m too unacceptable in very basic ways to reveal
                            myself to other people.",
                            "No one I desire could love me once my defects
                            are revealed.",
                            "I can’t understand how anyone could love me.",
                            "When people like me, I feel I’m fooling them.",
                            "I'm unworthy of the love, attention, and respect of
                            others."),
  "Failure" = c("I'm not as intelligent as most people when it comes to work
                (or school).",
                "I'm not as talented as most people are at their work
                (or at school).",
                "Almost nothing I do at work (or school) is as good as
                other people can do.",
                "Most other people are more capable than I am in areas of
                work (or school) and achievement.",
                "I'm a failure.",
                "I often feel embarrassed around other people, because I
                don't measure up to them in terms of my accomplishments.",
                "I often compare my accomplishments with others and feel that
                they are much more successful.",
                "I'm incompetent when it comes to achievement."),
  "Dependence/Incompetence" = c("I don't feel confident about my ability to solve
                                everyday problems that come up.",
                                "I feel that I need someone I can rely on to give
                                me advice about practical issues.",
                                "I have trouble tackling new tasks outside of work
                                (or school), unless I have someone to guide me.",
                                "I believe that other people can take care of me
                                better than I can take care of myself.",
                                "I don’t feel capable of getting by on my own in
                                everyday life.",
                                "I lack common sense.",
                                "I feel more like a child than an adult when it
                                comes to handling everyday responsibilities.",
                                "My judgment can’t be relied on in everyday
                                situations.",
                                "I find the responsibilities of everyday life
                                overwhelming.",
                                "I think of myself as a dependent person when it
                                comes to everyday functioning.",
                                "If I trust my own judgment in everyday
                                situations, I'll make the wrong decision.",
                                "I screw up everything I try, even outside of
                                work (or school)."),
  "Vulnerability to Harm" = c("I worry about becoming a street person or vagrant.",
                               "I feel that a disaster (natural, criminal,
                               financial, or medical) could strike at any moment.",
                               "I can't seem to escape the feeling that something
                               bad is about to happen.",
                               "I worry that I'm developing a serious illness,
                               even though nothing serious has been diagnosed by
                               a physician.",
                               "I worry a lot about the bad things happening in
                               the world: crime, pollution, etc.",
                               "I take great precautions to avoid getting sick
                               or physically hurt.",
                               "I feel that the world is a dangerous place.",
                               "I worry about being attacked."),
  "Enmeshment" = c("I often feel as if my parent(s) are living through me --
                   I don't have a life of my own.",
                   "I often feel that I don’t have a separate identity from my
                   parents or partner.",
                   "I often feel that I have no privacy when it comes to my
                   parent(s) or partner.",
                   "I feel that my parent(s) are, or would be, very hurt about
                   my living on my own, away from them.",
                   "My parent(s) and I tend to be overinvolved in each other's
                   lives and problems.",
                   "It’s very difficult for me to maintain any distance from
                   the people I’m intimate with; I have trouble keeping any
                   separate sense of myself.",
                   "My parent(s) and I have to speak to each other almost every
                   day, or else one of us feels guilty, hurt, disappointed, or
                   alone.",
                   "It’s very difficult for my parent(s) and me to keep intimate
                   details from each other, without feeling betrayed or
                   guilty.",
                   "I haven’t been able to separate myself from my parent(s),
                   the way other people my age seem to."),
  "Entitlement" = c("People often tell me I’m very controlling about the ways
                    things are done.",
                    "I hate to be constrained or kept from doing what I want.",
                    "I'm special and shouldn't have to accept many of the
                    restrictions placed on other people.",
                    "I can't tolerate other people telling me what to do.",
                    "I often find that I’m so involved in my own priorities
                    that I don't have time to give to friends or family.",
                    "I feel that I shouldn't have to follow the normal rules and
                    conventions other people do.",
                    'I have a lot of trouble accepting "No" for an answer when I
                    want something from other people.',
                    "I feel that what I have to offer is of greater value than
                    the contributions of others."),
  "Insufficient Self-Control" = c("Often I allow myself to carry through on
                                  impulses and express emotions that get me into
                                  trouble or hurt other people.",
                                  "If I can't reach a goal, I become easily
                                frustrated and give up.",
                                  "When tasks become difficult, I usually can’t
                                persevere and complete them.",
                                  "I get bored very easily.",
                                  "I can't seem to discipline myself to complete
                                routine or boring tasks.",
                                  "I’ve rarely been able to stick to my
                                resolutions.",
                                  "I can't force myself to do things I don't enjoy,
                                even when I know it's for my own good.",
                                  "I have a very difficult time sacrificing
                                immediate gratification to achieve a long-range
                                goal.",
                                  "I often do things impulsively that I later
                                regret."),
  "Subjugation" = c("I feel that I have no choice but to give in to other
                    people’s wishes, or else they will retaliate or reject me in
                    some way.",
                    "I’ll go to much greater lengths than most people to avoid
                    confrontations.",
                    "In relationships, I let the other person have the upper hand.",
                    "I believe that if I do what I want, I'm only asking for
                    trouble.",
                    "I have a lot of trouble demanding that my rights be
                    respected and that my feelings be taken into account.",
                    "I worry a lot about pleasing other people, so they won't
                    reject me.",
                    "I've always let others make choices for me, so I really
                    don't know what I want for myself."),
  "Self-Sacrifice" = c("No matter how much I give, I feel it’s never enough.",
                       "I’m a good person because I think of others more than of
                      myself.",
                       "I give more to other people than I get back in return.",
                       "I'm so busy doing things for the people that I care about
                      that I have little time for myself.",
                       "I've always been the one who listens to everyone else's
                      problems.",
                       "Other people see me as doing too much for others and not
                      enough for myself.",
                       "No matter how busy I am, I can always find time for others.",
                       "I'm the one who usually ends up taking care of the people
                      I'm close to."),
  "Approval-Seeking" = c("I change myself depending on the people I’m with, so
                         they’ll like me more.",
                         "Accomplishments are most valuable to me if other
                         people notice them.",
                         "Even if I don’t like someone, I still want him or her
                         to like me.",
                         "Having money and knowing important people make me feel
                         worthwhile.",
                         "My self-esteem is based mostly on how other people
                         view me.",
                         "Lots of praise and compliments make me feel like a
                         worthwhile person.",
                         "If I make remarks at a meeting or am introduced at a
                         gathering, I look forward to recognition and admiration.",
                         "It’s important to me to be liked by almost everyone I
                         know.",
                         "Unless I get a lot of attention from others, I feel
                         less important."),
  "Unrelenting Standards" = c("I often sacrifice pleasure and happiness to meet
                              my own standards.",
                              "I must meet all my responsibilities.",
                              "I strive to keep almost everything in perfect
                              order.",
                              "I can't let myself off the hook easily or make
                              excuses for my mistakes.",
                              "I always have to be Number One, in terms of my
                              performance.",
                              "I have so much to accomplish that there’s almost
                              no time to really relax.",
                              "I feel there’s constant pressure for me to
                              achieve and get things done.",
                              "I try to do my best; I can't settle for 'good
                              enough.'",
                              "I must be the best at most of what I do; I
                              can't accept second best."),
  "Emotional Constriction" = c("I find it hard to be warm and spontaneous.",
                               "I don’t try to be ‘in touch’ with my emotions.",
                               "I control myself so much that people think I’m
                               unemotional.",
                               "I’m too self-conscious to show positive feelings
                               to others (e.g., affection, showing I care).",
                               "It’s not important for me to know what I’m feeling.",
                               "People see me as uptight emotionally.",
                               "I find it embarrassing to express my feelings to
                               others.",
                               "It's better to think than to feel."),
  "Fear of Losing Control" = c("When I let my emotions go, things get out of hand.",
                               "I feel that I must control my emotions and impulses,
                              or something bad is likely to happen.",
                               "A lot of anger and resentment build up inside of
                              me that I don't express.",
                               "If I let my emotions in, I’ll be overwhelmed by them.",
                               "When I get emotional, it never stops.",
                               "I worry about losing control of my actions.",
                               "I worry that I might seriously harm someone
                              physically or emotionally, if my anger gets out of
                              control."),
  "Negativity/Pessimism" = c("I feel better assuming that things won’t work out
                             for me, so that I don’t feel disappointed if things
                             go wrong.",
                             "I worry that a wrong decision could lead to disaster.",
                             "I tend to be pessimistic.",
                             "60.	If people get too enthusiastic about something,
                             I become uncomfortable and feel like warning them
                             of what could go wrong.",
                             "If something good happens, I worry that something
                             bad is likely to follow.",
                             "Even when things seem to be going well, I feel
                             that it’s only temporary.",
                             "No matter how hard I work, I worry that I could be
                             wiped out financially.",
                             "You can’t be too careful; something will almost
                             always go wrong.",
                             "I often obsess over minor decisions, because the
                             consequences of making a mistake seem so serious."),
  "Internal Punitiveness" = c("There’s no excuse if I make a mistake.",
                            "I’m a bad person who deserves to be punished.",
                            "I often have a sense of self-disgust.",
                            "If I make a mistake, I deserve to be punished.",
                            "If I don’t try my hardest, I should expect to lose
                            out.",
                            "It doesn’t matter why I make a mistake; when I do
                            something wrong, I should pay the price.",
                            "If I don’t do the job, I should suffer the
                            consequences.",
                            "When something goes wrong, it’s my fault.",
                            "I should be punished for my mistakes and imperfections."),
  "External Punitiveness" = c("Most of the time, I don’t accept the excuses
                             other people make. They’re just not willing to
                             accept responsibility and pay the consequences.",
                             "Others should be punished for their mistakes and imperfections.",
                             "People who don’t “pull their own weight” should get punished in some way.",
                             "I hold grudges, even after someone has apologized.",
                             "I get angry when people make excuses for themselves,
                             or blame other people for their problems.",
                             "When I have a conflict, it’s nearly always the
                             other person’s fault."),
  "Unfairness" = c("I hold the belief that the world is an unfair place.",
                   "I’m always treated unfairly.",
                   "I believe that justice is only given to the privileged. ",
                   "When something unfair happens to me I find it hard to accept.",
                   "I feel a strong urge to protest against any unfair treatment.",
                   "I get very angry when I witness injustice.",
                   "I believe that people are inherently selfish, favoring their
                   own interests.",
                   "I feel that I’m a victim of injustice.",
                   "Even the slightest injustice hurts me.",
                   "I feel strong resentment when I meet injustice.",
                   "There’s no justice in this world for me.",
                   "People have always been unfair to me.",
                   "I believe that humans aren’t capable of treating others fairly.",
                   "My life has been a never-ending experience of being treated
                   unjustly.",
                   "It frustrates me that others get everything they want.",
                   "I always had to work harder than others for what I received."),
  "Incoherent Identity" = c("I feel lost because I’m all over the place.",
                            "When I think about who I am, I feel chaotic.",
                            "I experience a lot of chaos when I think about myself.",
                            "I feel lost, as I can’t make sense of my feelings.",
                            "I feel disconnected from myself.",
                            "The things I do often don’t make sense to me.",
                            "I’m confused about my values.",
                            "I’m confused about what really matters to me.",
                            "I don’t know who I really am.",
                            "I often feel that I’m falling apart.",
                            "There’s a lot of chaos inside of me.",
                            "It’s as if I consist of different selves.",
                            "I don’t understand what I need."),
  "Incomprehensible World" = c("I feel disconnected from others. ",
                               "I feel estranged from how society functions.",
                               "I often feel that the world is falling apart. ",
                               "I’m an observer rather than a participant in the
                               world.",
                               "I don’t feel that I belong in this world. ",
                               "I feel disconnected from what’s taking place in
                               the world.",
                               "I’m disconnected from the events happening
                               around me.",
                               "I feel disconnected from the values that people
                               hold.",
                               "The world doesn’t make sense to me.",
                               "It’s hard for me to make sense of what’s
                               happening around me.",
                               "I don’t understand other people’s values.",
                               "It’s difficult for me to find my place in the
                               world.",
                               "I experience a loss of contact with reality.")
)

smi_items <- list(
  "Lonely Child" = c("Even when I have people around me, I feel lonely.",
                     "I feel sad.",
                     "I feel that nobody loves me.",
                     "There’s no one who really listens to me or understands me.",
                     "I’m not worthy of being loved. ",
                     "I feel alone in the world.",
                     "I don't belong anywhere; I’m a loner.",
                     "I feel excluded.",
                     "I feel humiliated.",
                     "I feel lonely.",
                     "I feel inadequate, deficient, or worthless."),
  "Abandoned & Abused Child" = c("I feel desperate.",
                                 "I feel weak and helpless.",
                                 "I’m afraid that people will leave me or die. ",
                                 "I feel worthless. ",
                                 "I feel hopeless. ",
                                 "I’m afraid of other people. ",
                                 "I’m ashamed.",
                                 "I’m afraid people will hurt, abuse, or punish
                                 me. ",
                                 "I feel lost.",
                                 "I’m afraid people will make fun of me or
                                 humiliate me.",
                                 "I need a lot of reassurance from other people. ",
                                 "I wish I had someone I felt connected to."),
  "Angry Child" = c("I’m angry because I haven’t been given what I need.",
                    "Whoever isn’t with me is against me. ",
                    "I’m angry with someone because I have been hurt.",
                    "I’m outraged. ",
                    "I have a lot of bottled-up anger that needs to get out. ",
                    "I’m furious with one or more people. ",
                    "I would like to scold people for the way they treated me. ",
                    "I feel overwhelmed by anger.",
                    "I feel like hurting someone for what they have done to me. "),
  "Enraged Child" = c("I have difficulty controlling myself. ",
                      "I can become so angry that I feel capable of killing someone.",
                      "I lash out at others by saying furious things. ",
                      "I throw things around when I’m angry.",
                      "I destroy things when I’m angry.",
                      "When I’m angry, things can get so out of hand that people
                      get physically hurt.",
                      "I lose control and threaten other people when I’m angry.",
                      "I have temper tantrums and outbursts of rage.",
                      "I physically attack people when I’m angry at them.",
                      "Once I start feeling angry, I can't control it and I lose
                      my temper. ",
                      "I’ve been so angry that I’ve (seriously) physically hurt
                      someone. "),
  "Impulsive Child" = c("I regret things I did without thinking.",
                        "I don't think about what I'm saying and thus get into
                        trouble or hurt others.",
                        "I act first and think later.",
                        "I express my emotions impulsively, which hurts other
                        people. ",
                        "I can’t resist strong urges.",
                        "I say what I feel or do things impulsively, without
                        thinking of the consequences.",
                        "I blindly follow my urges. ",
                        "I have trouble controlling my impulses.",
                        "It’s impossible for me to control my impulses.",
                        "I act impulsively, which gets me into trouble."),
  "Undisciplined Child" = c("Things should go smoothly, otherwise I give up.",
                            "I have difficulty tolerating frustration. ",
                            "If I can't achieve a goal, I get frustrated quickly,
                            and give up. ",
                            "I don’t discipline myself to complete routine or
                            boring tasks.",
                            "I easily give up when things get difficult.",
                            "I can't bring myself to do things that I dislike,
                            even though I know it’s for my own good. ",
                            "I get bored easily and lose interest in things.",
                            "I don’t want to tolerate negative emotions."),
  "Dependent Child" = c("If I rely on my own judgement, I will make the wrong
                        decision.",
                        "My judgement in everyday situations isn’t reliable. ",
                        "I have no confidence in my ability to solve everyday
                        problems. ",
                        "I believe that others can take better care of me than I
                        can.",
                        "I feel more like a child than an adult when it comes to
                        dealing with everyday responsibilities. ",
                        "I feel unable to manage on my own in everyday life. ",
                        "I need someone to whom I can turn for advice on
                        practical matters. ",
                        "Everyday responsibilities are far too heavy for me. ",
                        "I consider myself a dependent person in daily life. ",
                        "I lack common sense."),
  "Compliant Surrender" = c("I keep my mouth shut, even if I don't agree. ",
                            "I act in a passive way, even when I don’t like the
                            way things are.",
                            "I give more to others than I receive. ",
                            "It’s best to accept everything from people who are
                            important to me. ",
                            "I adapt myself to other people, to make them
                            approve of me. ",
                            "I submit to other people. ",
                            "I try very hard to please others, to avoid conflict,
                            confrontation or rejection.",
                            "I change depending on who I’m with, so they will
                            like me or approve of me. ",
                            "I let other people get their way instead of
                            expressing my needs. ",
                            "I can put up with anything from people who are
                            important to me."),
  "Detached Protector" = c("I feel indifferent.",
                           "I don’t want to feel anything. ",
                           "It’s best not to become intimate with or attached to
                           others. ",
                           "I feel bored. ",
                           "I don’t want to get involved with others. ",
                           "I don’t feel connected to others. ",
                           "I feel flat. ",
                           "I feel nothing.",
                           "I feel detached (no contact with myself, my emotions,
                           or other people).",
                           "I don’t care about anything; nothing matters to me.",
                           "I feel empty. ",
                           "I feel distant from other people. ",
                           "I feel numb."),
  "Detached Self-soother" = c("I escape into fantasies and daydreams.",
                              "I crawl into bed to escape all the misery.",
                              "I distract myself from upsetting thoughts and
                              feelings.",
                              "I work or play sports intensely, so I don’t have
                              to think about upsetting things.",
                              "I sleep a lot to forget everything. ",
                              "I make sure that I’m busy, to be less bothered by
                              unpleasant thoughts or feelings.",
                              "I watch a lot of television, surf the Internet,
                              chat, play computer games etc., to soothe my
                              unpleasant feelings. ",
                              "I like doing something exciting or comforting to
                              relieve my unpleasant feelings (e.g., work, eating,
                              sexual activities, going out, gambling or shopping)."),
  "Avoidant Protector" = c("It’s better to stay unnoticed, or others will
                           discover my true self. ",
                           "I avoid problems as much as possible. ",
                           "I associate with others as little as possible. ",
                           "I stay away from conflicts. ",
                           "I don’t say things that draw attention.",
                           "I don’t get into situations where I have to deal
                           with people. ",
                           "I don’t stand up for myself. ",
                           "I try to stand out as little as possible when I’m
                           with other people. ",
                           "I avoid difficult decisions. ",
                           "I avoid difficult situations as much as I can. "),
  "Self-Aggrandizer" = c("I can’t settle for second best. ",
                         "I must do what I want to do, regardless of other
                         people’s needs and feelings. ",
                         "I have to be special and better than other people. ",
                         "I must buy things, so others see that I’m successful
                         (e.g., expensive cars, trendy clothes, a nice house).",
                         "I need to manipulate people to achieve my goals. ",
                         "I must make others admire me.",
                         "I need to be the best of all.",
                         "I have to denigrate other people. ",
                         "Others should feel that I look down on them. ",
                         "I must do everything I can to acquire power and status. ",
                         "It’s essential for me to be Number One (e.g., the most
                         popular, most successful, most wealthy, most powerful). ",
                         "If you aren’t superior, you are inferior. ",
                         "I decide I don’t have to follow the same rules as
                         other people. ",
                         "Other people should just do what I tell them. "),
  "Perfectionistic Over-Controller" = c("I spend a lot of time checking, to make
                                        sure nothing goes wrong.",
                                        "I don’t like surprises.  ",
                                        "In case of uncertainty, I must check. ",
                                        "I need to be in control, otherwise it
                                        becomes a mess.",
                                        "I’m very controlling towards other
                                        people. ",
                                        "I try hard to get control over things. ",
                                        "I try to do everything as well as
                                        possible, to prevent criticism. ",
                                        "I prevent mistakes by checking
                                        everything.",
                                        "I can prevent errors by controlling
                                        everything. ",
                                        "I try hard to order my life (e.g.,
                                        organizing, planning, having structure
                                        and routine)."),
  "Suspicious Over-Controller" = c("If people get too close to me or intrude into
                                   my life, I keep them at a distance.",
                                   "I stay one step ahead to prevent others from
                                   hurting or taking advantage of me. ",
                                   "If others are nice to me, they have hidden
                                   motives. ",
                                   "I don’t share information that others might
                                   use against me. ",
                                   "You should be wary of other people. ",
                                   "I need to figure out what other people’s
                                   true intentions are. ",
                                   "Other people have hidden agendas. ",
                                   "I highly value my privacy and don’t tell
                                   people about myself. ",
                                   "I prevent others from taking advantage of me
                                   by being on my guard. "),
  "Attention- & Approval-Seeker" = c("I like to flirt because it makes me feel
                                      good.",
                                      "I do things to be the center of attention. ",
                                      "I’m addicted to attention and approval. ",
                                      "I make sure that I stand out through my
                                      clothes and appearance. ",
                                      "I force others to say that they approve
                                      of what I say or do. ",
                                      "I draw attention to myself when in a group
                                      of people.",
                                      "I seduce people with my charm.",
                                      "I use my sexy appearance in contacts with
                                      other people. "),
  "Punitive Critic/Punitive Parent" = c("I think about my mistakes, and am angry
                                        with myself. ",
                                        "I’m angry with myself because I need too
                                        much from others. ",
                                        "I’m angry with myself for being weak. ",
                                        "I have an urge to punish myself by
                                        physically hurting myself (e.g., cutting
                                        myself). ",
                                        "I deny myself pleasure because I don’t
                                        deserve it. ",
                                        "When something bad happens to me, I
                                        don’t deserve sympathy. ",
                                        "I can’t forgive myself. ",
                                        "I don’t allow myself pleasurable things
                                        or activities because I’m bad. ",
                                        "I hate or loathe myself. ",
                                        "I deserve to be punished.",
                                        "I’m angry at myself.",
                                        "If something bad happens, it’s my fault. ",
                                        "My needs or feelings are wrong. "),
  "Demanding Critic/Demanding Parent" = c("I force myself to be more responsible
                                          than most people.",
                                          "I won’t give myself a chance to relax
                                          or have fun until I have finished
                                          everything.",
                                          "I sacrifice pleasure, health, or
                                          happiness to meet my own standards.",
                                          "I try to do my best in everything I do. ",
                                          "I shouldn’t make mistakes. ",
                                          "I’m hard on myself. ",
                                          "I’m under constant pressure to achieve
                                          and get things done. ",
                                          "There are ‘right’ and ‘wrong’ ways to
                                          do things; I must do things right, no
                                          matter what. ",
                                          "My relationships suffer because I
                                          demand so much of myself. ",
                                          "My life revolves around getting
                                          things done and doing them right.",
                                          "I must take care of the people around
                                          me."),
  "Bully & Attack" = c("I mock or bully other people.",
                       "I lash out to other people, so nothing can happen to me.",
                       "I scare people off, so they won’t humiliate me.",
                       "I intimidate people to get respect.",
                       "I belittle others.",
                       "I mock or bully other people, so that they know I’m not
                       a loser.",
                       "I denigrate other people, so they know their place.",
                       "Attacking is the best defence.",
                       "I make myself invulnerable by bullying other people."),
  "Happy Child" = c("I feel that I fit in with other people.",
                    "I feel spontaneous and playful.",
                    "I feel listened to, understood, and validated.",
                    "I trust most other people. ",
                    "I feel content and at ease. ",
                    "I feel that I have plenty of stability and security in my
                    life.",
                    "I feel safe. ",
                    "I feel loved and accepted.",
                    "I feel connected to other people. ",
                    "I feel optimistic. "),
  "Healthy Adult" = c("When necessary, I complete boring and routine tasks in
                      order to accomplish things I value.",
                      "I can learn, grow, and change.",
                      "I have healthy relationships with friends and other
                      people I know.",
                      "I know when to express my emotions and when not to.",
                      "I like and accept myself as I am.",
                      "When there are problems, I try hard to solve them myself.",
                      "I have a good sense of who I am and what I need to make
                      myself happy.",
                      "I can stand up for myself when I feel unfairly criticized,
                      abused, or taken advantage of.",
                      "I allow myself to enjoy life and do good things for myself. ",
                      "I’m capable of taking care of myself.",
                      "I assert my needs without exaggerating.",
                      "If I make mistakes, I can forgive myself.",
                      "I can solve problems rationally without letting my
                      emotions overwhelm me.",
                      "I feel that I’m basically a good person."),
  "Non-autonomous Child"  = c("I try to stay close to people I trust just in case
                              something bad happens. ",
                              "It’s very hard for me to separate from important
                              people in my life and do my own thing.",
                              "I feel extremely guilty when going my own way and
                              taking my own decisions independently of what
                              people significant to me think.",
                              "I don’t do things by myself because I think I
                              can’t do them. ",
                              "I won’t be able to cope when bad things happen. ",
                              "I become very anxious when I think of all the
                              zdangers that may happen in the future.",
                              "I feel really anxious when I have to make
                              decisions on my own. ",
                              "I can’t see myself as a unique and separate person.",
                              "When I’m in competitive situations, I feel
                              anxious because I think that others will do better.",
                              "I think something very bad can happen to me at
                              any moment. ",
                              "There are many things in my life that I can’t
                              cope with unless other people help me.",
                              "I think I’m not as competent as other people at
                              work or at school. ",
                              "I’m afraid that at any moment something could go
                              wrong with my health. ",
                              "I feel anxious in my studies, work, or other
                              activities because I don’t feel capable. "),
  "Subordinate Child"  = c("I have to take care of other people otherwise things
                           will go wrong.",
                           "I’m afraid of the consequences of expressing my
                           feelings and/or opinions. ",
                           "I experience paralyzing fear because of what others
                           may think of my choices. ",
                           "I feel unconfident when I don’t get approval from
                           others. ",
                           "I feel guilty if I don’t take care of other people. ",
                           "I don’t express my desires, feelings, and opinions
                           because I’m afraid of offending others.",
                           "I feel insecure when I don’t get the attention of
                           others.",
                           "For me other people’s wellbeing is more important
                           than my own. ",
                           "I do everything I can to make sure others don’t
                           collapse.   ",
                           "If I don’t do what other people expect me to do, I’m
                           scared of negative consequences.",
                           "I believe my decisions must satisfy others, otherwise
                           I will be in bad trouble. ",
                           "I do everything for others and forget about myself.",
                           "I easily feel uncertain with minor criticism,
                           disapproval, or lack of attention. "),
  "Constrained Child"  = c("I’m disappointed in myself because I don’t achieve
                           what I should achieve.",
                           "I suffer that everything about me is bad.",
                           "I don’t enjoy doing something just for fun and
                           pleasure. ",
                           "I feel defeated because of everything I did wrong.",
                           "I feel intensely guilty for everything going wrong.",
                           "I'm a failure because I'm not performing well enough. ",
                           "I strive to behave properly no matter what the
                           situation is.",
                           "When things go well, I fear that they are too good
                           to be true.",
                           "Even when I’m successful, I feel I could have done
                           better.",
                           "I try to avoid mistakes at all costs.",
                           "I feel uncomfortable letting people know what I feel.",
                           "I’m a pessimistic person.",
                           "I have to be prepared for the worst in every situation.",
                           "I try hard to keep my emotions under control.",
                           "I expect things to go wrong.",
                           "I’m afraid of losing control over my emotions.",
                           "I feel dejected because I’m a bad person who did
                           everything wrong. ",
                           "I fear that my emotions may become overwhelming.",
                           "Working hard is very important for me."),
  "Over-Humble"  = c("I mention my weaknesses even when I don't have to. ",
                     "Talking about my accomplishments or nice things I do is
                     showing off.",
                     "I hate situations in which I’m appreciated and noticed by
                     others. ",
                     "Even if it’s true that I did achieve some important things,
                     I feel that it was nothing special. ",
                     "When people praise me, I try to stop them.",
                     "When people compliment me, I say something that devalues
                     what they said.",
                     "I feel very uncomfortable when others praise my talents
                     and/or accomplishments. ",
                     "I feel it’s inappropriate to be proud of myself. ",
                     "I avoid situations where people say good things about me."),
  "Spoiled Child"  = c("I expect attention and care whenever I need it. ",
                       "Whatever I want it’s my right to get it immediately. ",
                       "I don’t like setting goals to achieve longer-term plans. ",
                       "I’m allowed to do anything I like. ",
                       "I shouldn’t have to do routine boring things. ",
                       "I deserve everything I want. ",
                       "I don’t feel happy with what I have, I need to get new
                       things. ",
                       "I easily get frustrated when I don’t get what I want.",
                       "I don’t care about others’ needs.   ",
                       "I have a hard time hearing no from others. ",
                       "It irritates me when I have to wait before I get what I
                       want. ",
                       "For me it’s not necessary to finish what I started. ",
                       "I get angry when other people don’t do what I want. ",
                       "I don’t need to meet deadlines. ",
                       "If I’m told I can have something, then I should get it
                       immediately. ",
                       "If something is important to me, I don’t care about what
                       others feel about it. "),
  "Grandiose Child"  = c("I find it hard to praise someone when they do well in
                         something.",
                         "What I accomplish is much better than what others
                         accomplish.",
                         "My place is to be at the top.",
                         "If something goes wrong, it’s someone else’s fault.",
                         "People admire me.",
                         "It goes without saying that I should be the center of
                         attention.",
                         "My insights are way better than those of others.",
                         "I don’t have to prove I’m better than others - I know
                         it to be true.",
                         "I know better than others.",
                         "I feel more special than others. ",
                         "I know many important people - that makes me special.",
                         "I think I’m better than most. "),
  "Slacker/Oblomov"  = c("I don’t like to push myself. ",
                         "It’s better not to try than to fail after trying.  ",
                         "I feel that the return from working hard isn’t worth
                         the effort put in. ",
                         "Near enough is good enough. ",
                         "I prefer to relax than get things done. ",
                         "I feel unmotivated to go forward. ",
                         "I don’t have to achieve anything. ",
                         "I’m very content not having much to do. ",
                         "I prefer minimum effort to working hard and doing well. ",
                         "Hard work is highly overrated - I like to do as little
                         as possible.",
                         "If something isn’t my responsibility, I’m not going to
                         bother. "),
  "Winner"  = c("If I don’t win, it’s due to bad luck or an unfair system. ",
                "When someone tries to criticize me, they’re wrong. ",
                "I turn everything into a competition to prove myself. ",
                "If I lose, I challenge others to play the same game/activity
                again. ",
                "I’m addicted to winning. ",
                "Winning constantly helps others think well of me. ",
                "I win at almost everything I compete in. ",
                "I disagree when someone tries to tell me I’ve failed. ",
                "I love competition.",
                "I need to win at all costs. ",
                "If I lose, I change the rules so that it would advantage me and
                increase my chance to win the next round."),
  "Reassurance Seeker" = c("If I’m uncertain, I press other people into
                           reassuring me.",
                           "I deal with frightening feelings by seeking
                           reassurance from others. ",
                           "I seek reassurance from others that they care for me.",
                           "If I feel that something is wrong in my body, I need
                           to get advice from others. ",
                           "It’s important to me that others approve of me. ",
                           "I’m not able to be at peace until I get adequate
                           reassurance from someone who’s important to me. ",
                           "If I feel sick, I need reassurance that I’m OK. ",
                           "What I think about myself isn’t as important as what
                           others think about me. ",
                           "I get extremely affected by what others think of me. ",
                           "Other people get irritated with me for seeking
                           constant reassurance. "),
  "Funny Protector" = c("When things become uncomfortable, sad, or distressing,
                        I laugh to avoid these negative feelings.",
                        "In difficult situations, I joke about my misfortunes to
                        divert myself from unpleasant feelings.",
                        "Bad things happen in life, but it’s better to make fun
                        about it than to pay attention to it.",
                        "When I’m around others and painful topics arise, I try
                        to make light of the situation or joke about it, so I
                        can distract from any difficult feelings I’m experiencing.",
                        "I laugh at the bad sides of life to avoid thinking about
                        it.",
                        "When I'm feeling bad, laughing helps me to escape from
                        it. ",
                        "When I experience negative feelings, I make jokes to
                        reduce them.",
                        "Rather than expressing my feelings I make jokes or
                        highlight ‘the funny side’."),
  "Clown" = c("I find myself laughing at things that are actually ‘painful’.",
              "I find myself making a joke when people ask about my feelings.",
              "By taking the role of a comedian I can deal with any difficult
              situation.",
              "I behave like a comedian to completely change perspectives of
              painful issues.",
              "If something difficult or awkward pops up I immediately deal with
              it by switching into a comedian. ",
              "I don’t suffer from any difficult emotions, rather I make fun of
              them. ",
              "I behave like a clown, so I don’t feel any problem. ",
              "At the moment a situation might become painful for me, I
              immediately ridicule it.",
              "I can’t be hurt because I only see the funny and absurd aspects
              of everything.",
              "I behave like a clown even when the situation is painful.",
              "By making fun I’m able to be invulnerable for any inner pain.",
              "As soon as I start to feel something painful, I make fun of the
              situation so that I don’t feel it anymore. "),
  "Pollyanna/Over-Optimist" = c("One should stay optimistic no matter what.",
                  "I find the silver lining in every situation.",
                  "I only look at the bright side of life.",
                  "I’m extremely happy and upbeat. ",
                  "It’s useless to look at the negative, every situation is
                  hopeful.",
                  "I solve difficult issues through focusing on the positive.",
                  "I come across as gushing in my attempts to keep things positive.",
                  "There’s no place for negative feelings in my life, only for
                  positive ones. ",
                  "Optimism is a duty.",
                  "Everything happens for a good reason; everything will turn
                  out great.",
                  "When others find that things get tough, I remain cheerful and
                  highly optimistic."),
  "Pretender" = c("I fully understand the world.  ",
                  "I don’t experience the slightest doubt. ",
                  "I fully comprehend who I am. ",
                  "I’m quickly able to make sense of things in the world.",
                  "I’m an entirely complete, integrated person. ",
                  "I’m completely sure of my case.",
                  "I understand exactly how the world works.",
                  "I have everything completely in order. ",
                  "The fact that I see through everything makes me super relaxed. ",
                  "Everything in the world makes perfect sense to me.",
                  "Everything that happens in life, I fully comprehend. ",
                  "I understand myself completely. ",
                  "I completely understand how other people are. ",
                  "I can handle the problems I encounter perfectly. ",
                  "I have a complete understanding of who I am and what I want
                  from life. ",
                  "I don’t experience conflicting feelings about anything. ",
                  "Whatever happens, I can grasp and deal with it. ",
                  "My life goals are completely clear to me. ",
                  "I know exactly what I want in my life. ",
                  "What others say doesn’t upset me. ",
                  "I’m quickly able to make perfect sense of things happening
                  around me. "),
  "Rebellious Child" = c("In protest I do things that are forbidden.  ",
                         "I do the opposite of what’s expected of me to show my
                         anger.  ",
                         "I refuse to follow rules out of protest. ",
                         "I rise up against people who don’t acknowledge my needs.",
                         "I do things that are forbidden as a protest.  ",
                         "People don't care about me, so I don't behave myself.",
                         "When I feel I’m not taken seriously, I rebel against
                         others. ",
                         "People don't care about me, so I don't treat them with
                         respect.",
                         "I oppose authorities, such as bosses, teachers, etc.",
                         "I do things I’m not supposed to do to prove I’m my own
                         boss.  ",
                         "When I feel overlooked, I act rebelliously. ",
                         "Others say I’m difficult because I’m a rebel.",
                         "I intentionally perform poorly when people ask too much
                         of me. ",
                         "I rebel against rules by not obeying them. "),
  "Sulking Child" = c("I get grouchy when others criticize me.",
                      "I get cranky when I don’t get the approval I need. ",
                      "I get cross when things don’t go my way. ",
                      "When I’m not allowed to do what I want, I angrily withdraw.",
                      "When I’m not allowed to express my opinions, I get grumpy.",
                      "I show my irritation to other people by not talking to them.",
                      "I get in a mood when people don’t respect my independence. ",
                      "I get moody when others don’t allow me to do things my way. ",
                      "When others accuse or punish me, I get moody.",
                      "When people demand too much from me, I get grumpy. ",
                      "I get grumpy when my needs are ignored. ",
                      "When I feel constrained, I sulk. ",
                      "When people are unfair to me, I protest by ignoring them.",
                      "I angrily withdraw when I don’t receive the attention I
                      need."),
  "Angry Protector" = c("When others get close, I use sarcasm that might hurt
                        their feelings.",
                        "When I feel vulnerable, I chase people away.",
                        "My hostile gaze and body language keep people at a safe
                        distance.",
                        "I intentionally use anger to give people the message
                        “stay away from me”.",
                        "I create a ‘wall of anger’ that keeps people at a distance. ",
                        "People know to back off just by how I look at them.",
                        "When a conversation might make me emotional, I push
                        people away.",
                        "Emotional closeness is painful for me, so I push people
                        away.",
                        "When things get too personal, I become negative and
                        cynical.",
                        "When people become emotionally close to me, I warn them
                        to stay away.",
                        "I keep people at a safe distance through controlled
                        displays of anger.",
                        "My hostility towards others keeps me safe."),
  "Conning & Manipulating" = c("I manipulate people to achieve my ends.",
                                "I make up stories about myself to con other
                                people. ",
                                "I blackmail people to prevent being abandoned.",
                                "I use my charm to manipulate. ",
                                "I get people to trust me so I can take advantage
                                of them.",
                                "I only do things to get a favor in return.",
                                "If people are stupid enough to be conned by me,
                                it’s their own fault.",
                                "I pretend to like people to get them to do
                                things for me.",
                                "I use people’s weak points to my advantage.",
                                "I use people’s secrets against them to get what
                                I want.",
                                "People only have themselves to blame if I take
                                advantage of them.",
                                "I tell lies to escape from punishment.",
                                "I’m good at manipulating people to get what I
                                want. ",
                                "I con and manipulate people to stop them leaving
                                me.",
                                "The world is unfair, so I am too.  ",
                                "I get things done by taking on a false identity."),
  "Predator" = c("I feel like killing a rival without feeling any remorse.",
                 "I make plans to get rid of people who get in my way.",
                 "I ruthlessly get rid of my enemies.",
                 "I hurt others to make a point. ",
                 "I wait for the right time to take revenge.",
                 "When people threaten me, I eliminate them.",
                 "I don’t mind hurting others badly to reach my goals. ",
                 "People who oppose me pay a heavy price.",
                 "I don’t feel sorry for others when I hurt them, nor for their
                 loved ones.",
                 "I need to hurt others, which is their own fault. ",
                 "I don’t mind hurting someone to get what I want.",
                 "I coldly manipulate others to dominate and control them.",
                 "I don’t feel bad hurting someone when they stand in my way. "),
  "Disregarded Child" = c("I feel insignificant.",
                          "Even when I have people around me, I feel lonely.",
                          "I feel nobody is paying attention to me.",
                          "Nobody cares what happens to me.",
                          "I’m ashamed of who I am.",
                          "I feel alone in the world.",
                          "I feel ignored. ",
                          "I feel that nobody cares about me because of who I am.",
                          "I’m not worthy of being loved.",
                          "I’m afraid that people I care about will leave me or
                          die.",
                          "I feel like I don’t fit in any group.",
                          "I feel inadequate as a person.",
                          "I don’t feel understood by anybody."),
  "Victimized Child" = c("No matter what I do, I won’t get rewarded.",
                         "The world is unfair to those like me.",
                         "I feel that life is basically unfair for those like me.",
                         "When something goes wrong, I get blamed.",
                         "I receive bad treatment that I don’t deserve.",
                         "People who do bad things don’t get punished.",
                         "I feel those who have authority over me are basically
                         unfair.",
                         "I deeply know that I won’t be treated fairly. ",
                         "Things that happen to me that look like bad luck are
                         in fact intentional.",
                         "I feel like a victim of society.",
                         "I feel that I get treated worse than others.",
                         "Other people can’t even imagine how badly I’ve been
                         treated in my life.",
                         "I feel that I will end up being abused or punished no
                         matter what I do."),
  "Confused Child" = c("I don’t understand who I really am.",
                       "I experience my thoughts and feelings as chaotic.",
                       "I’m confused about my feelings.",
                       "I don’t know who I am.",
                       "Feelings and behaviors of other people don’t make sense
                       to me.",
                       "I don’t understand why I react so strongly to certain
                       things.",
                       "I feel that life is confusing to me.",
                       "I don’t recognize myself.",
                       "Things seem to happen for no reason.",
                       "My sense of who I am is unstable.",
                       "I think that life is chaotic to me.",
                       "I can’t make sense of what happens in the world around me. ",
                       "Things that happen to me don’t make sense."),
  "Punitive Lecturer" = c("I confront other people with their shortcomings.",
                          "I reprimand other people for their mistakes.",
                          "I believe that punishment is the best way to correct
                          other people.",
                          "When other people behave badly, I teach them a lesson. ",
                          "I lecture other people when they behave inappropriately.",
                          "When people cross a line, I harshly let them know
                          about it. ",
                          "Other people should pay for their faults.",
                          "When I see other people’s failings, I lecture them.",
                          "When people make mistakes, I want to teach them a
                          lesson.",
                          "I’m convinced that people who misbehave should be
                          punished.",
                          "I punish others for their flaws.",
                          "I tell other people they are bad when they behaved
                          immorally."),
  "Overly Self-Permissive" = c("It’s better to forgive myself than to consider
                               that what I did might have been wrong. ",
                               "No matter how wrong my actions were, I feel only
                               kindness and forgiveness for myself. ",
                               "What I did wrong was no big deal.",
                               "I shouldn’t blame myself for anything.",
                               "If people blame me for something, they don’t
                               understand the context.",
                               "I accept all my behaviors completely, including
                               those that are considered unethical.",
                               "I don’t allow myself to have any feelings of
                               guilt, only acceptance of what I did.",
                               "There’s no reason to dwell on how I might have
                               hurt other people’s feelings.",
                               "It makes no sense to feel guilty about what I did.",
                               "I easily forgive myself.",
                               "I don’t blame myself in the slightest, no matter
                               what I did.",
                               "When people tell me I’ve done wrong they don’t
                               understand the whole story. ",
                               "I don’t feel ashamed of myself, even when other
                               people feel hurt by my doings."),
  "Emotional Daredevil" = c("I long for extreme emotions.",
                            "I experience all my emotions to the max.",
                            "I have the urge to experience extreme emotions. ",
                            "I like having extreme emotions.",
                            "No matter how strong the emotion, I love it.",
                            "It’s exciting to let my emotions go.",
                            "I believe the more emotions the better.",
                            "I crave intense emotions.",
                            "I strive for intense feelings.",
                            "I prefer to be in intense emotional situations. ",
                            "I enjoy experiencing powerful emotions."),
  "Emotional Excessiveness" = c("I’m proud how intensely I express my emotions.",
                                "No matter how strong the emotion is, I blatantly
                                let it out.",
                                "I feel no shame in expressing my intense emotions. ",
                                "Regardless of the situation, I have no problems
                                with sharing my emotions.",
                                "It’s good to freely express my feelings.",
                                "I vent my emotions without restriction.",
                                "No matter the situation, it’s appropriate to
                                show my feelings.",
                                "I don’t need to withhold my emotional expressions.",
                                "I don’t care about how other people feel about
                                me expressing my emotions.",
                                "I don’t find it embarrassing to express all my
                                emotions. "),
  "Daredevil/Over-Risk-Taking" = c("Other people tell me that I do daring things.",
                  "I feel confident when I push myself to my limits. ",
                  "It’s important to me to face the risks in life daringly. ",
                  "I feel invincible in the face of adversity. ",
                  "I behave as if disasters can’t strike me.",
                  "Successfully managing dangerous situations makes me feel strong.",
                  "For me, it’s a weakness to experience vulnerability and fear. ",
                  "I’m not at all afraid of taking risks. ",
                  "Facing danger makes me feel strong. ",
                  "I’m certain I can handle any dangerous situation. ",
                  "I do dangerous things just to prove that nothing bad can
                  happen to me. ",
                  "I don’t hesitate to take on dangers. ",
                  "I enjoy taking risks. ",
                  "I think playing it safe is a waste of time. ",
                  "People tell me that I challenge fate. "),
  "Hyper-Autonomous" = c("It’s a bad idea to rely on other people for emotional
                         support. ",
                         "I hate it when people tell me what to do.",
                         "The only person I can rely on is myself.",
                         "I don’t need help or advice when it comes to dealing
                         with my problems.",
                         "Relying on other people frustrates me. ",
                         "I see it as a weakness to depend on other people. ",
                         "Others or society shouldn’t dictate what I should do.",
                         "I don’t like it when people assume I need help.",
                         "I work best on my own.",
                         "I don’t enjoy sharing my problems with others e.g.
                         family, partners.",
                         "It’s important to be independent.",
                         "I see others as getting in my way even when they try
                         to help.",
                         "I can’t understand how some people allow themselves to
                         be influenced by others.",
                         "When I take decisions that make others angry it doesn’t
                         bother me.",
                         "I carve my own path in life no matter what significant
                         others say."),
  "Over-Merciful" = c("I’m forgiving and kind to others, even those who mistreat
                      me. ",
                      "Regardless of the situation, I remain a warm and caring
                      person.",
                      "I instantly forgive everyone because all humans make
                      mistakes.",
                      "To me it’s natural to forgive others.",
                      "I only feel kindness towards others.",
                      "I immediately forgive others when I’m harmed through their
                      actions.",
                      "I’m forgiving and kind to others no matter their mistakes.",
                      "It’s important to me to be kind even to those who hurt me
                      or make me suffer.",
                      "I’m patient with other people, no matter how irritating
                      they are.",
                      "I excuse people for the bad things they have done.",
                      "I put a lot of effort into being kind to others even if
                      they are unfriendly.",
                      "I’m merciful to others no matter what they do."),
  "Idealizer" = c("Even though people might say I’m naïve, I trust others entirely.",
                  "I fully believe in a righteous world.",
                  "I don’t see flaws in the people I care about.",
                  "I easily feel safely connected to others.",
                  "Everything happens for an ultimately good and fair reason.",
                  "If my partner treats me badly, I assume it’s a onetime thing.",
                  "People I care about won’t let me down.",
                  "I trust that all people around me are honest and fair.",
                  "People tell me that I see other people and the world through
                  rose-colored glasses.",
                  "I have an ideal relationship with my best friend/partner.",
                  "The world is a fair and safe place.",
                  "I have complete trust in the people I care about; I know they
                  won’t intentionally hurt me.",
                  "My best friend/partner does only the good.",
                  "I trust people unconditionally, which feels good. ")
)

sci_items <- list(
  "Resignation" = c("It’s hard to let go of certain beliefs even if I can see
                    they might not be helpful. ",
                    "I have thoughts about myself that easily overwhelm me. ",
                    "I have certain personal beliefs that feel completely true,
                    even though I somehow know that they may not be. ",
                    "I’m easily dominated by my feelings.  ",
                    "When certain thoughts surface, I find it difficult to see
                    things in a different way. ",
                    "I let myself get carried away by certain beliefs I have
                    about myself. ",
                    "I have beliefs about others that have a strong grip on me.",
                    "I have beliefs that stick with me, although it would be
                    better to let them go. ",
                    "I’m unable to ignore certain thoughts about myself, even
                    when I know they might be incorrect.  ",
                    "Some feelings tend to overwhelm me when they arise.  ",
                    "I can get swept away by my ideas about others.   ",
                    "When something upsets me, I have a hard time shaking off
                    these feelings.  ",
                    "I have strong feelings I give into and allow to take over."),
  "Avoidance" = c("I switch off my feelings as much as possible. ",
                  "I keep negative ideas out of my mind. ",
                  "I prefer to avoid facing my own emotional problems. ",
                  "I shut off uncomfortable feelings. ",
                  "I don’t reflect on difficult personal issues. ",
                  "I’d rather feel nothing than experience disturbing emotions.",
                  "I avoid thinking about upsetting ideas.",
                  "I mentally detach from unwanted thoughts and feelings.",
                  "I deal with difficult personal feelings by avoiding thinking
                  about them.",
                  "I avoid thinking about unwanted ideas. ",
                  "I postpone thinking about emotional issues."),
  "Inversion" = c("When I start to experience undesirable thoughts and feelings,
                  I turn them into desirable ones. ",
                  "As soon as I start to feel an unwanted emotion, I almost
                  immediately start feeling the opposite. ",
                  "When a belief I dislike arises, I convince myself that the
                  contrary is true. ",
                  "When I have unwanted thoughts about myself, I change them to
                  the contrary. ",
                  "If I have negative personal beliefs and feelings, I switch
                  them into something more positive. ",
                  "I notice that when I get a strong negative feeling, it almost
                  immediately turns into a more positive feeling. ",
                  "I have the urge to hide any negative personal characteristic
                  I may have and show the opposite is true.",
                  "I can convince myself of the positive, no matter what negative
                  ideas and feelings arise.  ",
                  "I tend to deal with certain thoughts and feelings about myself
                  and others by convincing myself of the opposite.  ",
                  "I manage unwanted thoughts by believing the opposite.  ",
                  "As soon as a negative aspect of myself might be revealed, I
                  feel the urge to prove the opposite is true.  ",
                  "When I start to have a strong negative feeling, I can turn it
                  into a more positive feeling. ")
)

schemas_descriptions <- list(
  "Emotional Deprivation" = paste("You expect that others will not or
  insufficiently meet your basic emotional needs, such as care, empathy,
  affection, protection,
 guidance and care."),

  "Abandonment" = "You expect to soon lose everyone with whom you have
  an emotional connection. You believe that eventually all intimate relationships
  will end. You perceive significant others as unreliable and unpredictable in
  their support and commitment. ",

  "Mistrust/Abuse" = "You expect that others will eventually take advantage of
  you in some way and that others will intentionally hurt, cheat, or put you
  down.",

  "Social Isolation" = "You believe that you are isolated from the rest of the
  world, that you are fundamentally different from other people and that you don't
  belong anywhere.",

  "Defectiveness/Shame" = "You believe that you are internally imperfect. As
  soon as others get to know you better, this will be noticed, and the
  relationship will be broken. You often have a strong sense of shame.",

  "Failure" = "You feel that you are not able to perform at the level of your peers
  in areas such as work, education, or sports. You often feel stupid, untalented,
  or ignorant. You often don't even try to achieve anything anymore; it won't work
  anyway.",

  "Dependence/Incompetence" = "You feel unable to handle day-to-day
  responsibilities properly and independently. You often feel extremely dependent
  on others in situations where decisions must be made or something new has to be
  undertaken.",

  "Vulnerability to Harm" = paste("You expect something horrible to happen to you at
  any moment. This may lead you to take elaborate measures to protect yourself."),

  "Enmeshment" = "You believe that you lack identity or inner direction. You
  often feel empty, aimless, and emotionally dependent on others.",

  "Entitlement" = "You believe you should be able to do, say or get anything you
  want immediately without regard to the eff ect it will have on others. You are
  not interested in what others need.",

  "Insufficient Self-Control" = "You believe that you have little tolerance for
  frustration and that you are unable to contain feelings or impulses. When this
  lack of self-control is extreme, it can lead to chaotic administration (e.g.,
  not opening mails/letters), payment delays, sloppy household (e.g.,not being
  able to find things), criminal behaviour or addiction etc.",

  "Subjugation" = "You think you must surrender to the will of others to avoid
  negative consequences. You fear that, without this compliance, others will
  become angry. You have the impression that your wishes, opinions, and feelings
  do not matter to others.",

  "Self-Sacrifice" = "You often find yourself sacrificing your own needs or wants
  to help others. Paying attention to your own needs makes you feel guilty. You
  gain self-esteem by helping others.",

  "Approval-Seeking" = "You place great emphasis on gaining the approval,
  recognition, or attention of others or on fitting in. Th is often leads to
  unsatisfactory life decisions or to a hypersensitivity to rejection.",

  "Unrelenting Standards" = "You believe that what you do will never be good
  enough, that you have to try harder, and/or you place an extreme emphasis on
  status, wealth, or power. This is often at the expense of your health,
  happiness or your relationships with family and friends.",

  "Emotional Constriction" = "You feel you need to hold back emotions andimpulses,
  especially anger. You are not very spontaneous, and you are usually seen as
  emotionally constrained.",

  "Fear of Losing Control" = "You are overly concerned about losing control of
  your emotional expressions. You believe there will be serious consequences
  if you fail to control your emotions and behaviours.",

  "Negativity/Pessimism" = "You have an all-pervasive, lifelong focus on the
  negative aspects of life (pain, death, loss, disappointment, guilt, resentment,
  betrayal, etc.), while downplaying or overlooking positive oroptimistic aspects.",

  "Internal Punitiveness" = "You believe that you should be severely punished for
  your mistakes. You tend to be angry, intolerant, punitive, and impatient with
  yourself if you don't live up to your expectations orstandards. You have
  trouble forgiving yourself for mistakes.",

  "External Punitiveness" = "You believe that people should be severely punished
  for their mistakes. You tend to be angry, intolerant, punitive, and impatient
  with people who don't live up to your expectations or standards. You have
  trouble forgiving others for mistakes.",

  "Unfairness" = "You believe that the world (including also other people) is
  unfair and unjust and that society fails to address the actions of those who
  behave unfairly. You think of yourself as a (continuous) victim of unfairness.",

  "Incoherent Identity" = "You see yourself as lacking coherence and unity,
  often feeling like you consist of fragmented and unconnected parts. You struggle
  to maintain a clear sense of self and find it hard to understandyour own needs,
  emotions, thoughts, and actions.",

  "Incomprehensible World" = "You believe that the world, which includes other
  people and society at large, lacks inherent meaning. You see yourself as
  disconnected from what is happening in this world. The outer world is confusing
  to you, and you struggle to comprehend its underlying functions."
)

modes_descriptions <- list(
  "Lonely Child" = "You feel like a lonely child not being taken care of by
  significant others. Because the most important emotional needs of the child
  have generally not been met, you usually feel empty, alone, socially unacceptable,
  undeserving of love, unloved and unlovable.",

  "Abandoned & Abused Child" = "You feel the enormous emotional pain and fear of
  abandonment. You have the affect of a lost child: sad, frightened, vulnerable,
  defenseless, hopeless, needy, victimized, worthless, and lost. You appear
  fragile and childlike. You feel helpless and utterly alone and are obsessed
  with finding a parent figure who will take care of you.",

  "Disregarded Child" = "You feel disregarded in core emotional needs, such as
  safety, trust, and nurturance. You believe that your emotional needs are not
  seen by others, or, if seen, will not be met by others. You often feel the
  pain created by this. Usually, this is rooted in early experiences of caregivers
  not fulfilling core emotional needs, such as caring for and protecting the child.",

  "Dependent Child" = "You feel incapable and overwhelmed by adult
  responsibilities. You show a strong tendency to act in a younger or needier
  way, and you have a distinct need to be taken care of.",

  "Non-autonomous Child" = "You feel that you are not being able to develop and
  express your own opinions and preferences, feel incompetent and unable to rely
  on your own insight and choices, and to deal with thechallenges of adulthood.",

  "Subordinate Child" = "You don't feel the freedom to express opinions and
  emotions, rather you feel the necessity to subordinate yourself to others.",

  "Constrained Child" = "You don't feel the freedom to be spontaneous and playful,
  instead you behave in a controlled, inhibited, and serious way, even when this
  is not functional.",

  "Victimized Child" = "You continuously feel victimized and unfairly treated.
  Events are experienced as further evidence of injustice. You have difficulty
  experiencing bad luck as non-intentional.",

  "Confused Child" = "You experience the self as incoherent, chaotic, and falling
  apart. This might create feelings of anxiety, being lost, confusion, or
  emptiness.",

  "Spoiled Child" = "You think that you are entitled to get or to do whatever you
  want. You don't like and accept frustration as you are convinced you don't
  deserve it. You don't take 'no' for an answer.",

  "Grandiose Child" = "You believe you are the best in many ways compared to
  others and deserve maximum levels of admiration by others. You overvalue your
  ideas and acts and have a feeling of superiority which gives you self-rewarding
  sensations. You think you are more important than others and find proof in
  self-identified talents or by reporting relationships with people deemed
  special/ important.",

  "Impulsive Child" = "You act on desires or impulses in a selfish or uncontrolled
  way to get your own way and you have difficulty delaying short-term
  gratification. You often feel intensely angry, furious, livid, or impatient
  when these impulses cannot be met.",

  "Undisciplined Child" = "You can't force yourself to complete routine or
  tedious tasks. You are easily frustrated and give up easily.",

  "Angry Child" = "You feel intensely angry, furious, or impatient because basic
  emotional (or physical) needs are not being met.",

  "Enraged Child" = "You feel intense anger that manifests itself in hurtful or
  damaging actions towards people or objects. The feelings of anger can no
  longer be controlled. The behavior is more extreme than that of the angry
  child, and aggressive actions can result.",

  "Rebellious Child" = "You act in rebellious ways, doing forbidden things as a
  protest. You refuse to follow rules and don't consider the consequences. The
  rebellion can be expressed in other ways rather than overt anger. For instance,
  doing things intentionally poorly, obstruction, etc.",

  "Sulking Child" = "You express anger and protest -in a passive way- against too
  high demands, excessive punishment, accusations, and/or restrictions, by
  resistance and conveying disagreement nonverbally (e.g., being silent). You
  resist tedious, challenging, or frustrating responsibilities due to a lack of
  self-discipline.",

  "Punitive Critic/Punitive Parent" = "You believe that you deserve punishment or blame.
  You can't forgive mistakes. You often act on these feelings by blaming, punishing,
  or abusing yourself (e.g., self-injury).",

  "Punitive Lecturer" = "You believe that others should be held accountable for
  their failings and imperfections. You have a tendency to denigrate and control
  others. You lecture and punish others for their flaws and mistakes.",

  "Demanding Critic/Demanding Parent" = "You believe that the 'right' way of life is
  characterized by perfection, achieving goals at a high level, striving for
  high status or being efficient and avoiding wasting time. You may find it wrong
  to spontaneously express feelings or behaviors.",

  "Detached Protector" = "You cut off feelings and needs and emotionally detach
  from others and reject their help. You feel withdrawn, dazed, distracted, cut
  off, depersonalized, empty, or bored.",

  "Funny Protector" = "You use jokes to detach from painful emotions.",

  "Avoidant Protector" = "You attempt to keep yourself safe by avoiding
  situations where painful and vulnerable feelings might be activated.",

  "Angry Protector" = "You use cynical, controlled displays of anger or hostility
  to keep others at a safe distance and to protect yourself when the closeness
  of others is perceived as threatening.",

  "Compliant Surrender" = "You behave in a passive, serving, submissive manner
  around others due to fear of conflict or rejection. You tolerate abuse and/or
  mistreatment. You don't express healthy needs or desires to others.",

  "Reassurance Seeker" = "You seek reassurance from other people or from external
  sources (e.g., internet) that nothing bad is going to happen, that a perceived
  sign is actually a false alarm.",

  "Detached Self-soother" = "You compulsively or excessively pursue distraction,
  self-soothing, or self-stimulating activities (e.g., substanceabuse, working,
  sleeping, using the Internet, chatting, exercising, or sexual activity) to avoid
  or distract from distressing feelings.",

  "Suspicious Over-Controller" = "You try to protect yourself against threat
  from others. You do this in an extreme way by constantly checking others and
  their intentions. In that way you seek confirmation of your distrust.",

  "Hyper-Autonomous" = "You assert a false identity of being overly independent
  and autonomous (i.e., you don't need anybody). You denythe need for connection
  and approval from (significant) others, ignore societal expectations, are
  indifferent to others' situations, and/or prioritize personal opinions over the
  opinions of others.",

  "Perfectionistic Over-Controller" = "You try to protect yourself from making
  mistakes and prevent misfortune and criticism by being overly perfectionistic
  (e.g., perfectionism in achievement, outer appearance, social status etc.).
  To protect yourself from the pain of failure, you try to control every detail
  in a compulsive way to ensure the best result.",

  "Self-Aggrandizer" = "You behave in a self-centered or self-interested way
  toget your way, without regard for the feelings of others. You display
  superior or condescending behavior towards others. You may feel special,
  privileged, or feel that you deserve better treatment than others. You deny
  underlying insecurities and weaknesses.",

  "Attention- & Approval-Seeker" = "You try to gain approval and attention from
  others, by exaggerating your behavior or emotions (e.g.,monopolizing a
  conversation, being overly garrulous, saying outrageous things) or by displaying
  inappropriate behavior (e.g., eroticizing). You get easily frustrated with minor
  criticism, disapproval, or lack of attention.",

  "Pollyanna/Over-Optimist" = "You turn around the underlying pessimism by
  being overly optimistic. You find something to be glad or hopeful about in
  every situation, deny possible negative outcomes and use extremely positive
  language to overshadow your pessimism to a noticeable extent.",

  "Clown" = "You make fun of every situation, even when it’s more appropriate to
  pay attention to the serious aspects of it. You make jokes, fool around, and
  behave in funny ways, even transgressing social norms, to accomplish denial of
  painful or threatening aspects of reality.",

  "Winner" = "You engage in constant competition with everyone around, driven by
  a compulsive desire to gain as many experiences ofsuccess/winning as possible
  in every situation. Your competitiveness is fuelled by a need to accumulate
  victories, to feel better than your opponents.",

  "Slacker/Oblomov" = "You turn around steadfast standards by setting excessively
  low demands and expectations for yourself. You worship sloth, doing nothing, and
  loafing.",

  "Over-Humble" = "You perceive yourself as a very ordinary person and
  consistently adopt an excessively modest and humble attitude. You refuse to
  acknowledge being above average in any aspect or achievement, even when that
  is objectively true. You firmly believe that you don't merit recognition for
  any accomplishment.",

  "Pretender" = "You make yourself believe that you are certain, well-integrated,
  ordered, contained, and controlled or that the world is meaningful, and that
  you are in control of it. You pretend to always know exactly who you are and
  what you want, creating a made-up version ofyourself that doesn't match your
  true emotional needs.",

  "Over-Merciful" = "You have an excessive capacity for forgiveness and show an
  extreme sense of compassion, warmth, and kindness towards others regardless of
  the severity of the situation. This includes extending compassion even to those
  who mistreat or harm you through their actions.There is no tolerance for blame
  and guilt, and feelings of retaliation. Revenge is considered unacceptable.",

  "Idealizer" = "You naively believe that others will treat you in a just way,
  that the world is fair and/or that others will never let you down. You are likely
  to place particular people on a pedestal and feel excited about the degree of
  safe connection that you have with this individual. You ignore theharmful
  effects of others’ behaviors and don't take precautions even when it is necessary.",

  "Daredevil/Over-Risk-Taking" = "You embrace excessive risk-taking behavior and
  engage in activities that others perceive as too risky or daring. You appear to
  have no fear and hold the belief that confronting dangers and taking risks
  contributes to personal strength and resilience.",

  "Overly Self-Permissive" = "You rationalize every act, even when others see it
  as clearly wrong. You are convinced of your own goodness, the righteousness of
  your actions, and your good intentions. You can't acknowledge any mistake made
  or make apologies. You see yourself ashonourable and as having a high degree
  of integrity.",

  "Emotional Excessiveness" = "You are characterized by an unabashed emotional
  expression and a tendency to openly share and express emotions, regardless of
  their emotional valence or intensity, and regardless of the prevailing
  circumstances.",

  "Emotional Daredevil" = "You are seeking out heightened emotional experience
  and are constantly striving for emotional stimulation. You firmly believe in
  your ability to manage any range of emotions, sensations, and stressors, and
  are compelled to prove this by engaging in emotionally challenging, thrilling,
  novel, or other emotionally stimulating actions.",

  "Bully & Attack" = "You harm other people in a controlled and strategic manner
  through emotional, physical, sexual, verbal, antisocial, or criminal acts. This
  gives a sense of power, dominance, and/or invulnerability, often incorporating
  sadistic elements.",

  "Conning & Manipulating" = "You con, lie, or manipulate in a manner designed
  to achieve a specific goal, which either involves victimizing others,
  controlling others, or escaping punishment. You deny the unfair aspects of your
  behavior.",

  "Predator" = "You plan and execute severely damaging acts (including murder)
  against a perceived threat, rival, obstacle, or enemy in a cold, ruthless, and
  calculated manner.",

  "Happy Child" = "You feel at ease because core emotional
  needs are currently met. You feel loved, connected, safe, understood, optimistic
  and spontaneous.",

  "Healthy Adult" = "You perform appropriate adult functions
  such as working, parenting, taking responsibilities, and making healthy decisions.
  You are aware of your emotional needs, and seeksuitable ways to fulfil these,
  while also respecting the interests of others."
)

coping_descriptions <- list(
  "Resignation" = "You tend to accept problematic beliefs and feelings as the
  truth. You act according to these beliefs and feelings, for example by entering
  relationships or situations that cause negative events to keep repeating
  themselves.",

  "Avoidance" = "You try to avoid activities, situations, or people that can
  trigger your negative beliefs and associated feelings such as sadness, shame,
  or anger. You also try to block negative thoughts, memories andemotions and
  seek as much distraction as possible.",

  "Inversion" = "You 'fight' against your negative beliefs and feelings by
  pretending the opposite is true, such as acting superior when you actually feel
  inferior. You try to appear mentally strong and healthy, denying problematic
  beliefs and feelings."
)
