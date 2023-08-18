--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 3);
INSERT INTO public.games VALUES (2, 8, 2);
INSERT INTO public.games VALUES (3, 598, 6);
INSERT INTO public.games VALUES (4, 499, 6);
INSERT INTO public.games VALUES (5, 641, 7);
INSERT INTO public.games VALUES (6, 99, 7);
INSERT INTO public.games VALUES (7, 417, 6);
INSERT INTO public.games VALUES (8, 16, 6);
INSERT INTO public.games VALUES (9, 1001, 6);
INSERT INTO public.games VALUES (10, 449, 8);
INSERT INTO public.games VALUES (11, 171, 8);
INSERT INTO public.games VALUES (12, 250, 9);
INSERT INTO public.games VALUES (13, 41, 9);
INSERT INTO public.games VALUES (14, 148, 8);
INSERT INTO public.games VALUES (15, 990, 8);
INSERT INTO public.games VALUES (16, 650, 8);
INSERT INTO public.games VALUES (17, 514, 10);
INSERT INTO public.games VALUES (18, 908, 10);
INSERT INTO public.games VALUES (19, 643, 11);
INSERT INTO public.games VALUES (20, 633, 11);
INSERT INTO public.games VALUES (21, 594, 10);
INSERT INTO public.games VALUES (22, 391, 10);
INSERT INTO public.games VALUES (23, 939, 10);
INSERT INTO public.games VALUES (24, 11, 3);
INSERT INTO public.games VALUES (25, 794, 12);
INSERT INTO public.games VALUES (26, 329, 12);
INSERT INTO public.games VALUES (27, 275, 13);
INSERT INTO public.games VALUES (28, 68, 13);
INSERT INTO public.games VALUES (29, 654, 12);
INSERT INTO public.games VALUES (30, 842, 12);
INSERT INTO public.games VALUES (31, 478, 12);
INSERT INTO public.games VALUES (32, 10, 3);
INSERT INTO public.games VALUES (33, 691, 14);
INSERT INTO public.games VALUES (34, 467, 14);
INSERT INTO public.games VALUES (35, 958, 15);
INSERT INTO public.games VALUES (36, 38, 15);
INSERT INTO public.games VALUES (37, 353, 14);
INSERT INTO public.games VALUES (38, 15, 14);
INSERT INTO public.games VALUES (39, 358, 14);
INSERT INTO public.games VALUES (40, 655, 16);
INSERT INTO public.games VALUES (41, 519, 16);
INSERT INTO public.games VALUES (42, 40, 17);
INSERT INTO public.games VALUES (43, 822, 17);
INSERT INTO public.games VALUES (44, 697, 16);
INSERT INTO public.games VALUES (45, 680, 16);
INSERT INTO public.games VALUES (46, 280, 16);
INSERT INTO public.games VALUES (47, 896, 18);
INSERT INTO public.games VALUES (48, 762, 18);
INSERT INTO public.games VALUES (49, 212, 19);
INSERT INTO public.games VALUES (50, 346, 19);
INSERT INTO public.games VALUES (51, 336, 18);
INSERT INTO public.games VALUES (52, 62, 18);
INSERT INTO public.games VALUES (53, 118, 18);
INSERT INTO public.games VALUES (54, 708, 20);
INSERT INTO public.games VALUES (55, 220, 20);
INSERT INTO public.games VALUES (56, 959, 21);
INSERT INTO public.games VALUES (57, 204, 21);
INSERT INTO public.games VALUES (58, 378, 20);
INSERT INTO public.games VALUES (59, 787, 20);
INSERT INTO public.games VALUES (60, 302, 20);
INSERT INTO public.games VALUES (61, 889, 22);
INSERT INTO public.games VALUES (62, 445, 22);
INSERT INTO public.games VALUES (63, 661, 23);
INSERT INTO public.games VALUES (64, 653, 23);
INSERT INTO public.games VALUES (65, 75, 22);
INSERT INTO public.games VALUES (66, 883, 22);
INSERT INTO public.games VALUES (67, 740, 22);
INSERT INTO public.games VALUES (68, 573, 24);
INSERT INTO public.games VALUES (69, 713, 24);
INSERT INTO public.games VALUES (70, 731, 25);
INSERT INTO public.games VALUES (71, 538, 25);
INSERT INTO public.games VALUES (72, 590, 24);
INSERT INTO public.games VALUES (73, 805, 24);
INSERT INTO public.games VALUES (74, 45, 24);
INSERT INTO public.games VALUES (75, 407, 26);
INSERT INTO public.games VALUES (76, 288, 26);
INSERT INTO public.games VALUES (77, 846, 27);
INSERT INTO public.games VALUES (78, 568, 27);
INSERT INTO public.games VALUES (79, 252, 26);
INSERT INTO public.games VALUES (80, 979, 26);
INSERT INTO public.games VALUES (81, 836, 26);
INSERT INTO public.games VALUES (82, 98, 28);
INSERT INTO public.games VALUES (83, 961, 28);
INSERT INTO public.games VALUES (84, 508, 29);
INSERT INTO public.games VALUES (85, 338, 29);
INSERT INTO public.games VALUES (86, 131, 28);
INSERT INTO public.games VALUES (87, 645, 28);
INSERT INTO public.games VALUES (88, 639, 28);
INSERT INTO public.games VALUES (89, 553, 30);
INSERT INTO public.games VALUES (90, 996, 30);
INSERT INTO public.games VALUES (91, 543, 31);
INSERT INTO public.games VALUES (92, 332, 31);
INSERT INTO public.games VALUES (93, 828, 30);
INSERT INTO public.games VALUES (94, 874, 30);
INSERT INTO public.games VALUES (95, 415, 30);
INSERT INTO public.games VALUES (96, 919, 32);
INSERT INTO public.games VALUES (97, 865, 32);
INSERT INTO public.games VALUES (98, 3, 33);
INSERT INTO public.games VALUES (99, 665, 33);
INSERT INTO public.games VALUES (100, 406, 32);
INSERT INTO public.games VALUES (101, 580, 32);
INSERT INTO public.games VALUES (102, 418, 32);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'nani');
INSERT INTO public.users VALUES (2, 'Nani');
INSERT INTO public.users VALUES (3, 'Aadi');
INSERT INTO public.users VALUES (4, 'user_1692347294383');
INSERT INTO public.users VALUES (5, 'user_1692347294382');
INSERT INTO public.users VALUES (6, 'user_1692348513860');
INSERT INTO public.users VALUES (7, 'user_1692348513859');
INSERT INTO public.users VALUES (8, 'user_1692348580827');
INSERT INTO public.users VALUES (9, 'user_1692348580826');
INSERT INTO public.users VALUES (10, 'user_1692348842546');
INSERT INTO public.users VALUES (11, 'user_1692348842545');
INSERT INTO public.users VALUES (12, 'user_1692349131233');
INSERT INTO public.users VALUES (13, 'user_1692349131232');
INSERT INTO public.users VALUES (14, 'user_1692349265890');
INSERT INTO public.users VALUES (15, 'user_1692349265889');
INSERT INTO public.users VALUES (16, 'user_1692349431193');
INSERT INTO public.users VALUES (17, 'user_1692349431192');
INSERT INTO public.users VALUES (18, 'user_1692349576129');
INSERT INTO public.users VALUES (19, 'user_1692349576128');
INSERT INTO public.users VALUES (20, 'user_1692349691239');
INSERT INTO public.users VALUES (21, 'user_1692349691238');
INSERT INTO public.users VALUES (22, 'user_1692350093653');
INSERT INTO public.users VALUES (23, 'user_1692350093652');
INSERT INTO public.users VALUES (24, 'user_1692350211956');
INSERT INTO public.users VALUES (25, 'user_1692350211955');
INSERT INTO public.users VALUES (26, 'user_1692350410150');
INSERT INTO public.users VALUES (27, 'user_1692350410149');
INSERT INTO public.users VALUES (28, 'user_1692350778001');
INSERT INTO public.users VALUES (29, 'user_1692350778000');
INSERT INTO public.users VALUES (30, 'user_1692350901550');
INSERT INTO public.users VALUES (31, 'user_1692350901549');
INSERT INTO public.users VALUES (32, 'user_1692351101009');
INSERT INTO public.users VALUES (33, 'user_1692351101008');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 102, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

