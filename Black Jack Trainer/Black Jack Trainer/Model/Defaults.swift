//
//  Defaults.swift
//  Black Jack Trainer
//
//  Created by Andrew Morgan on 12/10/2021.
//

import Foundation

let cellHeight = 18.0
let cellWidth = 35.0

let defaultSoftDecisions = [
        [
             Decision(handValue: 2, dealerCardValue: .two, action: .hit),
             Decision(handValue: 2, dealerCardValue: .three, action: .hit),
             Decision(handValue: 2, dealerCardValue: .four, action: .hit),
             Decision(handValue: 2, dealerCardValue: .five, action: .double),
             Decision(handValue: 2, dealerCardValue: .six, action: .double),
             Decision(handValue: 2, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 2, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 2, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 2, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 2, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 3, dealerCardValue: .two, action: .hit),
             Decision(handValue: 3, dealerCardValue: .three, action: .hit),
             Decision(handValue: 3, dealerCardValue: .four, action: .hit),
             Decision(handValue: 3, dealerCardValue: .five, action: .double),
             Decision(handValue: 3, dealerCardValue: .six, action: .double),
             Decision(handValue: 3, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 3, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 3, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 3, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 3, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 4, dealerCardValue: .two, action: .hit),
             Decision(handValue: 4, dealerCardValue: .three, action: .hit),
             Decision(handValue: 4, dealerCardValue: .four, action: .double),
             Decision(handValue: 4, dealerCardValue: .five, action: .double),
             Decision(handValue: 4, dealerCardValue: .six, action: .double),
             Decision(handValue: 4, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 4, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 4, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 4, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 4, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 5, dealerCardValue: .two, action: .hit),
             Decision(handValue: 5, dealerCardValue: .three, action: .hit),
             Decision(handValue: 5, dealerCardValue: .four, action: .double),
             Decision(handValue: 5, dealerCardValue: .five, action: .double),
             Decision(handValue: 5, dealerCardValue: .six, action: .double),
             Decision(handValue: 5, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 5, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 5, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 5, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 5, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 6, dealerCardValue: .two, action: .hit),
             Decision(handValue: 6, dealerCardValue: .three, action: .double),
             Decision(handValue: 6, dealerCardValue: .four, action: .double),
             Decision(handValue: 6, dealerCardValue: .five, action: .double),
             Decision(handValue: 6, dealerCardValue: .six, action: .double),
             Decision(handValue: 6, dealerCardValue: .seven, action: .hit),
             Decision(handValue: 6, dealerCardValue: .eight, action: .hit),
             Decision(handValue: 6, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 6, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 6, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 7, dealerCardValue: .two, action: .stand),
             Decision(handValue: 7, dealerCardValue: .three, action: .double),
             Decision(handValue: 7, dealerCardValue: .four, action: .double),
             Decision(handValue: 7, dealerCardValue: .five, action: .double),
             Decision(handValue: 7, dealerCardValue: .six, action: .double),
             Decision(handValue: 7, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 7, dealerCardValue: .eight, action: .stand),
             Decision(handValue: 7, dealerCardValue: .nine, action: .hit),
             Decision(handValue: 7, dealerCardValue: .ten, action: .hit),
             Decision(handValue: 7, dealerCardValue: .ace, action: .hit)
        ],
        [
             Decision(handValue: 8, dealerCardValue: .two, action: .stand),
             Decision(handValue: 8, dealerCardValue: .three, action: .stand),
             Decision(handValue: 8, dealerCardValue: .four, action: .stand),
             Decision(handValue: 8, dealerCardValue: .five, action: .stand),
             Decision(handValue: 8, dealerCardValue: .six, action: .stand),
             Decision(handValue: 8, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 8, dealerCardValue: .eight, action: .stand),
             Decision(handValue: 8, dealerCardValue: .nine, action: .stand),
             Decision(handValue: 8, dealerCardValue: .ten, action: .stand),
             Decision(handValue: 8, dealerCardValue: .ace, action: .stand)
        ],
        [
             Decision(handValue: 9, dealerCardValue: .two, action: .stand),
             Decision(handValue: 9, dealerCardValue: .three, action: .stand),
             Decision(handValue: 9, dealerCardValue: .four, action: .stand),
             Decision(handValue: 9, dealerCardValue: .five, action: .stand),
             Decision(handValue: 9, dealerCardValue: .six, action: .stand),
             Decision(handValue: 9, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 9, dealerCardValue: .eight, action: .stand),
             Decision(handValue: 9, dealerCardValue: .nine, action: .stand),
             Decision(handValue: 9, dealerCardValue: .ten, action: .stand),
             Decision(handValue: 9, dealerCardValue: .ace, action: .stand)
        ],
        [
             Decision(handValue: 10, dealerCardValue: .two, action: .stand),
             Decision(handValue: 10, dealerCardValue: .three, action: .stand),
             Decision(handValue: 10, dealerCardValue: .four, action: .stand),
             Decision(handValue: 10, dealerCardValue: .five, action: .stand),
             Decision(handValue: 10, dealerCardValue: .six, action: .stand),
             Decision(handValue: 10, dealerCardValue: .seven, action: .stand),
             Decision(handValue: 10, dealerCardValue: .eight, action: .stand),
             Decision(handValue: 10, dealerCardValue: .nine, action: .stand),
             Decision(handValue: 10, dealerCardValue: .ten, action: .stand),
             Decision(handValue: 10, dealerCardValue: .ace, action: .stand)
        ],
        [
             Decision(handValue: 11, dealerCardValue: .two, action: .split),
             Decision(handValue: 11, dealerCardValue: .three, action: .split),
             Decision(handValue: 11, dealerCardValue: .four, action: .split),
             Decision(handValue: 11, dealerCardValue: .five, action: .split),
             Decision(handValue: 11, dealerCardValue: .six, action: .split),
             Decision(handValue: 11, dealerCardValue: .seven, action: .split),
             Decision(handValue: 11, dealerCardValue: .eight, action: .split),
             Decision(handValue: 11, dealerCardValue: .nine, action: .split),
             Decision(handValue: 11, dealerCardValue: .ten, action: .split),
             Decision(handValue: 11, dealerCardValue: .ace, action: .split)
        ],
    ]


let defaultSplitDecisions = [
    [
         Decision(handValue: 2, dealerCardValue: .two, action: .split),
         Decision(handValue: 2, dealerCardValue: .three, action: .split),
         Decision(handValue: 2, dealerCardValue: .four, action: .split),
         Decision(handValue: 2, dealerCardValue: .five, action: .split),
         Decision(handValue: 2, dealerCardValue: .six, action: .split),
         Decision(handValue: 2, dealerCardValue: .seven, action: .split),
         Decision(handValue: 2, dealerCardValue: .eight, action: .hit),
         Decision(handValue: 2, dealerCardValue: .nine, action: .hit),
         Decision(handValue: 2, dealerCardValue: .ten, action: .hit),
         Decision(handValue: 2, dealerCardValue: .ace, action: .hit)
    ],
    [
         Decision(handValue: 3, dealerCardValue: .two, action: .split),
         Decision(handValue: 3, dealerCardValue: .three, action: .split),
         Decision(handValue: 3, dealerCardValue: .four, action: .split),
         Decision(handValue: 3, dealerCardValue: .five, action: .split),
         Decision(handValue: 3, dealerCardValue: .six, action: .split),
         Decision(handValue: 3, dealerCardValue: .seven, action: .split),
         Decision(handValue: 3, dealerCardValue: .eight, action: .hit),
         Decision(handValue: 3, dealerCardValue: .nine, action: .hit),
         Decision(handValue: 3, dealerCardValue: .ten, action: .hit),
         Decision(handValue: 3, dealerCardValue: .ace, action: .hit)
    ],
    [
         Decision(handValue: 4, dealerCardValue: .two, action: .hit),
         Decision(handValue: 4, dealerCardValue: .three, action: .hit),
         Decision(handValue: 4, dealerCardValue: .four, action: .hit),
         Decision(handValue: 4, dealerCardValue: .five, action: .split),
         Decision(handValue: 4, dealerCardValue: .six, action: .split),
         Decision(handValue: 4, dealerCardValue: .seven, action: .hit),
         Decision(handValue: 4, dealerCardValue: .eight, action: .hit),
         Decision(handValue: 4, dealerCardValue: .nine, action: .hit),
         Decision(handValue: 4, dealerCardValue: .ten, action: .hit),
         Decision(handValue: 4, dealerCardValue: .ace, action: .hit)
    ],
    [
         Decision(handValue: 5, dealerCardValue: .two, action: .double),
         Decision(handValue: 5, dealerCardValue: .three, action: .double),
         Decision(handValue: 5, dealerCardValue: .four, action: .double),
         Decision(handValue: 5, dealerCardValue: .five, action: .double),
         Decision(handValue: 5, dealerCardValue: .six, action: .double),
         Decision(handValue: 5, dealerCardValue: .seven, action: .double),
         Decision(handValue: 5, dealerCardValue: .eight, action: .double),
         Decision(handValue: 5, dealerCardValue: .nine, action: .double),
         Decision(handValue: 5, dealerCardValue: .ten, action: .hit),
         Decision(handValue: 5, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 6, dealerCardValue: .two, action: .split),
        Decision(handValue: 6, dealerCardValue: .three, action: .split),
        Decision(handValue: 6, dealerCardValue: .four, action: .split),
        Decision(handValue: 6, dealerCardValue: .five, action: .split),
        Decision(handValue: 6, dealerCardValue: .six, action: .split),
        Decision(handValue: 6, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 6, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 6, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 6, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 6, dealerCardValue: .ace, action: .hit)
    ],
    [
         Decision(handValue: 7, dealerCardValue: .two, action: .split),
         Decision(handValue: 7, dealerCardValue: .three, action: .split),
         Decision(handValue: 7, dealerCardValue: .four, action: .split),
         Decision(handValue: 7, dealerCardValue: .five, action: .split),
         Decision(handValue: 7, dealerCardValue: .six, action: .split),
         Decision(handValue: 7, dealerCardValue: .seven, action: .split),
         Decision(handValue: 7, dealerCardValue: .eight, action: .hit),
         Decision(handValue: 7, dealerCardValue: .nine, action: .hit),
         Decision(handValue: 7, dealerCardValue: .ten, action: .hit),
         Decision(handValue: 7, dealerCardValue: .ace, action: .hit)
    ],
    [
         Decision(handValue: 8, dealerCardValue: .two, action: .split),
         Decision(handValue: 8, dealerCardValue: .three, action: .split),
         Decision(handValue: 8, dealerCardValue: .four, action: .split),
         Decision(handValue: 8, dealerCardValue: .five, action: .split),
         Decision(handValue: 8, dealerCardValue: .six, action: .split),
         Decision(handValue: 8, dealerCardValue: .seven, action: .split),
         Decision(handValue: 8, dealerCardValue: .eight, action: .split),
         Decision(handValue: 8, dealerCardValue: .nine, action: .split),
         Decision(handValue: 8, dealerCardValue: .ten, action: .split),
         Decision(handValue: 8, dealerCardValue: .ace, action: .split)
    ],
    [
         Decision(handValue: 9, dealerCardValue: .two, action: .split),
         Decision(handValue: 9, dealerCardValue: .three, action: .split),
         Decision(handValue: 9, dealerCardValue: .four, action: .split),
         Decision(handValue: 9, dealerCardValue: .five, action: .split),
         Decision(handValue: 9, dealerCardValue: .six, action: .split),
         Decision(handValue: 9, dealerCardValue: .seven, action: .stand),
         Decision(handValue: 9, dealerCardValue: .eight, action: .split),
         Decision(handValue: 9, dealerCardValue: .nine, action: .split),
         Decision(handValue: 9, dealerCardValue: .ten, action: .stand),
         Decision(handValue: 9, dealerCardValue: .ace, action: .stand)
    ],
    [
         Decision(handValue: 10, dealerCardValue: .two, action: .stand),
         Decision(handValue: 10, dealerCardValue: .three, action: .stand),
         Decision(handValue: 10, dealerCardValue: .four, action: .stand),
         Decision(handValue: 10, dealerCardValue: .five, action: .stand),
         Decision(handValue: 10, dealerCardValue: .six, action: .stand),
         Decision(handValue: 10, dealerCardValue: .seven, action: .stand),
         Decision(handValue: 10, dealerCardValue: .eight, action: .stand),
         Decision(handValue: 10, dealerCardValue: .nine, action: .stand),
         Decision(handValue: 10, dealerCardValue: .ten, action: .stand),
         Decision(handValue: 10, dealerCardValue: .ace, action: .stand)
    ],
    [
        Decision(handValue: 11, dealerCardValue: .two, action: .split),
        Decision(handValue: 11, dealerCardValue: .three, action: .split),
        Decision(handValue: 11, dealerCardValue: .four, action: .split),
        Decision(handValue: 11, dealerCardValue: .five, action: .split),
        Decision(handValue: 11, dealerCardValue: .six, action: .split),
        Decision(handValue: 11, dealerCardValue: .seven, action: .split),
        Decision(handValue: 11, dealerCardValue: .eight, action: .split),
        Decision(handValue: 11, dealerCardValue: .nine, action: .split),
        Decision(handValue: 11, dealerCardValue: .ten, action: .split),
        Decision(handValue: 11, dealerCardValue: .ace, action: .split)
    ]
]

let defaultDefaultDecisions = [
    [
        Decision(handValue: 5, dealerCardValue: .two, action: .hit),
        Decision(handValue: 5, dealerCardValue: .three, action: .hit),
        Decision(handValue: 5, dealerCardValue: .four, action: .hit),
        Decision(handValue: 5, dealerCardValue: .five, action: .hit),
        Decision(handValue: 5, dealerCardValue: .six, action: .hit),
        Decision(handValue: 5, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 5, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 5, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 5, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 5, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 6, dealerCardValue: .two, action: .hit),
        Decision(handValue: 6, dealerCardValue: .three, action: .hit),
        Decision(handValue: 6, dealerCardValue: .four, action: .hit),
        Decision(handValue: 6, dealerCardValue: .five, action: .hit),
        Decision(handValue: 6, dealerCardValue: .six, action: .hit),
        Decision(handValue: 6, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 6, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 6, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 6, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 6, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 7, dealerCardValue: .two, action: .hit),
        Decision(handValue: 7, dealerCardValue: .three, action: .hit),
        Decision(handValue: 7, dealerCardValue: .four, action: .hit),
        Decision(handValue: 7, dealerCardValue: .five, action: .hit),
        Decision(handValue: 7, dealerCardValue: .six, action: .hit),
        Decision(handValue: 7, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 7, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 7, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 7, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 7, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 8, dealerCardValue: .two, action: .hit),
        Decision(handValue: 8, dealerCardValue: .three, action: .hit),
        Decision(handValue: 8, dealerCardValue: .four, action: .hit),
        Decision(handValue: 8, dealerCardValue: .five, action: .hit),
        Decision(handValue: 8, dealerCardValue: .six, action: .hit),
        Decision(handValue: 8, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 8, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 8, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 8, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 8, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 9, dealerCardValue: .two, action: .hit),
        Decision(handValue: 9, dealerCardValue: .three, action: .double),
        Decision(handValue: 9, dealerCardValue: .four, action: .double),
        Decision(handValue: 9, dealerCardValue: .five, action: .double),
        Decision(handValue: 9, dealerCardValue: .six, action: .double),
        Decision(handValue: 9, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 9, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 9, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 9, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 9, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 10, dealerCardValue: .two, action: .double),
        Decision(handValue: 10, dealerCardValue: .three, action: .double),
        Decision(handValue: 10, dealerCardValue: .four, action: .double),
        Decision(handValue: 10, dealerCardValue: .five, action: .double),
        Decision(handValue: 10, dealerCardValue: .six, action: .double),
        Decision(handValue: 10, dealerCardValue: .seven, action: .double),
        Decision(handValue: 10, dealerCardValue: .eight, action: .double),
        Decision(handValue: 10, dealerCardValue: .nine, action: .double),
        Decision(handValue: 10, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 10, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 11, dealerCardValue: .two, action: .double),
        Decision(handValue: 11, dealerCardValue: .three, action: .double),
        Decision(handValue: 11, dealerCardValue: .four, action: .double),
        Decision(handValue: 11, dealerCardValue: .five, action: .double),
        Decision(handValue: 11, dealerCardValue: .six, action: .double),
        Decision(handValue: 11, dealerCardValue: .seven, action: .double),
        Decision(handValue: 11, dealerCardValue: .eight, action: .double),
        Decision(handValue: 11, dealerCardValue: .nine, action: .double),
        Decision(handValue: 11, dealerCardValue: .ten, action: .double),
        Decision(handValue: 11, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 12, dealerCardValue: .two, action: .hit),
        Decision(handValue: 12, dealerCardValue: .three, action: .hit),
        Decision(handValue: 12, dealerCardValue: .four, action: .stand),
        Decision(handValue: 12, dealerCardValue: .five, action: .stand),
        Decision(handValue: 12, dealerCardValue: .six, action: .stand),
        Decision(handValue: 12, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 12, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 12, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 12, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 12, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 13, dealerCardValue: .two, action: .stand),
        Decision(handValue: 13, dealerCardValue: .three, action: .stand),
        Decision(handValue: 13, dealerCardValue: .four, action: .stand),
        Decision(handValue: 13, dealerCardValue: .five, action: .stand),
        Decision(handValue: 13, dealerCardValue: .six, action: .stand),
        Decision(handValue: 13, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 13, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 13, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 13, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 13, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 14, dealerCardValue: .two, action: .stand),
        Decision(handValue: 14, dealerCardValue: .three, action: .stand),
        Decision(handValue: 14, dealerCardValue: .four, action: .stand),
        Decision(handValue: 14, dealerCardValue: .five, action: .stand),
        Decision(handValue: 14, dealerCardValue: .six, action: .stand),
        Decision(handValue: 14, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 14, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 14, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 14, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 14, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 15, dealerCardValue: .two, action: .stand),
        Decision(handValue: 15, dealerCardValue: .three, action: .stand),
        Decision(handValue: 15, dealerCardValue: .four, action: .stand),
        Decision(handValue: 15, dealerCardValue: .five, action: .stand),
        Decision(handValue: 15, dealerCardValue: .six, action: .stand),
        Decision(handValue: 15, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 15, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 15, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 15, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 15, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 16, dealerCardValue: .two, action: .stand),
        Decision(handValue: 16, dealerCardValue: .three, action: .stand),
        Decision(handValue: 16, dealerCardValue: .four, action: .stand),
        Decision(handValue: 16, dealerCardValue: .five, action: .stand),
        Decision(handValue: 16, dealerCardValue: .six, action: .stand),
        Decision(handValue: 16, dealerCardValue: .seven, action: .hit),
        Decision(handValue: 16, dealerCardValue: .eight, action: .hit),
        Decision(handValue: 16, dealerCardValue: .nine, action: .hit),
        Decision(handValue: 16, dealerCardValue: .ten, action: .hit),
        Decision(handValue: 16, dealerCardValue: .ace, action: .hit)
    ],
    [
        Decision(handValue: 17, dealerCardValue: .two, action: .stand),
        Decision(handValue: 17, dealerCardValue: .three, action: .stand),
        Decision(handValue: 17, dealerCardValue: .four, action: .stand),
        Decision(handValue: 17, dealerCardValue: .five, action: .stand),
        Decision(handValue: 17, dealerCardValue: .six, action: .stand),
        Decision(handValue: 17, dealerCardValue: .seven, action: .stand),
        Decision(handValue: 17, dealerCardValue: .eight, action: .stand),
        Decision(handValue: 17, dealerCardValue: .nine, action: .stand),
        Decision(handValue: 17, dealerCardValue: .ten, action: .stand),
        Decision(handValue: 17, dealerCardValue: .ace, action: .stand)
    ],
    [
        Decision(handValue: 18, dealerCardValue: .two, action: .stand),
        Decision(handValue: 18, dealerCardValue: .three, action: .stand),
        Decision(handValue: 18, dealerCardValue: .four, action: .stand),
        Decision(handValue: 18, dealerCardValue: .five, action: .stand),
        Decision(handValue: 18, dealerCardValue: .six, action: .stand),
        Decision(handValue: 18, dealerCardValue: .seven, action: .stand),
        Decision(handValue: 18, dealerCardValue: .eight, action: .stand),
        Decision(handValue: 18, dealerCardValue: .nine, action: .stand),
        Decision(handValue: 18, dealerCardValue: .ten, action: .stand),
        Decision(handValue: 18, dealerCardValue: .ace, action: .stand)
    ],
    [
        Decision(handValue: 19, dealerCardValue: .two, action: .stand),
        Decision(handValue: 19, dealerCardValue: .three, action: .stand),
        Decision(handValue: 19, dealerCardValue: .four, action: .stand),
        Decision(handValue: 19, dealerCardValue: .five, action: .stand),
        Decision(handValue: 19, dealerCardValue: .six, action: .stand),
        Decision(handValue: 19, dealerCardValue: .seven, action: .stand),
        Decision(handValue: 19, dealerCardValue: .eight, action: .stand),
        Decision(handValue: 19, dealerCardValue: .nine, action: .stand),
        Decision(handValue: 19, dealerCardValue: .ten, action: .stand),
        Decision(handValue: 19, dealerCardValue: .ace, action: .stand)
    ],
    [
        Decision(handValue: 20, dealerCardValue: .two, action: .stand),
        Decision(handValue: 20, dealerCardValue: .three, action: .stand),
        Decision(handValue: 20, dealerCardValue: .four, action: .stand),
        Decision(handValue: 20, dealerCardValue: .five, action: .stand),
        Decision(handValue: 20, dealerCardValue: .six, action: .stand),
        Decision(handValue: 20, dealerCardValue: .seven, action: .stand),
        Decision(handValue: 20, dealerCardValue: .eight, action: .stand),
        Decision(handValue: 20, dealerCardValue: .nine, action: .stand),
        Decision(handValue: 20, dealerCardValue: .ten, action: .stand),
        Decision(handValue: 20, dealerCardValue: .ace, action: .stand)
    ],
    [
        Decision(handValue: 21, dealerCardValue: .two, action: .stand),
        Decision(handValue: 21, dealerCardValue: .three, action: .stand),
        Decision(handValue: 21, dealerCardValue: .four, action: .stand),
        Decision(handValue: 21, dealerCardValue: .five, action: .stand),
        Decision(handValue: 21, dealerCardValue: .six, action: .stand),
        Decision(handValue: 21, dealerCardValue: .seven, action: .stand),
        Decision(handValue: 21, dealerCardValue: .eight, action: .stand),
        Decision(handValue: 21, dealerCardValue: .nine, action: .stand),
        Decision(handValue: 21, dealerCardValue: .ten, action: .stand),
        Decision(handValue: 21, dealerCardValue: .ace, action: .stand)
    ]
]
