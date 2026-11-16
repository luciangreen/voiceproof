% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, speak, [implies(not(s), implies(p, r))], [if, not, s, then, if, p, then, r]).
io(2, hear, [[q]], q).
io(3, check, [[step(1, not(r), premise), step(2, q, premise), step(3, and(not(r), q), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(4, speak, [implies(r, q)], [if, r, then, q]).
io(5, hear, [[p]], p).
io(6, check, [[step(1, and(q, p), premise), step(2, and(q, r), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(7, speak, [r], [r]).
io(8, hear, [[p]], p).
io(9, check, [[step(1, p, premise), step(2, q, premise), step(3, and(p, q), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(10, speak, [q], [q]).
io(11, hear, [[]], fails).
io(12, check, [[step(1, and(s, s), premise), step(2, not(p), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(13, speak, [or(and(r, q), and(r, q))], [either, both, r, and, q, or, both, r, and, q]).
io(14, hear, [[both, q, and, p]], and(q, p)).
io(15, check, [[step(1, implies(and(s, q), q), premise), step(2, and(s, q), premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(16, speak, [q], [q]).
io(17, hear, [[q]], q).
io(18, check, [[step(1, and(s, p), premise), step(2, and(q, s), premise), step(3, and(and(s, p), and(q, s)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(19, speak, [not(or(implies(q, p), r))], [not, either, if, q, then, p, or, r]).
io(20, hear, [[if, q, then, p]], implies(q, p)).
io(21, check, [[step(1, and(p, s), premise), step(2, s, premise), step(3, p, premise)]], error("existence_error(procedure,cases:check/2)")).
io(22, speak, [p], [p]).
io(23, hear, [[s]], s).
io(24, check, [[step(1, p, premise), step(2, p, premise), step(3, and(p, p), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(25, speak, [not(and(p, r))], [not, both, p, and, r]).
io(26, hear, [[both, both, r, and, r, and, both, p, and, s, then, both, if, q, then, s, and, both, p, and, p]], fails).
io(27, check, [[step(1, and(r, q), premise), step(2, q, premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(28, speak, [p], [p]).
io(29, hear, [[if, both, if, q, then, r, and, not, r, then, if, either, p, or, s, then, if, p, then, s]], implies(and(implies(q, r), not(r)), implies(or(p, s), implies(p, s)))).
io(30, check, [[step(1, or(q, s), premise), step(2, implies(p, q), premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(31, speak, [r], [r]).
io(32, hear, [[both, s, and, r]], and(s, r)).
io(33, check, [[step(1, or(p, q), premise), step(2, not(r), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(34, speak, [not(or(p, s))], [not, either, p, or, s]).
io(35, hear, [[both, if, q, then, not, r, and, either, not, s, or, either, q, or, q]], and(implies(q, not(r)), or(not(s), or(q, q)))).
io(36, check, [[step(1, not(q), premise), step(2, and(q, p), premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(37, speak, [or(not(r), not(p))], [either, not, r, or, not, p]).
io(38, hear, [[not, r, then, either, r, or, r]], fails).
io(39, check, [[step(1, implies(p, s), premise), step(2, p, premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(40, speak, [implies(and(s, p), implies(s, s))], [if, both, s, and, p, then, if, s, then, s]).
io(41, hear, [[not, if, s, then, q]], not(implies(s, q))).
io(42, check, [[step(1, not(s), premise), step(2, implies(s, s), premise), step(3, and(not(s), implies(s, s)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(43, speak, [implies(and(q, s), not(q))], [if, both, q, and, s, then, not, q]).
io(44, hear, [[s]], s).
io(45, check, [[step(1, not(p), premise), step(2, or(q, p), premise), step(3, and(not(p), or(q, p)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(46, speak, [not(implies(s, p))], [not, if, s, then, p]).
io(47, hear, [[both, s, and, q]], and(s, q)).
io(48, check, [[step(1, implies(implies(q, s), p), premise), step(2, implies(q, s), premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(49, speak, [implies(or(p, s), q)], [if, either, p, or, s, then, q]).
io(50, hear, [[if, r, then, q]], implies(r, q)).
io(51, check, [[step(1, or(p, q), premise), step(2, or(q, q), premise), step(3, and(or(p, q), or(q, q)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(52, speak, [q], [q]).
io(53, hear, [[p, or, s]], fails).
io(54, check, [[step(1, not(p), premise), step(2, implies(q, r), premise), step(3, p, premise)]], error("existence_error(procedure,cases:check/2)")).
io(55, speak, [p], [p]).
io(56, hear, [[not, p, or, if, either, r, or, s, then, both, p, and, r]], fails).
io(57, check, [[step(1, not(r), premise), step(2, not(q), premise), step(3, and(not(r), not(q)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(58, speak, [implies(not(or(p, p)), and(implies(q, s), not(r)))], [if, not, either, p, or, p, then, both, if, q, then, s, and, not, r]).
io(59, hear, [[s, and, not, p]], fails).
io(60, check, [[step(1, implies(s, r), premise), step(2, q, premise), step(3, p, premise)]], error("existence_error(procedure,cases:check/2)")).
io(61, speak, [not(s)], [not, s]).
io(62, hear, [[not, not, s]], not(not(s))).
io(63, check, [[step(1, implies(or(s, r), p), premise), step(2, or(s, r), premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(64, speak, [not(and(s, q))], [not, both, s, and, q]).
io(65, hear, [[either, p, or, s]], or(p, s)).
io(66, check, [[step(1, not(r), premise), step(2, not(r), premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(67, speak, [r], [r]).
io(68, hear, [[either, q, or, p]], or(q, p)).
io(69, check, [[step(1, and(r, s), premise), step(2, p, premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(70, speak, [r], [r]).
io(71, hear, [[both, if, either, r, or, s, then, either, p, or, r, and, q]], and(implies(or(r, s), or(p, r)), q)).
io(72, check, [[step(1, implies(s, p), premise), step(2, implies(q, s), premise), step(3, and(implies(s, p), implies(q, s)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(73, speak, [implies(q, s)], [if, q, then, s]).
io(74, hear, [[if, r, then, s, or, s]], fails).
io(75, check, [[step(1, s, premise), step(2, implies(s, p), premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(76, speak, [r], [r]).
io(77, hear, [[s]], s).
io(78, check, [[step(1, s, premise), step(2, or(q, q), premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(79, speak, [or(implies(q, q), q)], [either, if, q, then, q, or, q]).
io(80, hear, [[r]], r).
io(81, check, [[step(1, implies(or(q, p), r), premise), step(2, or(q, p), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(82, speak, [and(p, r)], [both, p, and, r]).
io(83, hear, [[q]], q).
io(84, check, [[step(1, p, premise), step(2, r, premise), step(3, and(p, r), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(85, speak, [p], [p]).
io(86, hear, [[r]], r).
io(87, check, [[step(1, or(r, p), premise), step(2, implies(s, q), premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(88, speak, [s], [s]).
io(89, hear, [[either, both, q, and, s, or, p]], or(and(q, s), p)).
io(90, check, [[step(1, and(p, r), premise), step(2, not(r), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(91, speak, [r], [r]).
io(92, hear, [[if, either, q, or, p, then, if, s, then, r]], implies(or(q, p), implies(s, r))).
io(93, check, [[step(1, not(p), premise), step(2, not(q), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(94, speak, [and(p, not(s))], [both, p, and, not, s]).
io(95, hear, [[p]], p).
io(96, check, [[step(1, implies(s, q), premise), step(2, s, premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(97, speak, [or(p, p)], [either, p, or, p]).
io(98, hear, [[s, or, s]], fails).
io(99, check, [[step(1, implies(q, r), premise), step(2, s, premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(100, speak, [or(p, s)], [either, p, or, s]).
io(101, hear, [[either, s, or, both, s, and, r]], or(s, and(s, r))).
io(102, check, [[step(1, implies(r, q), premise), step(2, or(q, r), premise), step(3, r, premise)]], error("existence_error(procedure,cases:check/2)")).
io(103, speak, [not(not(q))], [not, not, q]).
io(104, hear, [[both, not, p, and, both, s, and, p]], and(not(p), and(s, p))).
io(105, check, [[step(1, or(r, p), premise), step(2, and(q, r), premise), step(3, and(or(r, p), and(q, r)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(106, speak, [p], [p]).
io(107, hear, [[if, both, s, and, s, then, either, q, or, r]], implies(and(s, s), or(q, r))).
io(108, check, [[step(1, or(p, p), premise), step(2, or(s, r), premise), step(3, and(or(p, p), or(s, r)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(109, speak, [q], [q]).
io(110, hear, [[not, r, or, r]], fails).
io(111, check, [[step(1, not(s), premise), step(2, and(s, p), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(112, speak, [not(not(r))], [not, not, r]).
io(113, hear, [[either, r, or, s]], or(r, s)).
io(114, check, [[step(1, or(r, s), premise), step(2, and(q, r), premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(115, speak, [and(r, p)], [both, r, and, p]).
io(116, hear, [[both, p, and, r, or, either, p, or, r]], fails).
io(117, check, [[step(1, implies(and(r, q), r), premise), step(2, and(r, q), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(118, speak, [p], [p]).
io(119, hear, [[if, if, s, then, s, then, p]], implies(implies(s, s), p)).
io(120, check, [[step(1, s, premise), step(2, not(s), premise), step(3, and(s, not(s)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(121, speak, [implies(or(p, p), implies(r, p))], [if, either, p, or, p, then, if, r, then, p]).
io(122, hear, [[either, p, or, q]], or(p, q)).
io(123, check, [[step(1, not(p), premise), step(2, or(r, q), premise), step(3, s, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(124, speak, [not(p)], [not, p]).
io(125, hear, [[either, not, not, q, or, both, not, s, and, both, q, and, s]], or(not(not(q)), and(not(s), and(q, s)))).
io(126, check, [[step(1, and(q, s), premise), step(2, implies(q, p), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(127, speak, [implies(or(implies(s, q), not(q)), and(and(r, r), and(r, q)))], [if, either, if, s, then, q, or, not, q, then, both, both, r, and, r, and, both, r, and, q]).
io(128, hear, [[if, p, then, r]], implies(p, r)).
io(129, check, [[step(1, r, premise), step(2, and(s, q), premise), step(3, and(r, and(s, q)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(130, speak, [or(q, q)], [either, q, or, q]).
io(131, hear, [[if, both, both, r, and, p, and, if, r, then, r, then, both, s, and, if, p, then, p]], implies(and(and(r, p), implies(r, r)), and(s, implies(p, p)))).
io(132, check, [[step(1, q, premise), step(2, s, premise), step(3, s, premise)]], error("existence_error(procedure,cases:check/2)")).
io(133, speak, [and(and(or(s, r), not(q)), q)], [both, both, either, s, or, r, and, not, q, and, q]).
io(134, hear, [[s]], s).
io(135, check, [[step(1, implies(r, s), premise), step(2, r, premise), step(3, and(implies(r, s), r), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(136, speak, [or(and(r, p), or(p, q))], [either, both, r, and, p, or, either, p, or, q]).
io(137, hear, [[r]], r).
io(138, check, [[step(1, p, premise), step(2, or(q, s), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(139, speak, [and(r, and(or(r, s), or(p, p)))], [both, r, and, both, either, r, or, s, and, either, p, or, p]).
io(140, hear, [[]], fails).
io(141, check, [[step(1, or(q, r), premise), step(2, implies(p, q), premise), step(3, and(or(q, r), implies(p, q)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(142, speak, [or(q, r)], [either, q, or, r]).
io(143, hear, [[both, q, and, p]], and(q, p)).
io(144, check, [[step(1, implies(implies(s, q), r), premise), step(2, implies(s, q), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(145, speak, [or(q, implies(q, s))], [either, q, or, if, q, then, s]).
io(146, hear, [[both, q, and, either, either, p, or, q, or, both, s, and, q]], and(q, or(or(p, q), and(s, q)))).
io(147, check, [[step(1, or(p, s), premise), step(2, and(s, r), premise), step(3, and(or(p, s), and(s, r)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(148, speak, [and(implies(not(r), implies(p, p)), implies(implies(p, q), implies(r, q)))], [both, if, not, r, then, if, p, then, p, and, if, if, p, then, q, then, if, r, then, q]).
io(149, hear, [[q]], q).
io(150, check, [[step(1, not(p), premise), step(2, not(s), premise), step(3, and(not(p), not(s)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(151, speak, [not(not(and(s, q)))], [not, not, both, s, and, q]).
io(152, hear, [[either, not, s, or, p]], or(not(s), p)).
io(153, check, [[step(1, implies(p, q), premise), step(2, not(q), premise), step(3, and(implies(p, q), not(q)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(154, speak, [implies(implies(r, r), and(not(p), q))], [if, if, r, then, r, then, both, not, p, and, q]).
io(155, hear, [[q]], q).
io(156, check, [[step(1, implies(or(q, s), s), premise), step(2, or(q, s), premise), step(3, s, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(157, speak, [s], [s]).
io(158, hear, [[either, both, both, p, and, s, and, not, r, or, not, either, s, or, r]], or(and(and(p, s), not(r)), not(or(s, r)))).
io(159, check, [[step(1, implies(s, p), premise), step(2, s, premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(160, speak, [implies(not(p), implies(p, p))], [if, not, p, then, if, p, then, p]).
io(161, hear, [[not, if, not, r, then, q]], not(implies(not(r), q))).
io(162, check, [[step(1, r, premise), step(2, or(q, s), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(163, speak, [not(p)], [not, p]).
io(164, hear, [[q]], q).
io(165, check, [[step(1, and(q, r), premise), step(2, not(p), premise), step(3, and(and(q, r), not(p)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(166, speak, [r], [r]).
io(167, hear, [[p]], p).
io(168, check, [[step(1, or(p, q), premise), step(2, not(s), premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(169, speak, [s], [s]).
io(170, hear, [[not, not, s]], not(not(s))).
io(171, check, [[step(1, p, premise), step(2, or(r, r), premise), step(3, r, premise)]], error("existence_error(procedure,cases:check/2)")).
io(172, speak, [implies(not(r), and(q, p))], [if, not, r, then, both, q, and, p]).
io(173, hear, [[q, and, p]], fails).
io(174, check, [[step(1, implies(s, q), premise), step(2, and(r, q), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(175, speak, [or(q, s)], [either, q, or, s]).
io(176, hear, [[p]], p).
io(177, check, [[step(1, implies(and(s, p), p), premise), step(2, and(s, p), premise), step(3, p, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(178, speak, [implies(or(q, q), q)], [if, either, q, or, q, then, q]).
io(179, hear, [[if, both, s, and, s, then, both, p, and, p]], implies(and(s, s), and(p, p))).
io(180, check, [[step(1, or(s, s), premise), step(2, or(s, p), premise), step(3, and(or(s, s), or(s, p)), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(181, speak, [q], [q]).
io(182, hear, [[both, p, and, not, s]], and(p, not(s))).
io(183, check, [[step(1, implies(p, q), premise), step(2, p, premise), step(3, q, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(184, speak, [not(s)], [not, s]).
io(185, hear, [[p]], p).
io(186, check, [[step(1, or(r, r), premise), step(2, p, premise), step(3, r, premise)]], error("existence_error(procedure,cases:check/2)")).
io(187, speak, [or(or(and(p, s), s), or(not(r), not(r)))], [either, either, both, p, and, s, or, s, or, either, not, r, or, not, r]).
io(188, hear, [[if, both, s, and, q, then, either, s, or, s]], implies(and(s, q), or(s, s))).
io(189, check, [[step(1, and(s, p), premise), step(2, q, premise), step(3, and(and(s, p), q), and_intro(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(190, speak, [and(not(or(s, s)), p)], [both, not, either, s, or, s, and, p]).
io(191, hear, [[not, both, s, and, r]], not(and(s, r))).
io(192, check, [[step(1, or(r, p), premise), step(2, or(p, s), premise), step(3, p, premise)]], error("existence_error(procedure,cases:check/2)")).
io(193, speak, [q], [q]).
io(194, hear, [[]], fails).
io(195, check, [[step(1, or(s, p), premise), step(2, or(q, q), premise), step(3, q, premise)]], error("existence_error(procedure,cases:check/2)")).
io(196, speak, [and(not(or(p, p)), and(or(r, r), not(p)))], [both, not, either, p, or, p, and, both, either, r, or, r, and, not, p]).
io(197, hear, [[either, both, r, and, s, or, either, r, or, r]], or(and(r, s), or(r, r))).
io(198, check, [[step(1, s, premise), step(2, implies(p, q), premise), step(3, r, mp(1, 2))]], error("existence_error(procedure,cases:check/2)")).
io(199, speak, [p], [p]).
io(200, hear, [[not, not, if, q, then, p]], not(not(implies(q, p)))).
