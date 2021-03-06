PGDMP     )                    x         
   advisorydb    12.1    12.1 T   {           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            |           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            }           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ~           1262    28572 
   advisorydb    DATABASE     �   CREATE DATABASE advisorydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE advisorydb;
                postgres    false            �            1259    28576    advisory    TABLE     
  CREATE TABLE public.advisory (
    advisory_id integer NOT NULL,
    answer_option_id integer NOT NULL,
    category_name character varying(100) DEFAULT ''::character varying NOT NULL,
    assessment_category character varying(100) DEFAULT ''::character varying NOT NULL,
    assessment_sub_category character varying(100),
    advisory_score integer NOT NULL,
    advisory_text character varying(512) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.advisory;
       public         heap    postgres    false            �            1259    28586    advisory_advisory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advisory_advisory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.advisory_advisory_id_seq;
       public          postgres    false    202                       0    0    advisory_advisory_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.advisory_advisory_id_seq OWNED BY public.advisory.advisory_id;
          public          postgres    false    203            �            1259    28588    advisory_group    TABLE     �   CREATE TABLE public.advisory_group (
    question_id integer NOT NULL,
    advisory_score integer NOT NULL,
    advisory_text character varying(100)
);
 "   DROP TABLE public.advisory_group;
       public         heap    postgres    false            �            1259    28591    advisory_score    TABLE     �   CREATE TABLE public.advisory_score (
    advisory_score_id integer NOT NULL,
    answer_options_id integer NOT NULL,
    advisory_score integer NOT NULL
);
 "   DROP TABLE public.advisory_score;
       public         heap    postgres    false            �            1259    28594 $   advisory_score_advisory_score_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advisory_score_advisory_score_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.advisory_score_advisory_score_id_seq;
       public          postgres    false    205            �           0    0 $   advisory_score_advisory_score_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.advisory_score_advisory_score_id_seq OWNED BY public.advisory_score.advisory_score_id;
          public          postgres    false    206            �            1259    28596    advisory_survey2    TABLE     
  CREATE TABLE public.advisory_survey2 (
    survey2_advisory_id integer NOT NULL,
    answer_options_survey1 integer,
    answer_options_survey2 integer,
    advisory_text character varying(500),
    advisory_url character varying(500),
    advisory_score integer
);
 $   DROP TABLE public.advisory_survey2;
       public         heap    postgres    false            �            1259    28602 (   advisory_survey2_survey2_advisory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advisory_survey2_survey2_advisory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.advisory_survey2_survey2_advisory_id_seq;
       public          postgres    false    207            �           0    0 (   advisory_survey2_survey2_advisory_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.advisory_survey2_survey2_advisory_id_seq OWNED BY public.advisory_survey2.survey2_advisory_id;
          public          postgres    false    208            �            1259    28604    ans_label_display_type    TABLE     |   CREATE TABLE public.ans_label_display_type (
    label_type character varying(50) DEFAULT ''::character varying NOT NULL
);
 *   DROP TABLE public.ans_label_display_type;
       public         heap    postgres    false            �            1259    28608    answer_options    TABLE     �  CREATE TABLE public.answer_options (
    answer_options_id integer NOT NULL,
    question_id integer NOT NULL,
    answer_text character varying(1024),
    answer_img_url character varying(1024),
    app_name character varying(100),
    display_sequence integer,
    free_text_flag character varying(1) DEFAULT 'N'::character varying,
    html_text character varying(2048),
    status character varying(1) DEFAULT 'A'::character varying
);
 "   DROP TABLE public.answer_options;
       public         heap    postgres    false            �            1259    28616 $   answer_options_answer_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answer_options_answer_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.answer_options_answer_options_id_seq;
       public          postgres    false    210            �           0    0 $   answer_options_answer_options_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.answer_options_answer_options_id_seq OWNED BY public.answer_options.answer_options_id;
          public          postgres    false    211            �            1259    28618    answer_type    TABLE     r   CREATE TABLE public.answer_type (
    answer_type character varying(50) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.answer_type;
       public         heap    postgres    false            �            1259    28622    app_versions    TABLE     V  CREATE TABLE public.app_versions (
    app_version_id integer NOT NULL,
    app_name character varying(100) DEFAULT ''::character varying NOT NULL,
    short_name character varying(100),
    vendor_name character varying(100) DEFAULT ''::character varying NOT NULL,
    version character varying(20) DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.app_versions;
       public         heap    postgres    false            �            1259    28628    app_versions_app_version_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_versions_app_version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.app_versions_app_version_id_seq;
       public          postgres    false    213            �           0    0    app_versions_app_version_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.app_versions_app_version_id_seq OWNED BY public.app_versions.app_version_id;
          public          postgres    false    214            �            1259    28630    applications    TABLE     x  CREATE TABLE public.applications (
    app_id integer NOT NULL,
    project_id integer NOT NULL,
    app_name character varying(45) DEFAULT ''::character varying NOT NULL,
    description character varying(1024) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone
);
     DROP TABLE public.applications;
       public         heap    postgres    false            �            1259    28639    applications_app_id_seq    SEQUENCE     �   CREATE SEQUENCE public.applications_app_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.applications_app_id_seq;
       public          postgres    false    215            �           0    0    applications_app_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.applications_app_id_seq OWNED BY public.applications.app_id;
          public          postgres    false    216            �            1259    28641 
   assessment    TABLE     r  CREATE TABLE public.assessment (
    assessment_id integer NOT NULL,
    survey_response_id integer NOT NULL,
    project_id integer NOT NULL,
    app_id integer NOT NULL,
    status character varying(100) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone
);
    DROP TABLE public.assessment;
       public         heap    postgres    false            �            1259    28646    assessment_assessment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assessment_assessment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.assessment_assessment_id_seq;
       public          postgres    false    217            �           0    0    assessment_assessment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.assessment_assessment_id_seq OWNED BY public.assessment.assessment_id;
          public          postgres    false    218            �            1259    28648    assessment_category    TABLE     G  CREATE TABLE public.assessment_category (
    assessment_category character varying(100) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT ''::character varying NOT NULL,
    title character varying(100) DEFAULT ''::character varying NOT NULL,
    parent_category character varying(100)
);
 '   DROP TABLE public.assessment_category;
       public         heap    postgres    false            �            1259    28657    assessment_details    TABLE     j  CREATE TABLE public.assessment_details (
    assessment_detail_id integer NOT NULL,
    assessment_id integer NOT NULL,
    advisory_id integer NOT NULL,
    category_name character varying(100) DEFAULT ''::character varying NOT NULL,
    assessment_category character varying(100),
    assessment_sub_category character varying(100),
    advisory_score integer NOT NULL,
    advisory_text character varying(512) DEFAULT ''::character varying NOT NULL,
    description character varying(2048),
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone
);
 &   DROP TABLE public.assessment_details;
       public         heap    postgres    false            �            1259    28666 +   assessment_details_assessment_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assessment_details_assessment_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.assessment_details_assessment_detail_id_seq;
       public          postgres    false    220            �           0    0 +   assessment_details_assessment_detail_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.assessment_details_assessment_detail_id_seq OWNED BY public.assessment_details.assessment_detail_id;
          public          postgres    false    221            �            1259    28668 
   auto_build    TABLE     �  CREATE TABLE public.auto_build (
    company_id integer NOT NULL,
    project_id integer NOT NULL,
    app_id integer NOT NULL,
    build_id integer NOT NULL,
    app_server character varying(45),
    code_repo character varying(45) DEFAULT ''::character varying NOT NULL,
    code_repo_path character varying(100) DEFAULT ''::character varying NOT NULL,
    code_type character varying(45),
    repo_type character varying(45),
    build_type character varying(45) DEFAULT ''::character varying NOT NULL,
    image_repo character varying(45) DEFAULT ''::character varying NOT NULL,
    build_status character varying(45),
    lastupdttm date,
    lastupdusrid character varying(45),
    logpath character varying(100),
    apptag character varying(100)
);
    DROP TABLE public.auto_build;
       public         heap    postgres    false            �            1259    28678    auto_build_build_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auto_build_build_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auto_build_build_id_seq;
       public          postgres    false    222            �           0    0    auto_build_build_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auto_build_build_id_seq OWNED BY public.auto_build.build_id;
          public          postgres    false    223            �            1259    28680    auto_deploy    TABLE     �  CREATE TABLE public.auto_deploy (
    company_id integer NOT NULL,
    project_id integer NOT NULL,
    app_id integer NOT NULL,
    deploy_id integer NOT NULL,
    env_name character varying(45) DEFAULT ''::character varying NOT NULL,
    cluster_name character varying(45) DEFAULT ''::character varying NOT NULL,
    repo_name character varying(45),
    image_name character varying(100),
    yaml_file bytea,
    yaml_path character varying(100)
);
    DROP TABLE public.auto_deploy;
       public         heap    postgres    false            �            1259    28688    auto_deploy_deploy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auto_deploy_deploy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.auto_deploy_deploy_id_seq;
       public          postgres    false    224            �           0    0    auto_deploy_deploy_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.auto_deploy_deploy_id_seq OWNED BY public.auto_deploy.deploy_id;
          public          postgres    false    225            �            1259    28690    category    TABLE     �   CREATE TABLE public.category (
    seqno integer NOT NULL,
    category_name character varying(100) DEFAULT ''::character varying NOT NULL,
    description character varying(256),
    visible character varying(1)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    28694    clair_reports    TABLE     �  CREATE TABLE public.clair_reports (
    id integer NOT NULL,
    project_id integer NOT NULL,
    app_id integer NOT NULL,
    app_name character varying(50) DEFAULT ''::character varying NOT NULL,
    clair_report_url character varying(255) DEFAULT ''::character varying NOT NULL,
    clair_file text,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
 !   DROP TABLE public.clair_reports;
       public         heap    postgres    false            �            1259    28703    clair_reports_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clair_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.clair_reports_id_seq;
       public          postgres    false    227            �           0    0    clair_reports_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.clair_reports_id_seq OWNED BY public.clair_reports.id;
          public          postgres    false    228            �            1259    28705    company    TABLE     @  CREATE TABLE public.company (
    company_id integer NOT NULL,
    company_name character varying(255) DEFAULT ''::character varying NOT NULL,
    address character varying(255) DEFAULT ''::character varying NOT NULL,
    address_2 character varying(255) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    state character varying(255) DEFAULT ''::character varying NOT NULL,
    country character varying(255) DEFAULT ''::character varying NOT NULL,
    zipcode character varying(12) DEFAULT ''::character varying NOT NULL,
    phone character varying(20) DEFAULT ''::character varying NOT NULL,
    fax character varying(20) DEFAULT ''::character varying NOT NULL,
    cell character varying(20) DEFAULT ''::character varying NOT NULL,
    company_url character varying(255) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    28723    company_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.company_company_id_seq;
       public          postgres    false    229            �           0    0    company_company_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.company_company_id_seq OWNED BY public.company.company_id;
          public          postgres    false    230            �            1259    28725    container_repository    TABLE     �  CREATE TABLE public.container_repository (
    repo_id integer NOT NULL,
    company_id integer,
    project_id integer,
    repo_server character varying(45) DEFAULT ''::character varying NOT NULL,
    repo_name character varying(45) DEFAULT ''::character varying NOT NULL,
    username character varying(45) DEFAULT ''::character varying NOT NULL,
    password character varying(45) DEFAULT ''::character varying NOT NULL
);
 (   DROP TABLE public.container_repository;
       public         heap    postgres    false            �            1259    28732     container_repository_repo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.container_repository_repo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.container_repository_repo_id_seq;
       public          postgres    false    231            �           0    0     container_repository_repo_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.container_repository_repo_id_seq OWNED BY public.container_repository.repo_id;
          public          postgres    false    232            �            1259    28734    environment    TABLE     �  CREATE TABLE public.environment (
    env_id integer NOT NULL,
    company_id integer,
    project_id integer,
    env_name character varying(45) DEFAULT ''::character varying NOT NULL,
    service_provider character varying(45) DEFAULT ''::character varying NOT NULL,
    username character varying(400),
    password character varying(200),
    json_file bytea,
    json_file_path character varying(100)
);
    DROP TABLE public.environment;
       public         heap    postgres    false            �            1259    28742    environment_env_id_seq    SEQUENCE     �   CREATE SEQUENCE public.environment_env_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.environment_env_id_seq;
       public          postgres    false    233            �           0    0    environment_env_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.environment_env_id_seq OWNED BY public.environment.env_id;
          public          postgres    false    234            �            1259    28744    file_upload_profile    TABLE     �  CREATE TABLE public.file_upload_profile (
    file_upload_profile_id integer NOT NULL,
    project_id integer NOT NULL,
    app_id integer NOT NULL,
    mtp_id integer NOT NULL,
    upload_service_id integer,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
 '   DROP TABLE public.file_upload_profile;
       public         heap    postgres    false            �            1259    28748 .   file_upload_profile_file_upload_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.file_upload_profile_file_upload_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.file_upload_profile_file_upload_profile_id_seq;
       public          postgres    false    235            �           0    0 .   file_upload_profile_file_upload_profile_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.file_upload_profile_file_upload_profile_id_seq OWNED BY public.file_upload_profile.file_upload_profile_id;
          public          postgres    false    236            �            1259    28750    file_upload_versions    TABLE     �  CREATE TABLE public.file_upload_versions (
    file_upload_versions_id integer NOT NULL,
    file_upload_profile_id integer NOT NULL,
    version character varying(20) DEFAULT ''::character varying NOT NULL,
    upload_url character varying(255),
    report_url character varying(255),
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
 (   DROP TABLE public.file_upload_versions;
       public         heap    postgres    false            �            1259    28758 0   file_upload_versions_file_upload_versions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.file_upload_versions_file_upload_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.file_upload_versions_file_upload_versions_id_seq;
       public          postgres    false    237            �           0    0 0   file_upload_versions_file_upload_versions_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.file_upload_versions_file_upload_versions_id_seq OWNED BY public.file_upload_versions.file_upload_versions_id;
          public          postgres    false    238            �            1259    28760    migration_toolkit_provider    TABLE     �  CREATE TABLE public.migration_toolkit_provider (
    mtp_id integer NOT NULL,
    provider_name character varying(100) DEFAULT ''::character varying NOT NULL,
    description character varying(100),
    command character varying(1028) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
 .   DROP TABLE public.migration_toolkit_provider;
       public         heap    postgres    false            �            1259    28769 %   migration_toolkit_provider_mtp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migration_toolkit_provider_mtp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.migration_toolkit_provider_mtp_id_seq;
       public          postgres    false    239            �           0    0 %   migration_toolkit_provider_mtp_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.migration_toolkit_provider_mtp_id_seq OWNED BY public.migration_toolkit_provider.mtp_id;
          public          postgres    false    240            �            1259    28771 
   pmd_report    TABLE     �  CREATE TABLE public.pmd_report (
    pmd_id integer NOT NULL,
    app_id integer NOT NULL,
    twelve_factor_name character varying(45) DEFAULT ''::character varying NOT NULL,
    source_of_report character varying(45),
    source_file character varying(512),
    violation_description character varying(512),
    rule_name character varying(128),
    line_number integer,
    priority integer,
    report_url character varying(512)
);
    DROP TABLE public.pmd_report;
       public         heap    postgres    false            �            1259    28778    pmd_report_pmd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pmd_report_pmd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pmd_report_pmd_id_seq;
       public          postgres    false    241            �           0    0    pmd_report_pmd_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pmd_report_pmd_id_seq OWNED BY public.pmd_report.pmd_id;
          public          postgres    false    242            �            1259    28780    projects    TABLE     -  CREATE TABLE public.projects (
    project_id integer NOT NULL,
    company_id integer NOT NULL,
    project_name character varying(255) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone
);
    DROP TABLE public.projects;
       public         heap    postgres    false            �            1259    28785    projects_project_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.projects_project_id_seq;
       public          postgres    false    243            �           0    0    projects_project_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects.project_id;
          public          postgres    false    244            �            1259    28787    question_type    TABLE     �   CREATE TABLE public.question_type (
    question_type character varying(50) DEFAULT ''::character varying NOT NULL,
    visible_flag character varying(1) DEFAULT 'Y'::character varying NOT NULL
);
 !   DROP TABLE public.question_type;
       public         heap    postgres    false            �            1259    28792 	   questions    TABLE     Y  CREATE TABLE public.questions (
    question_id integer NOT NULL,
    survey_id integer NOT NULL,
    question_type character varying(45) DEFAULT ''::character varying NOT NULL,
    category_name character varying(100) DEFAULT ''::character varying NOT NULL,
    question character varying(200) DEFAULT ''::character varying NOT NULL,
    level integer,
    display_number character varying(10) DEFAULT ''::character varying NOT NULL,
    depends_on_question integer,
    depends_on_answer_selection integer,
    visible character varying(1) DEFAULT 'Y'::character varying,
    answer_type character varying(50) DEFAULT 'SINGLE_SELECT'::character varying NOT NULL,
    label_type character varying(50) DEFAULT 'TEXT'::character varying NOT NULL,
    group_advisory_flag character varying(1) DEFAULT 'N'::character varying,
    type character varying(45)
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    28806    questions_question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.questions_question_id_seq;
       public          postgres    false    246            �           0    0    questions_question_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.questions_question_id_seq OWNED BY public.questions.question_id;
          public          postgres    false    247            �            1259    28808    role    TABLE     -  CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(60),
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    28812    role_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_role_id_seq;
       public          postgres    false    248            �           0    0    role_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;
          public          postgres    false    249            �            1259    28814    survey    TABLE     �  CREATE TABLE public.survey (
    survey_id integer NOT NULL,
    survey_title character varying(255) DEFAULT ''::character varying NOT NULL,
    description character varying(2048) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
    DROP TABLE public.survey;
       public         heap    postgres    false            �            1259    28823    survey_response    TABLE     �  CREATE TABLE public.survey_response (
    survey_response_id integer NOT NULL,
    app_id integer NOT NULL,
    survey_id integer NOT NULL,
    user_id integer NOT NULL,
    company_id integer NOT NULL,
    project_id integer NOT NULL,
    created_by character varying(45) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    status character varying(45) DEFAULT 'ACTIVE'::character varying NOT NULL
);
 #   DROP TABLE public.survey_response;
       public         heap    postgres    false            �            1259    28828    survey_response_answers    TABLE       CREATE TABLE public.survey_response_answers (
    survey_response_qid integer NOT NULL,
    answer_options_id integer NOT NULL,
    survey_response_id integer NOT NULL,
    free_text character varying(2048),
    app_version_id integer,
    created_on timestamp without time zone
);
 +   DROP TABLE public.survey_response_answers;
       public         heap    postgres    false            �            1259    28834    survey_response_q    TABLE     �   CREATE TABLE public.survey_response_q (
    survey_response_qid integer NOT NULL,
    survey_response_id integer NOT NULL,
    question_id integer NOT NULL,
    created_on timestamp without time zone,
    submitted_on timestamp without time zone
);
 %   DROP TABLE public.survey_response_q;
       public         heap    postgres    false            �            1259    28837 )   survey_response_q_survey_response_qid_seq    SEQUENCE     �   CREATE SEQUENCE public.survey_response_q_survey_response_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.survey_response_q_survey_response_qid_seq;
       public          postgres    false    253            �           0    0 )   survey_response_q_survey_response_qid_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.survey_response_q_survey_response_qid_seq OWNED BY public.survey_response_q.survey_response_qid;
          public          postgres    false    254            �            1259    28839 &   survey_response_survey_response_id_seq    SEQUENCE     �   CREATE SEQUENCE public.survey_response_survey_response_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.survey_response_survey_response_id_seq;
       public          postgres    false    251            �           0    0 &   survey_response_survey_response_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.survey_response_survey_response_id_seq OWNED BY public.survey_response.survey_response_id;
          public          postgres    false    255                        1259    28841    survey_survey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.survey_survey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.survey_survey_id_seq;
       public          postgres    false    250            �           0    0    survey_survey_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.survey_survey_id_seq OWNED BY public.survey.survey_id;
          public          postgres    false    256                       1259    28843    twelve_factor_advisory    TABLE     !  CREATE TABLE public.twelve_factor_advisory (
    twelve_factor_id integer NOT NULL,
    twelve_factor_name character varying(128) DEFAULT ''::character varying NOT NULL,
    expectation character varying(128),
    source character varying(128),
    advisory_text character varying(512)
);
 *   DROP TABLE public.twelve_factor_advisory;
       public         heap    postgres    false                       1259    28850    twelve_factor_pmd_analysis    TABLE     8  CREATE TABLE public.twelve_factor_pmd_analysis (
    app_id integer,
    twelve_factor_id integer NOT NULL,
    twelve_factor_name character varying(45),
    source character varying(45),
    answer_text character varying(1028),
    advisory_text character varying(512),
    report_url character varying(128)
);
 .   DROP TABLE public.twelve_factor_pmd_analysis;
       public         heap    postgres    false                       1259    28856 /   twelve_factor_pmd_analysis_twelve_factor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.twelve_factor_pmd_analysis_twelve_factor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.twelve_factor_pmd_analysis_twelve_factor_id_seq;
       public          postgres    false    258            �           0    0 /   twelve_factor_pmd_analysis_twelve_factor_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.twelve_factor_pmd_analysis_twelve_factor_id_seq OWNED BY public.twelve_factor_pmd_analysis.twelve_factor_id;
          public          postgres    false    259                       1259    28858    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    role_id integer,
    company_id integer,
    username character varying(100) DEFAULT ''::character varying NOT NULL,
    fullname character varying(128) DEFAULT ''::character varying NOT NULL,
    password character varying(128) DEFAULT ''::character varying NOT NULL,
    company_email character varying(128) DEFAULT ''::character varying NOT NULL,
    email_validated_flag character varying(1) DEFAULT 'N'::character varying NOT NULL,
    phone character varying(20) DEFAULT ''::character varying NOT NULL,
    fax character varying(20) DEFAULT ''::character varying NOT NULL,
    cell character varying(20) DEFAULT ''::character varying NOT NULL,
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false                       1259    28873    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    260            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    261                       1259    29639    v_12_factor_advisory    VIEW       CREATE VIEW public.v_12_factor_advisory AS
 SELECT f.app_id,
    b.twelve_factor_id,
    b.twelve_factor_name,
    'Assessment Questionnaire'::bpchar AS source,
    e.answer_text,
    ''::bpchar AS advisory_text,
    ''::bpchar AS report_url
   FROM public.questions a,
    public.twelve_factor_advisory b,
    public.survey_response_answers c,
    public.survey_response_q d,
    public.answer_options e,
    public.survey_response f
  WHERE (((b.twelve_factor_name)::text = (a.type)::text) AND (c.survey_response_qid = d.survey_response_qid) AND (a.question_id = d.question_id) AND (c.answer_options_id = e.answer_options_id) AND (f.survey_response_id = c.survey_response_id))
UNION
 SELECT twelve_factor_pmd_analysis.app_id,
    twelve_factor_pmd_analysis.twelve_factor_id,
    twelve_factor_pmd_analysis.twelve_factor_name,
    twelve_factor_pmd_analysis.source,
    twelve_factor_pmd_analysis.answer_text,
    twelve_factor_pmd_analysis.advisory_text,
    twelve_factor_pmd_analysis.report_url
   FROM public.twelve_factor_pmd_analysis;
 '   DROP VIEW public.v_12_factor_advisory;
       public          postgres    false    252    252    252    251    251    246    246    210    210    258    258    258    258    258    258    258    257    257    253    253                       1259    29644    v_12factor_compliance    VIEW     {  CREATE VIEW public.v_12factor_compliance AS
 SELECT a.app_id,
    f.type,
    ((sum(d.advisory_score) / (count(f.type) * 3)) * 100) AS score
   FROM public.survey_response a,
    public.survey_response_q b,
    public.survey_response_answers c,
    public.advisory d,
    public.questions f
  WHERE ((a.survey_response_id = b.survey_response_id) AND (b.survey_response_qid = c.survey_response_qid) AND (c.answer_options_id = d.answer_option_id) AND (b.question_id = f.question_id) AND ((f.category_name)::bpchar = '12 Factor Compatibility'::bpchar) AND ((d.category_name)::text = (f.category_name)::text))
  GROUP BY a.app_id, f.type;
 (   DROP VIEW public.v_12factor_compliance;
       public          postgres    false    253    202    202    202    246    246    246    251    251    252    252    253    253                       1259    29649    v_12factor_report    VIEW     $  CREATE VIEW public.v_12factor_report AS
 SELECT f.app_id,
    b.twelve_factor_name,
    'Assessment Questionnaire'::bpchar AS source_of_report,
    'NA'::bpchar AS source_file,
    e.answer_text AS violation_description,
    'NA'::bpchar AS rule_name,
    0 AS line_number,
    0 AS priority,
    'NA'::bpchar AS report_url
   FROM public.questions a,
    public.twelve_factor_advisory b,
    public.survey_response_answers c,
    public.survey_response_q d,
    public.answer_options e,
    public.survey_response f
  WHERE (((b.twelve_factor_name)::text = (a.type)::text) AND (c.survey_response_qid = d.survey_response_qid) AND (a.question_id = d.question_id) AND (c.answer_options_id = e.answer_options_id) AND (f.survey_response_id = c.survey_response_id))
UNION
 SELECT pmd_report.app_id,
    pmd_report.twelve_factor_name,
    pmd_report.source_of_report,
    pmd_report.source_file,
    pmd_report.violation_description,
    pmd_report.rule_name,
    pmd_report.line_number,
    pmd_report.priority,
    pmd_report.report_url
   FROM public.pmd_report;
 $   DROP VIEW public.v_12factor_report;
       public          postgres    false    210    210    257    253    253    252    252    252    251    251    246    246    241    241    241    241    241    241    241    241    241                       1259    29387    v_assessment_status    VIEW     !  CREATE VIEW public.v_assessment_status AS
 SELECT a.company_id,
    a.project_name,
        CASE c.status
            WHEN 'ACTIVE'::bpchar THEN 'Initiated'::text
            ELSE 'Completed'::text
        END AS app_status,
    count(0) AS total
   FROM public.projects a,
    public.survey_response c
  WHERE ((a.company_id = c.company_id) AND (a.project_id = c.project_id))
  GROUP BY a.company_id, a.project_name,
        CASE c.status
            WHEN 'ACTIVE'::bpchar THEN 'Initiated'::text
            ELSE 'Completed'::text
        END;
 &   DROP VIEW public.v_assessment_status;
       public          postgres    false    243    243    243    251    251    251                       1259    29345    v_build_status    VIEW     �   CREATE VIEW public.v_build_status AS
 SELECT a.company_id,
    a.project_name,
    count(0) AS total
   FROM public.projects a,
    public.auto_build b
  WHERE (a.project_id = b.project_id)
  GROUP BY a.company_id, a.project_name;
 !   DROP VIEW public.v_build_status;
       public          postgres    false    243    243    222    243            
           1259    29334    v_company_portfolio    VIEW     �   CREATE VIEW public.v_company_portfolio AS
 SELECT a.company_id,
    a.project_name,
    count(0) AS totalapps
   FROM public.projects a,
    public.applications b
  WHERE (a.project_id = b.project_id)
  GROUP BY a.company_id, a.project_name;
 &   DROP VIEW public.v_company_portfolio;
       public          postgres    false    243    243    215    243                       1259    29354    v_deploy_status    VIEW     �   CREATE VIEW public.v_deploy_status AS
 SELECT a.company_id,
    a.project_name,
    count(0) AS total
   FROM public.projects a,
    public.auto_deploy b
  WHERE (a.project_id = b.project_id)
  GROUP BY a.company_id, a.project_name;
 "   DROP VIEW public.v_deploy_status;
       public          postgres    false    224    243    243    243                       1259    36786    v_platform_fitment_application    VIEW     '  CREATE VIEW public.v_platform_fitment_application AS
 SELECT c.project_id,
    c.app_id,
    d.app_name,
    a.answer_options_survey2,
    e.html_text AS platform,
    (((((sum(a.advisory_score))::numeric * 1.0) / ((count(a.advisory_score) * 3))::numeric) * 1.0) * (100)::numeric) AS percentage
   FROM public.advisory_survey2 a,
    public.survey_response_answers b,
    public.assessment c,
    public.applications d,
    public.answer_options e
  WHERE ((a.answer_options_survey1 = b.answer_options_id) AND (c.survey_response_id = b.survey_response_id) AND (c.app_id = d.app_id) AND (a.answer_options_survey2 = e.answer_options_id) AND ((e.status)::bpchar = 'A'::bpchar))
  GROUP BY a.answer_options_survey2, c.project_id, c.app_id, d.app_name, e.html_text
  ORDER BY c.app_id, a.answer_options_survey2;
 1   DROP VIEW public.v_platform_fitment_application;
       public          postgres    false    207    207    207    210    210    210    215    215    217    217    217    252    252                       1259    36776    v_platform_fitment_project    VIEW     �  CREATE VIEW public.v_platform_fitment_project AS
 SELECT c.project_id,
    a.answer_options_survey2,
    d.html_text AS platform,
    (((((sum(a.advisory_score))::numeric * 1.0) / ((count(a.advisory_score) * 3))::numeric) * 1.0) * (100)::numeric) AS percentage
   FROM public.advisory_survey2 a,
    public.survey_response_answers b,
    public.assessment c,
    public.answer_options d
  WHERE ((a.answer_options_survey1 = b.answer_options_id) AND (c.survey_response_id = b.survey_response_id) AND (a.answer_options_survey2 = d.answer_options_id) AND ((d.status)::bpchar = 'A'::bpchar))
  GROUP BY a.answer_options_survey2, c.project_id, d.html_text
  ORDER BY a.answer_options_survey2;
 -   DROP VIEW public.v_platform_fitment_project;
       public          postgres    false    217    210    210    210    207    207    207    252    252    217                       1259    36766    v_total_score_by_appname    VIEW     �  CREATE VIEW public.v_total_score_by_appname AS
 SELECT b.project_id,
    c.app_name,
    (((((sum(a.advisory_score))::numeric * 1.0) / ((count(a.advisory_score) * 3))::numeric) * 1.0) * (100)::numeric) AS percentage
   FROM public.assessment_details a,
    public.assessment b,
    public.applications c,
    public.category d
  WHERE ((a.assessment_id = b.assessment_id) AND (b.app_id = c.app_id) AND ((a.category_name)::text = (d.category_name)::text))
  GROUP BY b.project_id, c.app_name;
 +   DROP VIEW public.v_total_score_by_appname;
       public          postgres    false    215    226    220    220    220    217    217    217    215                       1259    36781    v_total_score_by_categoryname    VIEW     �  CREATE VIEW public.v_total_score_by_categoryname AS
 SELECT b.project_id,
    a.category_name,
    (((((sum(a.advisory_score))::numeric * 1.0) / ((count(a.advisory_score) * 3))::numeric) * 1.0) * (100)::numeric) AS percentage
   FROM public.assessment_details a,
    public.assessment b,
    public.applications c,
    public.category d
  WHERE ((a.assessment_id = b.assessment_id) AND (b.app_id = c.app_id) AND ((a.category_name)::text = (d.category_name)::text))
  GROUP BY a.category_name, b.project_id;
 0   DROP VIEW public.v_total_score_by_categoryname;
       public          postgres    false    220    220    217    217    217    215    220    226                       1259    28875    vendor_apps    TABLE     �   CREATE TABLE public.vendor_apps (
    app_name character varying(100) DEFAULT ''::character varying NOT NULL,
    short_name character varying(100),
    vendor_name character varying(100) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.vendor_apps;
       public         heap    postgres    false                       1259    28880    vendors    TABLE     o   CREATE TABLE public.vendors (
    vendor_name character varying(100) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.vendors;
       public         heap    postgres    false                       1259    28884    vm_to_docker    TABLE     f  CREATE TABLE public.vm_to_docker (
    id integer NOT NULL,
    project_name character varying(50) DEFAULT ''::character varying NOT NULL,
    app_name character varying(50) DEFAULT ''::character varying NOT NULL,
    repo_name character varying(128) DEFAULT ''::character varying NOT NULL,
    vmdk_file_path character varying(512) DEFAULT ''::character varying NOT NULL,
    status character varying(50),
    created_by character varying(128) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone,
    updated_by character varying(128),
    updated_on timestamp without time zone
);
     DROP TABLE public.vm_to_docker;
       public         heap    postgres    false            	           1259    28895    vm_to_docker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vm_to_docker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vm_to_docker_id_seq;
       public          postgres    false    264            �           0    0    vm_to_docker_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vm_to_docker_id_seq OWNED BY public.vm_to_docker.id;
          public          postgres    false    265            �           2604    28897    advisory advisory_id    DEFAULT     |   ALTER TABLE ONLY public.advisory ALTER COLUMN advisory_id SET DEFAULT nextval('public.advisory_advisory_id_seq'::regclass);
 C   ALTER TABLE public.advisory ALTER COLUMN advisory_id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    28898     advisory_score advisory_score_id    DEFAULT     �   ALTER TABLE ONLY public.advisory_score ALTER COLUMN advisory_score_id SET DEFAULT nextval('public.advisory_score_advisory_score_id_seq'::regclass);
 O   ALTER TABLE public.advisory_score ALTER COLUMN advisory_score_id DROP DEFAULT;
       public          postgres    false    206    205            �           2604    28899 $   advisory_survey2 survey2_advisory_id    DEFAULT     �   ALTER TABLE ONLY public.advisory_survey2 ALTER COLUMN survey2_advisory_id SET DEFAULT nextval('public.advisory_survey2_survey2_advisory_id_seq'::regclass);
 S   ALTER TABLE public.advisory_survey2 ALTER COLUMN survey2_advisory_id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    28900     answer_options answer_options_id    DEFAULT     �   ALTER TABLE ONLY public.answer_options ALTER COLUMN answer_options_id SET DEFAULT nextval('public.answer_options_answer_options_id_seq'::regclass);
 O   ALTER TABLE public.answer_options ALTER COLUMN answer_options_id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    28901    app_versions app_version_id    DEFAULT     �   ALTER TABLE ONLY public.app_versions ALTER COLUMN app_version_id SET DEFAULT nextval('public.app_versions_app_version_id_seq'::regclass);
 J   ALTER TABLE public.app_versions ALTER COLUMN app_version_id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    28902    applications app_id    DEFAULT     z   ALTER TABLE ONLY public.applications ALTER COLUMN app_id SET DEFAULT nextval('public.applications_app_id_seq'::regclass);
 B   ALTER TABLE public.applications ALTER COLUMN app_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    28903    assessment assessment_id    DEFAULT     �   ALTER TABLE ONLY public.assessment ALTER COLUMN assessment_id SET DEFAULT nextval('public.assessment_assessment_id_seq'::regclass);
 G   ALTER TABLE public.assessment ALTER COLUMN assessment_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    28904 '   assessment_details assessment_detail_id    DEFAULT     �   ALTER TABLE ONLY public.assessment_details ALTER COLUMN assessment_detail_id SET DEFAULT nextval('public.assessment_details_assessment_detail_id_seq'::regclass);
 V   ALTER TABLE public.assessment_details ALTER COLUMN assessment_detail_id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    28905    auto_build build_id    DEFAULT     z   ALTER TABLE ONLY public.auto_build ALTER COLUMN build_id SET DEFAULT nextval('public.auto_build_build_id_seq'::regclass);
 B   ALTER TABLE public.auto_build ALTER COLUMN build_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    28906    auto_deploy deploy_id    DEFAULT     ~   ALTER TABLE ONLY public.auto_deploy ALTER COLUMN deploy_id SET DEFAULT nextval('public.auto_deploy_deploy_id_seq'::regclass);
 D   ALTER TABLE public.auto_deploy ALTER COLUMN deploy_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    28907    clair_reports id    DEFAULT     t   ALTER TABLE ONLY public.clair_reports ALTER COLUMN id SET DEFAULT nextval('public.clair_reports_id_seq'::regclass);
 ?   ALTER TABLE public.clair_reports ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    28908    company company_id    DEFAULT     x   ALTER TABLE ONLY public.company ALTER COLUMN company_id SET DEFAULT nextval('public.company_company_id_seq'::regclass);
 A   ALTER TABLE public.company ALTER COLUMN company_id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    28909    container_repository repo_id    DEFAULT     �   ALTER TABLE ONLY public.container_repository ALTER COLUMN repo_id SET DEFAULT nextval('public.container_repository_repo_id_seq'::regclass);
 K   ALTER TABLE public.container_repository ALTER COLUMN repo_id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    28910    environment env_id    DEFAULT     x   ALTER TABLE ONLY public.environment ALTER COLUMN env_id SET DEFAULT nextval('public.environment_env_id_seq'::regclass);
 A   ALTER TABLE public.environment ALTER COLUMN env_id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    28911 *   file_upload_profile file_upload_profile_id    DEFAULT     �   ALTER TABLE ONLY public.file_upload_profile ALTER COLUMN file_upload_profile_id SET DEFAULT nextval('public.file_upload_profile_file_upload_profile_id_seq'::regclass);
 Y   ALTER TABLE public.file_upload_profile ALTER COLUMN file_upload_profile_id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    28912 ,   file_upload_versions file_upload_versions_id    DEFAULT     �   ALTER TABLE ONLY public.file_upload_versions ALTER COLUMN file_upload_versions_id SET DEFAULT nextval('public.file_upload_versions_file_upload_versions_id_seq'::regclass);
 [   ALTER TABLE public.file_upload_versions ALTER COLUMN file_upload_versions_id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    28913 !   migration_toolkit_provider mtp_id    DEFAULT     �   ALTER TABLE ONLY public.migration_toolkit_provider ALTER COLUMN mtp_id SET DEFAULT nextval('public.migration_toolkit_provider_mtp_id_seq'::regclass);
 P   ALTER TABLE public.migration_toolkit_provider ALTER COLUMN mtp_id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    28914    pmd_report pmd_id    DEFAULT     v   ALTER TABLE ONLY public.pmd_report ALTER COLUMN pmd_id SET DEFAULT nextval('public.pmd_report_pmd_id_seq'::regclass);
 @   ALTER TABLE public.pmd_report ALTER COLUMN pmd_id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    28915    projects project_id    DEFAULT     z   ALTER TABLE ONLY public.projects ALTER COLUMN project_id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);
 B   ALTER TABLE public.projects ALTER COLUMN project_id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    28916    questions question_id    DEFAULT     ~   ALTER TABLE ONLY public.questions ALTER COLUMN question_id SET DEFAULT nextval('public.questions_question_id_seq'::regclass);
 D   ALTER TABLE public.questions ALTER COLUMN question_id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    28917    role role_id    DEFAULT     l   ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);
 ;   ALTER TABLE public.role ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    249    248            �           2604    28918    survey survey_id    DEFAULT     t   ALTER TABLE ONLY public.survey ALTER COLUMN survey_id SET DEFAULT nextval('public.survey_survey_id_seq'::regclass);
 ?   ALTER TABLE public.survey ALTER COLUMN survey_id DROP DEFAULT;
       public          postgres    false    256    250            �           2604    28919 "   survey_response survey_response_id    DEFAULT     �   ALTER TABLE ONLY public.survey_response ALTER COLUMN survey_response_id SET DEFAULT nextval('public.survey_response_survey_response_id_seq'::regclass);
 Q   ALTER TABLE public.survey_response ALTER COLUMN survey_response_id DROP DEFAULT;
       public          postgres    false    255    251            �           2604    28920 %   survey_response_q survey_response_qid    DEFAULT     �   ALTER TABLE ONLY public.survey_response_q ALTER COLUMN survey_response_qid SET DEFAULT nextval('public.survey_response_q_survey_response_qid_seq'::regclass);
 T   ALTER TABLE public.survey_response_q ALTER COLUMN survey_response_qid DROP DEFAULT;
       public          postgres    false    254    253            �           2604    28921 +   twelve_factor_pmd_analysis twelve_factor_id    DEFAULT     �   ALTER TABLE ONLY public.twelve_factor_pmd_analysis ALTER COLUMN twelve_factor_id SET DEFAULT nextval('public.twelve_factor_pmd_analysis_twelve_factor_id_seq'::regclass);
 Z   ALTER TABLE public.twelve_factor_pmd_analysis ALTER COLUMN twelve_factor_id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    28922    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    261    260            �           2604    28923    vm_to_docker id    DEFAULT     r   ALTER TABLE ONLY public.vm_to_docker ALTER COLUMN id SET DEFAULT nextval('public.vm_to_docker_id_seq'::regclass);
 >   ALTER TABLE public.vm_to_docker ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            9          0    28576    advisory 
   TABLE DATA           �   COPY public.advisory (advisory_id, answer_option_id, category_name, assessment_category, assessment_sub_category, advisory_score, advisory_text, created_by) FROM stdin;
    public          postgres    false    202   6�      ;          0    28588    advisory_group 
   TABLE DATA           T   COPY public.advisory_group (question_id, advisory_score, advisory_text) FROM stdin;
    public          postgres    false    204   4�      <          0    28591    advisory_score 
   TABLE DATA           ^   COPY public.advisory_score (advisory_score_id, answer_options_id, advisory_score) FROM stdin;
    public          postgres    false    205   ��      >          0    28596    advisory_survey2 
   TABLE DATA           �   COPY public.advisory_survey2 (survey2_advisory_id, answer_options_survey1, answer_options_survey2, advisory_text, advisory_url, advisory_score) FROM stdin;
    public          postgres    false    207   ��      @          0    28604    ans_label_display_type 
   TABLE DATA           <   COPY public.ans_label_display_type (label_type) FROM stdin;
    public          postgres    false    209   i
      A          0    28608    answer_options 
   TABLE DATA           �   COPY public.answer_options (answer_options_id, question_id, answer_text, answer_img_url, app_name, display_sequence, free_text_flag, html_text, status) FROM stdin;
    public          postgres    false    210   �
      C          0    28618    answer_type 
   TABLE DATA           2   COPY public.answer_type (answer_type) FROM stdin;
    public          postgres    false    212   �      D          0    28622    app_versions 
   TABLE DATA           b   COPY public.app_versions (app_version_id, app_name, short_name, vendor_name, version) FROM stdin;
    public          postgres    false    213         F          0    28630    applications 
   TABLE DATA           i   COPY public.applications (app_id, project_id, app_name, description, created_by, created_on) FROM stdin;
    public          postgres    false    215   �      H          0    28641 
   assessment 
   TABLE DATA           {   COPY public.assessment (assessment_id, survey_response_id, project_id, app_id, status, created_by, created_on) FROM stdin;
    public          postgres    false    217   \      J          0    28648    assessment_category 
   TABLE DATA           g   COPY public.assessment_category (assessment_category, description, title, parent_category) FROM stdin;
    public          postgres    false    219         K          0    28657    assessment_details 
   TABLE DATA           �   COPY public.assessment_details (assessment_detail_id, assessment_id, advisory_id, category_name, assessment_category, assessment_sub_category, advisory_score, advisory_text, description, created_by, created_on) FROM stdin;
    public          postgres    false    220   �      M          0    28668 
   auto_build 
   TABLE DATA           �   COPY public.auto_build (company_id, project_id, app_id, build_id, app_server, code_repo, code_repo_path, code_type, repo_type, build_type, image_repo, build_status, lastupdttm, lastupdusrid, logpath, apptag) FROM stdin;
    public          postgres    false    222   o.      O          0    28680    auto_deploy 
   TABLE DATA           �   COPY public.auto_deploy (company_id, project_id, app_id, deploy_id, env_name, cluster_name, repo_name, image_name, yaml_file, yaml_path) FROM stdin;
    public          postgres    false    224   �/      Q          0    28690    category 
   TABLE DATA           N   COPY public.category (seqno, category_name, description, visible) FROM stdin;
    public          postgres    false    226   �0      R          0    28694    clair_reports 
   TABLE DATA           �   COPY public.clair_reports (id, project_id, app_id, app_name, clair_report_url, clair_file, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    227   �1      T          0    28705    company 
   TABLE DATA           �   COPY public.company (company_id, company_name, address, address_2, city, state, country, zipcode, phone, fax, cell, company_url, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    229   �>      V          0    28725    container_repository 
   TABLE DATA           {   COPY public.container_repository (repo_id, company_id, project_id, repo_server, repo_name, username, password) FROM stdin;
    public          postgres    false    231   }@      X          0    28734    environment 
   TABLE DATA           �   COPY public.environment (env_id, company_id, project_id, env_name, service_provider, username, password, json_file, json_file_path) FROM stdin;
    public          postgres    false    233   �@      Z          0    28744    file_upload_profile 
   TABLE DATA           �   COPY public.file_upload_profile (file_upload_profile_id, project_id, app_id, mtp_id, upload_service_id, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    235   P      \          0    28750    file_upload_versions 
   TABLE DATA           �   COPY public.file_upload_versions (file_upload_versions_id, file_upload_profile_id, version, upload_url, report_url, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    237   �P      ^          0    28760    migration_toolkit_provider 
   TABLE DATA           �   COPY public.migration_toolkit_provider (mtp_id, provider_name, description, command, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    239   YS      `          0    28771 
   pmd_report 
   TABLE DATA           �   COPY public.pmd_report (pmd_id, app_id, twelve_factor_name, source_of_report, source_file, violation_description, rule_name, line_number, priority, report_url) FROM stdin;
    public          postgres    false    241   �S      b          0    28780    projects 
   TABLE DATA           `   COPY public.projects (project_id, company_id, project_name, created_by, created_on) FROM stdin;
    public          postgres    false    243   �W      d          0    28787    question_type 
   TABLE DATA           D   COPY public.question_type (question_type, visible_flag) FROM stdin;
    public          postgres    false    245   pX      e          0    28792 	   questions 
   TABLE DATA           �   COPY public.questions (question_id, survey_id, question_type, category_name, question, level, display_number, depends_on_question, depends_on_answer_selection, visible, answer_type, label_type, group_advisory_flag, type) FROM stdin;
    public          postgres    false    246   �X      g          0    28808    role 
   TABLE DATA           b   COPY public.role (role_id, role_name, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    248   7]      i          0    28814    survey 
   TABLE DATA           v   COPY public.survey (survey_id, survey_title, description, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    250   �]      j          0    28823    survey_response 
   TABLE DATA           �   COPY public.survey_response (survey_response_id, app_id, survey_id, user_id, company_id, project_id, created_by, created_on, status) FROM stdin;
    public          postgres    false    251   �]      k          0    28828    survey_response_answers 
   TABLE DATA           �   COPY public.survey_response_answers (survey_response_qid, answer_options_id, survey_response_id, free_text, app_version_id, created_on) FROM stdin;
    public          postgres    false    252   
`      l          0    28834    survey_response_q 
   TABLE DATA           {   COPY public.survey_response_q (survey_response_qid, survey_response_id, question_id, created_on, submitted_on) FROM stdin;
    public          postgres    false    253   �b      p          0    28843    twelve_factor_advisory 
   TABLE DATA           z   COPY public.twelve_factor_advisory (twelve_factor_id, twelve_factor_name, expectation, source, advisory_text) FROM stdin;
    public          postgres    false    257   �f      q          0    28850    twelve_factor_pmd_analysis 
   TABLE DATA           �   COPY public.twelve_factor_pmd_analysis (app_id, twelve_factor_id, twelve_factor_name, source, answer_text, advisory_text, report_url) FROM stdin;
    public          postgres    false    258   �g      s          0    28858    users 
   TABLE DATA           �   COPY public.users (user_id, role_id, company_id, username, fullname, password, company_email, email_validated_flag, phone, fax, cell, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    260   �g      u          0    28875    vendor_apps 
   TABLE DATA           H   COPY public.vendor_apps (app_name, short_name, vendor_name) FROM stdin;
    public          postgres    false    262   �h      v          0    28880    vendors 
   TABLE DATA           .   COPY public.vendors (vendor_name) FROM stdin;
    public          postgres    false    263   �i      w          0    28884    vm_to_docker 
   TABLE DATA           �   COPY public.vm_to_docker (id, project_name, app_name, repo_name, vmdk_file_path, status, created_by, created_on, updated_by, updated_on) FROM stdin;
    public          postgres    false    264   �i      �           0    0    advisory_advisory_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.advisory_advisory_id_seq', 128, true);
          public          postgres    false    203            �           0    0 $   advisory_score_advisory_score_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.advisory_score_advisory_score_id_seq', 82, true);
          public          postgres    false    206            �           0    0 (   advisory_survey2_survey2_advisory_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.advisory_survey2_survey2_advisory_id_seq', 51, true);
          public          postgres    false    208            �           0    0 $   answer_options_answer_options_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.answer_options_answer_options_id_seq', 51, true);
          public          postgres    false    211            �           0    0    app_versions_app_version_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.app_versions_app_version_id_seq', 28, true);
          public          postgres    false    214            �           0    0    applications_app_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.applications_app_id_seq', 64, true);
          public          postgres    false    216            �           0    0    assessment_assessment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.assessment_assessment_id_seq', 51, true);
          public          postgres    false    218            �           0    0 +   assessment_details_assessment_detail_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.assessment_details_assessment_detail_id_seq', 455, true);
          public          postgres    false    221            �           0    0    auto_build_build_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auto_build_build_id_seq', 41, true);
          public          postgres    false    223            �           0    0    auto_deploy_deploy_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.auto_deploy_deploy_id_seq', 22, true);
          public          postgres    false    225            �           0    0    clair_reports_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.clair_reports_id_seq', 4, true);
          public          postgres    false    228            �           0    0    company_company_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.company_company_id_seq', 16, true);
          public          postgres    false    230            �           0    0     container_repository_repo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.container_repository_repo_id_seq', 10, true);
          public          postgres    false    232            �           0    0    environment_env_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.environment_env_id_seq', 63, true);
          public          postgres    false    234            �           0    0 .   file_upload_profile_file_upload_profile_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.file_upload_profile_file_upload_profile_id_seq', 34, true);
          public          postgres    false    236            �           0    0 0   file_upload_versions_file_upload_versions_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.file_upload_versions_file_upload_versions_id_seq', 54, true);
          public          postgres    false    238            �           0    0 %   migration_toolkit_provider_mtp_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.migration_toolkit_provider_mtp_id_seq', 7, true);
          public          postgres    false    240            �           0    0    pmd_report_pmd_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pmd_report_pmd_id_seq', 118, true);
          public          postgres    false    242            �           0    0    projects_project_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.projects_project_id_seq', 16, true);
          public          postgres    false    244            �           0    0    questions_question_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.questions_question_id_seq', 44, true);
          public          postgres    false    247            �           0    0    role_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_role_id_seq', 4, true);
          public          postgres    false    249            �           0    0 )   survey_response_q_survey_response_qid_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.survey_response_q_survey_response_qid_seq', 264, true);
          public          postgres    false    254            �           0    0 &   survey_response_survey_response_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.survey_response_survey_response_id_seq', 92, true);
          public          postgres    false    255            �           0    0    survey_survey_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.survey_survey_id_seq', 3, true);
          public          postgres    false    256            �           0    0 /   twelve_factor_pmd_analysis_twelve_factor_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.twelve_factor_pmd_analysis_twelve_factor_id_seq', 1, false);
          public          postgres    false    259            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);
          public          postgres    false    261            �           0    0    vm_to_docker_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vm_to_docker_id_seq', 9, true);
          public          postgres    false    265            �           2606    28926    advisory PRIMARY 
   CONSTRAINT     Y   ALTER TABLE ONLY public.advisory
    ADD CONSTRAINT "PRIMARY" PRIMARY KEY (advisory_id);
 <   ALTER TABLE ONLY public.advisory DROP CONSTRAINT "PRIMARY";
       public            postgres    false    202            �           2606    28928    advisory_group PRIMARY00000 
   CONSTRAINT     t   ALTER TABLE ONLY public.advisory_group
    ADD CONSTRAINT "PRIMARY00000" PRIMARY KEY (question_id, advisory_score);
 G   ALTER TABLE ONLY public.advisory_group DROP CONSTRAINT "PRIMARY00000";
       public            postgres    false    204    204                       2606    28930    advisory_score PRIMARY00001 
   CONSTRAINT     j   ALTER TABLE ONLY public.advisory_score
    ADD CONSTRAINT "PRIMARY00001" PRIMARY KEY (advisory_score_id);
 G   ALTER TABLE ONLY public.advisory_score DROP CONSTRAINT "PRIMARY00001";
       public            postgres    false    205                       2606    28932    advisory_survey2 PRIMARY00002 
   CONSTRAINT     n   ALTER TABLE ONLY public.advisory_survey2
    ADD CONSTRAINT "PRIMARY00002" PRIMARY KEY (survey2_advisory_id);
 I   ALTER TABLE ONLY public.advisory_survey2 DROP CONSTRAINT "PRIMARY00002";
       public            postgres    false    207                       2606    28934 #   ans_label_display_type PRIMARY00003 
   CONSTRAINT     k   ALTER TABLE ONLY public.ans_label_display_type
    ADD CONSTRAINT "PRIMARY00003" PRIMARY KEY (label_type);
 O   ALTER TABLE ONLY public.ans_label_display_type DROP CONSTRAINT "PRIMARY00003";
       public            postgres    false    209            
           2606    28936    answer_options PRIMARY00004 
   CONSTRAINT     j   ALTER TABLE ONLY public.answer_options
    ADD CONSTRAINT "PRIMARY00004" PRIMARY KEY (answer_options_id);
 G   ALTER TABLE ONLY public.answer_options DROP CONSTRAINT "PRIMARY00004";
       public            postgres    false    210                       2606    28938    answer_type PRIMARY00005 
   CONSTRAINT     a   ALTER TABLE ONLY public.answer_type
    ADD CONSTRAINT "PRIMARY00005" PRIMARY KEY (answer_type);
 D   ALTER TABLE ONLY public.answer_type DROP CONSTRAINT "PRIMARY00005";
       public            postgres    false    212                       2606    28940    app_versions PRIMARY00006 
   CONSTRAINT     e   ALTER TABLE ONLY public.app_versions
    ADD CONSTRAINT "PRIMARY00006" PRIMARY KEY (app_version_id);
 E   ALTER TABLE ONLY public.app_versions DROP CONSTRAINT "PRIMARY00006";
       public            postgres    false    213                       2606    28942    applications PRIMARY00007 
   CONSTRAINT     ]   ALTER TABLE ONLY public.applications
    ADD CONSTRAINT "PRIMARY00007" PRIMARY KEY (app_id);
 E   ALTER TABLE ONLY public.applications DROP CONSTRAINT "PRIMARY00007";
       public            postgres    false    215                       2606    28944    assessment PRIMARY00008 
   CONSTRAINT     b   ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT "PRIMARY00008" PRIMARY KEY (assessment_id);
 C   ALTER TABLE ONLY public.assessment DROP CONSTRAINT "PRIMARY00008";
       public            postgres    false    217                       2606    28946     assessment_category PRIMARY00009 
   CONSTRAINT     q   ALTER TABLE ONLY public.assessment_category
    ADD CONSTRAINT "PRIMARY00009" PRIMARY KEY (assessment_category);
 L   ALTER TABLE ONLY public.assessment_category DROP CONSTRAINT "PRIMARY00009";
       public            postgres    false    219                       2606    28948    assessment_details PRIMARY00010 
   CONSTRAINT     q   ALTER TABLE ONLY public.assessment_details
    ADD CONSTRAINT "PRIMARY00010" PRIMARY KEY (assessment_detail_id);
 K   ALTER TABLE ONLY public.assessment_details DROP CONSTRAINT "PRIMARY00010";
       public            postgres    false    220            $           2606    28950    auto_build PRIMARY00011 
   CONSTRAINT     ]   ALTER TABLE ONLY public.auto_build
    ADD CONSTRAINT "PRIMARY00011" PRIMARY KEY (build_id);
 C   ALTER TABLE ONLY public.auto_build DROP CONSTRAINT "PRIMARY00011";
       public            postgres    false    222            )           2606    28952    auto_deploy PRIMARY00012 
   CONSTRAINT     _   ALTER TABLE ONLY public.auto_deploy
    ADD CONSTRAINT "PRIMARY00012" PRIMARY KEY (deploy_id);
 D   ALTER TABLE ONLY public.auto_deploy DROP CONSTRAINT "PRIMARY00012";
       public            postgres    false    224            .           2606    28954    category PRIMARY00013 
   CONSTRAINT     `   ALTER TABLE ONLY public.category
    ADD CONSTRAINT "PRIMARY00013" PRIMARY KEY (category_name);
 A   ALTER TABLE ONLY public.category DROP CONSTRAINT "PRIMARY00013";
       public            postgres    false    226            h           2606    28956    survey_response_q PRIMARY00014 
   CONSTRAINT     o   ALTER TABLE ONLY public.survey_response_q
    ADD CONSTRAINT "PRIMARY00014" PRIMARY KEY (survey_response_qid);
 J   ALTER TABLE ONLY public.survey_response_q DROP CONSTRAINT "PRIMARY00014";
       public            postgres    false    253            l           2606    28958 #   twelve_factor_advisory PRIMARY00015 
   CONSTRAINT     q   ALTER TABLE ONLY public.twelve_factor_advisory
    ADD CONSTRAINT "PRIMARY00015" PRIMARY KEY (twelve_factor_id);
 O   ALTER TABLE ONLY public.twelve_factor_advisory DROP CONSTRAINT "PRIMARY00015";
       public            postgres    false    257            n           2606    28960 '   twelve_factor_pmd_analysis PRIMARY00016 
   CONSTRAINT     u   ALTER TABLE ONLY public.twelve_factor_pmd_analysis
    ADD CONSTRAINT "PRIMARY00016" PRIMARY KEY (twelve_factor_id);
 S   ALTER TABLE ONLY public.twelve_factor_pmd_analysis DROP CONSTRAINT "PRIMARY00016";
       public            postgres    false    258            q           2606    28962    users PRIMARY00017 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PRIMARY00017" PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT "PRIMARY00017";
       public            postgres    false    260            v           2606    28964    vendor_apps PRIMARY00018 
   CONSTRAINT     ^   ALTER TABLE ONLY public.vendor_apps
    ADD CONSTRAINT "PRIMARY00018" PRIMARY KEY (app_name);
 D   ALTER TABLE ONLY public.vendor_apps DROP CONSTRAINT "PRIMARY00018";
       public            postgres    false    262            y           2606    28966    vendors PRIMARY00019 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vendors
    ADD CONSTRAINT "PRIMARY00019" PRIMARY KEY (vendor_name);
 @   ALTER TABLE ONLY public.vendors DROP CONSTRAINT "PRIMARY00019";
       public            postgres    false    263            {           2606    28968    vm_to_docker PRIMARY00020 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vm_to_docker
    ADD CONSTRAINT "PRIMARY00020" PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.vm_to_docker DROP CONSTRAINT "PRIMARY00020";
       public            postgres    false    264            1           2606    29480     clair_reports clair_reports_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.clair_reports
    ADD CONSTRAINT clair_reports_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.clair_reports DROP CONSTRAINT clair_reports_pkey;
       public            postgres    false    227            6           2606    29339    company company_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (company_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    229            :           2606    29492 .   container_repository container_repository_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.container_repository
    ADD CONSTRAINT container_repository_pkey PRIMARY KEY (repo_id);
 X   ALTER TABLE ONLY public.container_repository DROP CONSTRAINT container_repository_pkey;
       public            postgres    false    231            >           2606    29504    environment environment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.environment
    ADD CONSTRAINT environment_pkey PRIMARY KEY (env_id);
 F   ALTER TABLE ONLY public.environment DROP CONSTRAINT environment_pkey;
       public            postgres    false    233            @           2606    29516 ,   file_upload_profile file_upload_profile_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.file_upload_profile
    ADD CONSTRAINT file_upload_profile_pkey PRIMARY KEY (file_upload_profile_id);
 V   ALTER TABLE ONLY public.file_upload_profile DROP CONSTRAINT file_upload_profile_pkey;
       public            postgres    false    235            E           2606    29535 .   file_upload_versions file_upload_versions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.file_upload_versions
    ADD CONSTRAINT file_upload_versions_pkey PRIMARY KEY (file_upload_versions_id);
 X   ALTER TABLE ONLY public.file_upload_versions DROP CONSTRAINT file_upload_versions_pkey;
       public            postgres    false    237            H           2606    29523 :   migration_toolkit_provider migration_toolkit_provider_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.migration_toolkit_provider
    ADD CONSTRAINT migration_toolkit_provider_pkey PRIMARY KEY (mtp_id);
 d   ALTER TABLE ONLY public.migration_toolkit_provider DROP CONSTRAINT migration_toolkit_provider_pkey;
       public            postgres    false    239            K           2606    29542    pmd_report pmd_report_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pmd_report
    ADD CONSTRAINT pmd_report_pkey PRIMARY KEY (pmd_id);
 D   ALTER TABLE ONLY public.pmd_report DROP CONSTRAINT pmd_report_pkey;
       public            postgres    false    241            M           2606    29328    projects projects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    243            O           2606    29570     question_type question_type_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.question_type
    ADD CONSTRAINT question_type_pkey PRIMARY KEY (question_type);
 J   ALTER TABLE ONLY public.question_type DROP CONSTRAINT question_type_pkey;
       public            postgres    false    245            V           2606    29408    questions questions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (question_id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    246            X           2606    29628    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    248            Z           2606    29376    survey survey_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.survey
    ADD CONSTRAINT survey_pkey PRIMARY KEY (survey_id);
 <   ALTER TABLE ONLY public.survey DROP CONSTRAINT survey_pkey;
       public            postgres    false    250            f           2606    29586 4   survey_response_answers survey_response_answers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_answers
    ADD CONSTRAINT survey_response_answers_pkey PRIMARY KEY (survey_response_qid, answer_options_id);
 ^   ALTER TABLE ONLY public.survey_response_answers DROP CONSTRAINT survey_response_answers_pkey;
       public            postgres    false    252    252            a           2606    29359 $   survey_response survey_response_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT survey_response_pkey PRIMARY KEY (survey_response_id);
 N   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT survey_response_pkey;
       public            postgres    false    251                       1259    28969    a_app_id_fk00000    INDEX     I   CREATE INDEX a_app_id_fk00000 ON public.assessment USING btree (app_id);
 $   DROP INDEX public.a_app_id_fk00000;
       public            postgres    false    217                       1259    28970    a_assessment_category_fk00000    INDEX     V   CREATE INDEX a_assessment_category_fk00000 ON public.assessment USING btree (status);
 1   DROP INDEX public.a_assessment_category_fk00000;
       public            postgres    false    217                       1259    28971     a_survey_response_id_fk_idx00000    INDEX     e   CREATE INDEX a_survey_response_id_fk_idx00000 ON public.assessment USING btree (survey_response_id);
 4   DROP INDEX public.a_survey_response_id_fk_idx00000;
       public            postgres    false    217                       1259    28972    ad_advisory_id_fk_idx00000    INDEX     `   CREATE INDEX ad_advisory_id_fk_idx00000 ON public.assessment_details USING btree (advisory_id);
 .   DROP INDEX public.ad_advisory_id_fk_idx00000;
       public            postgres    false    220            I           1259    28973    ad_app_id_fk_idx00000    INDEX     N   CREATE INDEX ad_app_id_fk_idx00000 ON public.pmd_report USING btree (app_id);
 )   DROP INDEX public.ad_app_id_fk_idx00000;
       public            postgres    false    241                        1259    28974    ad_assessment_id_fk00000    INDEX     `   CREATE INDEX ad_assessment_id_fk00000 ON public.assessment_details USING btree (assessment_id);
 ,   DROP INDEX public.ad_assessment_id_fk00000;
       public            postgres    false    220            !           1259    28975    ade_assessment_cat_fk00000    INDEX     h   CREATE INDEX ade_assessment_cat_fk00000 ON public.assessment_details USING btree (assessment_category);
 .   DROP INDEX public.ade_assessment_cat_fk00000;
       public            postgres    false    220            "           1259    28976    ade_assessment_subcat_fk00000    INDEX     o   CREATE INDEX ade_assessment_subcat_fk00000 ON public.assessment_details USING btree (assessment_sub_category);
 1   DROP INDEX public.ade_assessment_subcat_fk00000;
       public            postgres    false    220                       1259    28977    ao_question_id_fk00000    INDEX     X   CREATE INDEX ao_question_id_fk00000 ON public.answer_options USING btree (question_id);
 *   DROP INDEX public.ao_question_id_fk00000;
       public            postgres    false    210                       1259    28978    as_answer_options_id_fk00000    INDEX     d   CREATE INDEX as_answer_options_id_fk00000 ON public.advisory_score USING btree (answer_options_id);
 0   DROP INDEX public.as_answer_options_id_fk00000;
       public            postgres    false    205                       1259    28979    av_app_name_fk00000    INDEX     P   CREATE INDEX av_app_name_fk00000 ON public.app_versions USING btree (app_name);
 '   DROP INDEX public.av_app_name_fk00000;
       public            postgres    false    213                       1259    28980    av_vendor_name_fk00000    INDEX     V   CREATE INDEX av_vendor_name_fk00000 ON public.app_versions USING btree (vendor_name);
 *   DROP INDEX public.av_vendor_name_fk00000;
       public            postgres    false    213            %           1259    28981    build_app_fk_idx00000    INDEX     N   CREATE INDEX build_app_fk_idx00000 ON public.auto_build USING btree (app_id);
 )   DROP INDEX public.build_app_fk_idx00000;
       public            postgres    false    222            &           1259    28982    build_company_fk_idx00000    INDEX     V   CREATE INDEX build_company_fk_idx00000 ON public.auto_build USING btree (company_id);
 -   DROP INDEX public.build_company_fk_idx00000;
       public            postgres    false    222            '           1259    28983    build_project_fk_idx00000    INDEX     V   CREATE INDEX build_project_fk_idx00000 ON public.auto_build USING btree (project_id);
 -   DROP INDEX public.build_project_fk_idx00000;
       public            postgres    false    222            /           1259    28984    clair_report_url00000    INDEX     b   CREATE UNIQUE INDEX clair_report_url00000 ON public.clair_reports USING btree (clair_report_url);
 )   DROP INDEX public.clair_report_url00000;
       public            postgres    false    227            r           1259    28985    company_id_fk_idx0000000000    INDEX     S   CREATE INDEX company_id_fk_idx0000000000 ON public.users USING btree (company_id);
 /   DROP INDEX public.company_id_fk_idx0000000000;
       public            postgres    false    260            4           1259    28986    company_name00000    INDEX     T   CREATE UNIQUE INDEX company_name00000 ON public.company USING btree (company_name);
 %   DROP INDEX public.company_name00000;
       public            postgres    false    229            7           1259    28987    container_company_idx00000    INDEX     a   CREATE INDEX container_company_idx00000 ON public.container_repository USING btree (company_id);
 .   DROP INDEX public.container_company_idx00000;
       public            postgres    false    231            8           1259    28988    container_projects_idx00000    INDEX     b   CREATE INDEX container_projects_idx00000 ON public.container_repository USING btree (project_id);
 /   DROP INDEX public.container_projects_idx00000;
       public            postgres    false    231            2           1259    28989    cr_app_id_id_fk00000    INDEX     P   CREATE INDEX cr_app_id_id_fk00000 ON public.clair_reports USING btree (app_id);
 (   DROP INDEX public.cr_app_id_id_fk00000;
       public            postgres    false    227            3           1259    28990    cr_project_id_fk00000    INDEX     U   CREATE INDEX cr_project_id_fk00000 ON public.clair_reports USING btree (project_id);
 )   DROP INDEX public.cr_project_id_fk00000;
       public            postgres    false    227            *           1259    28991    deploy_app_fk_idx00000    INDEX     P   CREATE INDEX deploy_app_fk_idx00000 ON public.auto_deploy USING btree (app_id);
 *   DROP INDEX public.deploy_app_fk_idx00000;
       public            postgres    false    224            +           1259    28992    deploy_company_fk_idx00000    INDEX     X   CREATE INDEX deploy_company_fk_idx00000 ON public.auto_deploy USING btree (company_id);
 .   DROP INDEX public.deploy_company_fk_idx00000;
       public            postgres    false    224            ,           1259    28993    deploy_project_fk_idx00000    INDEX     X   CREATE INDEX deploy_project_fk_idx00000 ON public.auto_deploy USING btree (project_id);
 .   DROP INDEX public.deploy_project_fk_idx00000;
       public            postgres    false    224            ;           1259    28994    env_company_idx00000    INDEX     R   CREATE INDEX env_company_idx00000 ON public.environment USING btree (company_id);
 (   DROP INDEX public.env_company_idx00000;
       public            postgres    false    233            <           1259    28995    env_projects_idx00000    INDEX     S   CREATE INDEX env_projects_idx00000 ON public.environment USING btree (project_id);
 )   DROP INDEX public.env_projects_idx00000;
       public            postgres    false    233                       1259    28996 "   fk_answer_options_survey1_idx00000    INDEX     q   CREATE INDEX fk_answer_options_survey1_idx00000 ON public.advisory_survey2 USING btree (answer_options_survey1);
 6   DROP INDEX public.fk_answer_options_survey1_idx00000;
       public            postgres    false    207                       1259    28997 "   fk_answer_options_survey2_idx00000    INDEX     q   CREATE INDEX fk_answer_options_survey2_idx00000 ON public.advisory_survey2 USING btree (answer_options_survey2);
 6   DROP INDEX public.fk_answer_options_survey2_idx00000;
       public            postgres    false    207            A           1259    28998    fup_app_id_fk00000    INDEX     T   CREATE INDEX fup_app_id_fk00000 ON public.file_upload_profile USING btree (app_id);
 &   DROP INDEX public.fup_app_id_fk00000;
       public            postgres    false    235            F           1259    28999 "   fup_file_upload_profile_id_fk00000    INDEX     u   CREATE INDEX fup_file_upload_profile_id_fk00000 ON public.file_upload_versions USING btree (file_upload_profile_id);
 6   DROP INDEX public.fup_file_upload_profile_id_fk00000;
       public            postgres    false    237            B           1259    29000    fup_mtp_id_fk00000    INDEX     T   CREATE INDEX fup_mtp_id_fk00000 ON public.file_upload_profile USING btree (mtp_id);
 &   DROP INDEX public.fup_mtp_id_fk00000;
       public            postgres    false    235            C           1259    29001    fup_project_id_fk00000    INDEX     \   CREATE INDEX fup_project_id_fk00000 ON public.file_upload_profile USING btree (project_id);
 *   DROP INDEX public.fup_project_id_fk00000;
       public            postgres    false    235                       1259    29002    project_id_fk_idx00000    INDEX     U   CREATE INDEX project_id_fk_idx00000 ON public.applications USING btree (project_id);
 *   DROP INDEX public.project_id_fk_idx00000;
       public            postgres    false    215            P           1259    29003    q_answer_type_fk00000    INDEX     R   CREATE INDEX q_answer_type_fk00000 ON public.questions USING btree (answer_type);
 )   DROP INDEX public.q_answer_type_fk00000;
       public            postgres    false    246            Q           1259    29004    q_category_name_fk00000    INDEX     V   CREATE INDEX q_category_name_fk00000 ON public.questions USING btree (category_name);
 +   DROP INDEX public.q_category_name_fk00000;
       public            postgres    false    246            R           1259    29005    q_label_type_fk00000    INDEX     P   CREATE INDEX q_label_type_fk00000 ON public.questions USING btree (label_type);
 (   DROP INDEX public.q_label_type_fk00000;
       public            postgres    false    246            S           1259    29006    q_question_type_fk_idx00000    INDEX     Z   CREATE INDEX q_question_type_fk_idx00000 ON public.questions USING btree (question_type);
 /   DROP INDEX public.q_question_type_fk_idx00000;
       public            postgres    false    246            T           1259    29007    q_survey_id_fk_idx00000    INDEX     R   CREATE INDEX q_survey_id_fk_idx00000 ON public.questions USING btree (survey_id);
 +   DROP INDEX public.q_survey_id_fk_idx00000;
       public            postgres    false    246            [           1259    29008    sr_app_id_fk00000    INDEX     O   CREATE INDEX sr_app_id_fk00000 ON public.survey_response USING btree (app_id);
 %   DROP INDEX public.sr_app_id_fk00000;
       public            postgres    false    251            \           1259    29009    sr_company_id_fk00000    INDEX     W   CREATE INDEX sr_company_id_fk00000 ON public.survey_response USING btree (company_id);
 )   DROP INDEX public.sr_company_id_fk00000;
       public            postgres    false    251            ]           1259    29010    sr_project_id_fk00000    INDEX     W   CREATE INDEX sr_project_id_fk00000 ON public.survey_response USING btree (project_id);
 )   DROP INDEX public.sr_project_id_fk00000;
       public            postgres    false    251            ^           1259    29011    sr_survey_app_uk00000    INDEX     e   CREATE UNIQUE INDEX sr_survey_app_uk00000 ON public.survey_response USING btree (survey_id, app_id);
 )   DROP INDEX public.sr_survey_app_uk00000;
       public            postgres    false    251    251            _           1259    29012    sr_user_id_fk00000    INDEX     Q   CREATE INDEX sr_user_id_fk00000 ON public.survey_response USING btree (user_id);
 &   DROP INDEX public.sr_user_id_fk00000;
       public            postgres    false    251            b           1259    29013    sra_answer_options_id_fk00000    INDEX     n   CREATE INDEX sra_answer_options_id_fk00000 ON public.survey_response_answers USING btree (answer_options_id);
 1   DROP INDEX public.sra_answer_options_id_fk00000;
       public            postgres    false    252            c           1259    29014    sra_app_version_id_fk00000    INDEX     h   CREATE INDEX sra_app_version_id_fk00000 ON public.survey_response_answers USING btree (app_version_id);
 .   DROP INDEX public.sra_app_version_id_fk00000;
       public            postgres    false    252            d           1259    29015 "   sra_survey_response_id_fk_idx00000    INDEX     t   CREATE INDEX sra_survey_response_id_fk_idx00000 ON public.survey_response_answers USING btree (survey_response_id);
 6   DROP INDEX public.sra_survey_response_id_fk_idx00000;
       public            postgres    false    252            i           1259    29016    srq_question_id_fk_idx00000    INDEX     `   CREATE INDEX srq_question_id_fk_idx00000 ON public.survey_response_q USING btree (question_id);
 /   DROP INDEX public.srq_question_id_fk_idx00000;
       public            postgres    false    253            j           1259    29017    srq_survey_question_uk00000    INDEX     {   CREATE UNIQUE INDEX srq_survey_question_uk00000 ON public.survey_response_q USING btree (survey_response_id, question_id);
 /   DROP INDEX public.srq_survey_question_uk00000;
       public            postgres    false    253    253            o           1259    29018    tf_add_id_fk_idx00000    INDEX     ^   CREATE INDEX tf_add_id_fk_idx00000 ON public.twelve_factor_pmd_analysis USING btree (app_id);
 )   DROP INDEX public.tf_add_id_fk_idx00000;
       public            postgres    false    258            s           1259    29019    u_role_id_fk_idx00000    INDEX     J   CREATE INDEX u_role_id_fk_idx00000 ON public.users USING btree (role_id);
 )   DROP INDEX public.u_role_id_fk_idx00000;
       public            postgres    false    260                       1259    29020    unq_prid_appid00000    INDEX     _   CREATE UNIQUE INDEX unq_prid_appid00000 ON public.assessment USING btree (project_id, app_id);
 '   DROP INDEX public.unq_prid_appid00000;
       public            postgres    false    217    217            t           1259    29021    username00000    INDEX     J   CREATE UNIQUE INDEX username00000 ON public.users USING btree (username);
 !   DROP INDEX public.username00000;
       public            postgres    false    260            w           1259    29022    vendor_name_fk00000    INDEX     R   CREATE INDEX vendor_name_fk00000 ON public.vendor_apps USING btree (vendor_name);
 '   DROP INDEX public.vendor_name_fk00000;
       public            postgres    false    262            �           2606    29439 !   assessment_details advisory_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment_details
    ADD CONSTRAINT advisory_id_fk FOREIGN KEY (advisory_id) REFERENCES public.advisory(advisory_id) NOT VALID;
 K   ALTER TABLE ONLY public.assessment_details DROP CONSTRAINT advisory_id_fk;
       public          postgres    false    3069    202    220            |           2606    29392 "   advisory_score answer_option_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.advisory_score
    ADD CONSTRAINT answer_option_id_fk FOREIGN KEY (answer_options_id) REFERENCES public.answer_options(answer_options_id) NOT VALID;
 L   ALTER TABLE ONLY public.advisory_score DROP CONSTRAINT answer_option_id_fk;
       public          postgres    false    3082    205    210            �           2606    29587 +   survey_response_answers answer_option_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_answers
    ADD CONSTRAINT answer_option_id_fk FOREIGN KEY (answer_options_id) REFERENCES public.answer_options(answer_options_id) NOT VALID;
 U   ALTER TABLE ONLY public.survey_response_answers DROP CONSTRAINT answer_option_id_fk;
       public          postgres    false    3082    252    210            ~           2606    29402 )   advisory_survey2 answer_option_survey2_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.advisory_survey2
    ADD CONSTRAINT answer_option_survey2_fk FOREIGN KEY (answer_options_survey2) REFERENCES public.answer_options(answer_options_id) NOT VALID;
 S   ALTER TABLE ONLY public.advisory_survey2 DROP CONSTRAINT answer_option_survey2_fk;
       public          postgres    false    210    3082    207            }           2606    29397 *   advisory_survey2 answer_options_survey1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.advisory_survey2
    ADD CONSTRAINT answer_options_survey1_fk FOREIGN KEY (answer_options_survey1) REFERENCES public.answer_options(answer_options_id) NOT VALID;
 T   ALTER TABLE ONLY public.advisory_survey2 DROP CONSTRAINT answer_options_survey1_fk;
       public          postgres    false    3082    207    210            �           2606    29360    survey_response app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 C   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT app_id_fk;
       public          postgres    false    3091    251    215            �           2606    29424    assessment app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 >   ALTER TABLE ONLY public.assessment DROP CONSTRAINT app_id_fk;
       public          postgres    false    3091    215    217            �           2606    29459    auto_build app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_build
    ADD CONSTRAINT app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 >   ALTER TABLE ONLY public.auto_build DROP CONSTRAINT app_id_fk;
       public          postgres    false    3091    215    222            �           2606    29414    app_versions app_name_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_versions
    ADD CONSTRAINT app_name_fk FOREIGN KEY (app_name) REFERENCES public.vendor_apps(app_name) NOT VALID;
 B   ALTER TABLE ONLY public.app_versions DROP CONSTRAINT app_name_fk;
       public          postgres    false    3190    213    262            �           2606    29592 )   survey_response_answers app_version_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_answers
    ADD CONSTRAINT app_version_id_fk FOREIGN KEY (app_version_id) REFERENCES public.app_versions(app_version_id) NOT VALID;
 S   ALTER TABLE ONLY public.survey_response_answers DROP CONSTRAINT app_version_id_fk;
       public          postgres    false    3087    252    213            �           2606    29449 $   assessment_details assessment_cat_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment_details
    ADD CONSTRAINT assessment_cat_fk FOREIGN KEY (assessment_category) REFERENCES public.assessment_category(assessment_category) NOT VALID;
 N   ALTER TABLE ONLY public.assessment_details DROP CONSTRAINT assessment_cat_fk;
       public          postgres    false    219    3100    220            �           2606    29444 #   assessment_details assessment_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment_details
    ADD CONSTRAINT assessment_id_fk FOREIGN KEY (assessment_id) REFERENCES public.assessment(assessment_id) NOT VALID;
 M   ALTER TABLE ONLY public.assessment_details DROP CONSTRAINT assessment_id_fk;
       public          postgres    false    3094    217    220            �           2606    29454 (   assessment_details assessment_sub_cat_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment_details
    ADD CONSTRAINT assessment_sub_cat_fk FOREIGN KEY (assessment_sub_category) REFERENCES public.assessment_category(assessment_category) NOT VALID;
 R   ALTER TABLE ONLY public.assessment_details DROP CONSTRAINT assessment_sub_cat_fk;
       public          postgres    false    3100    219    220            �           2606    29464    auto_build build_company_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_build
    ADD CONSTRAINT build_company_id_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 H   ALTER TABLE ONLY public.auto_build DROP CONSTRAINT build_company_id_fk;
       public          postgres    false    222    229    3126            �           2606    29365    survey_response company_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT company_id_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 G   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT company_id_fk;
       public          postgres    false    251    3126    229            �           2606    29474    auto_deploy company_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_deploy
    ADD CONSTRAINT company_id_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 C   ALTER TABLE ONLY public.auto_deploy DROP CONSTRAINT company_id_fk;
       public          postgres    false    229    3126    224            �           2606    29481    clair_reports cr_app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.clair_reports
    ADD CONSTRAINT cr_app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 D   ALTER TABLE ONLY public.clair_reports DROP CONSTRAINT cr_app_id_fk;
       public          postgres    false    227    215    3091            �           2606    29486    clair_reports cr_project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.clair_reports
    ADD CONSTRAINT cr_project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 H   ALTER TABLE ONLY public.clair_reports DROP CONSTRAINT cr_project_id_fk;
       public          postgres    false    3149    243    227            �           2606    29469    auto_deploy dep_app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_deploy
    ADD CONSTRAINT dep_app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 C   ALTER TABLE ONLY public.auto_deploy DROP CONSTRAINT dep_app_id_fk;
       public          postgres    false    215    3091    224            �           2606    29505    environment env_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.environment
    ADD CONSTRAINT env_company_id FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 D   ALTER TABLE ONLY public.environment DROP CONSTRAINT env_company_id;
       public          postgres    false    229    233    3126            �           2606    29510    environment env_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.environment
    ADD CONSTRAINT env_project_id FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 D   ALTER TABLE ONLY public.environment DROP CONSTRAINT env_project_id;
       public          postgres    false    3149    233    243            �           2606    29517 "   file_upload_profile file_app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.file_upload_profile
    ADD CONSTRAINT file_app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 L   ALTER TABLE ONLY public.file_upload_profile DROP CONSTRAINT file_app_id_fk;
       public          postgres    false    235    215    3091            �           2606    29529 &   file_upload_profile file_project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.file_upload_profile
    ADD CONSTRAINT file_project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 P   ALTER TABLE ONLY public.file_upload_profile DROP CONSTRAINT file_project_id_fk;
       public          postgres    false    235    243    3149            �           2606    29536 .   file_upload_versions file_upload_profile_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.file_upload_versions
    ADD CONSTRAINT file_upload_profile_id_fk FOREIGN KEY (file_upload_profile_id) REFERENCES public.file_upload_profile(file_upload_profile_id) NOT VALID;
 X   ALTER TABLE ONLY public.file_upload_versions DROP CONSTRAINT file_upload_profile_id_fk;
       public          postgres    false    237    3136    235            �           2606    29563    questions label_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT label_type_fk FOREIGN KEY (label_type) REFERENCES public.ans_label_display_type(label_type) NOT VALID;
 A   ALTER TABLE ONLY public.questions DROP CONSTRAINT label_type_fk;
       public          postgres    false    246    3080    209            �           2606    29524    file_upload_profile mtp_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.file_upload_profile
    ADD CONSTRAINT mtp_id_fk FOREIGN KEY (mtp_id) REFERENCES public.migration_toolkit_provider(mtp_id) NOT VALID;
 G   ALTER TABLE ONLY public.file_upload_profile DROP CONSTRAINT mtp_id_fk;
       public          postgres    false    239    235    3144            �           2606    29543    pmd_report pmd_app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pmd_report
    ADD CONSTRAINT pmd_app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 B   ALTER TABLE ONLY public.pmd_report DROP CONSTRAINT pmd_app_id_fk;
       public          postgres    false    215    3091    241            �           2606    29617 (   twelve_factor_pmd_analysis pmd_app_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.twelve_factor_pmd_analysis
    ADD CONSTRAINT pmd_app_id_fk FOREIGN KEY (app_id) REFERENCES public.applications(app_id) NOT VALID;
 R   ALTER TABLE ONLY public.twelve_factor_pmd_analysis DROP CONSTRAINT pmd_app_id_fk;
       public          postgres    false    3091    258    215            �           2606    29548    projects pr_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT pr_company_id FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT pr_company_id;
       public          postgres    false    3126    243    229            �           2606    29329    applications project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applications
    ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 D   ALTER TABLE ONLY public.applications DROP CONSTRAINT project_id_fk;
       public          postgres    false    215    3149    243            �           2606    29340    auto_build project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_build
    ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 B   ALTER TABLE ONLY public.auto_build DROP CONSTRAINT project_id_fk;
       public          postgres    false    3149    243    222            �           2606    29349    auto_deploy project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.auto_deploy
    ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 C   ALTER TABLE ONLY public.auto_deploy DROP CONSTRAINT project_id_fk;
       public          postgres    false    224    3149    243            �           2606    29370    survey_response project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 G   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT project_id_fk;
       public          postgres    false    243    251    3149            �           2606    29429    assessment project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 B   ALTER TABLE ONLY public.assessment DROP CONSTRAINT project_id_fk;
       public          postgres    false    243    3149    217            �           2606    29553    questions q_answer_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT q_answer_type_fk FOREIGN KEY (answer_type) REFERENCES public.answer_type(answer_type) NOT VALID;
 D   ALTER TABLE ONLY public.questions DROP CONSTRAINT q_answer_type_fk;
       public          postgres    false    246    212    3085            �           2606    29558    questions q_category_name    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT q_category_name FOREIGN KEY (category_name) REFERENCES public.category(category_name) NOT VALID;
 C   ALTER TABLE ONLY public.questions DROP CONSTRAINT q_category_name;
       public          postgres    false    246    226    3118            �           2606    29571    questions q_question_type_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT q_question_type_fk FOREIGN KEY (question_type) REFERENCES public.question_type(question_type) NOT VALID;
 F   ALTER TABLE ONLY public.questions DROP CONSTRAINT q_question_type_fk;
       public          postgres    false    245    246    3151            �           2606    29576    questions q_survey_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT q_survey_id_fk FOREIGN KEY (survey_id) REFERENCES public.survey(survey_id) NOT VALID;
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT q_survey_id_fk;
       public          postgres    false    246    3162    250                       2606    29409    answer_options question_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer_options
    ADD CONSTRAINT question_id_fk FOREIGN KEY (question_id) REFERENCES public.questions(question_id) NOT VALID;
 G   ALTER TABLE ONLY public.answer_options DROP CONSTRAINT question_id_fk;
       public          postgres    false    210    246    3158            �           2606    29607     survey_response_q question_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_q
    ADD CONSTRAINT question_id_fk FOREIGN KEY (question_id) REFERENCES public.questions(question_id) NOT VALID;
 J   ALTER TABLE ONLY public.survey_response_q DROP CONSTRAINT question_id_fk;
       public          postgres    false    253    246    3158            �           2606    29493 '   container_repository repo_company_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.container_repository
    ADD CONSTRAINT repo_company_id_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 Q   ALTER TABLE ONLY public.container_repository DROP CONSTRAINT repo_company_id_fk;
       public          postgres    false    3126    231    229            �           2606    29498 '   container_repository repo_project_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.container_repository
    ADD CONSTRAINT repo_project_id_fk FOREIGN KEY (project_id) REFERENCES public.projects(project_id) NOT VALID;
 Q   ALTER TABLE ONLY public.container_repository DROP CONSTRAINT repo_project_id_fk;
       public          postgres    false    3149    231    243            �           2606    29377    survey_response survey_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT survey_id_fk FOREIGN KEY (survey_id) REFERENCES public.survey(survey_id) NOT VALID;
 F   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT survey_id_fk;
       public          postgres    false    3162    250    251            �           2606    29434     assessment survey_response_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.assessment
    ADD CONSTRAINT survey_response_id_fk FOREIGN KEY (survey_response_id) REFERENCES public.survey_response(survey_response_id) NOT VALID;
 J   ALTER TABLE ONLY public.assessment DROP CONSTRAINT survey_response_id_fk;
       public          postgres    false    217    3169    251            �           2606    29597 -   survey_response_answers survey_response_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_answers
    ADD CONSTRAINT survey_response_id_fk FOREIGN KEY (survey_response_id) REFERENCES public.survey_response(survey_response_id) NOT VALID;
 W   ALTER TABLE ONLY public.survey_response_answers DROP CONSTRAINT survey_response_id_fk;
       public          postgres    false    3169    251    252            �           2606    29612 '   survey_response_q survey_response_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_q
    ADD CONSTRAINT survey_response_id_fk FOREIGN KEY (survey_response_id) REFERENCES public.survey_response(survey_response_id) NOT VALID;
 Q   ALTER TABLE ONLY public.survey_response_q DROP CONSTRAINT survey_response_id_fk;
       public          postgres    false    251    3169    253            �           2606    29602 .   survey_response_answers survey_response_qid_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response_answers
    ADD CONSTRAINT survey_response_qid_fk FOREIGN KEY (survey_response_qid) REFERENCES public.survey_response_q(survey_response_qid) NOT VALID;
 X   ALTER TABLE ONLY public.survey_response_answers DROP CONSTRAINT survey_response_qid_fk;
       public          postgres    false    252    253    3176            �           2606    29622    users u_company_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT u_company_id_fk FOREIGN KEY (company_id) REFERENCES public.company(company_id) NOT VALID;
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT u_company_id_fk;
       public          postgres    false    260    229    3126            �           2606    29629    users u_role_id_fk    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT u_role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) NOT VALID;
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT u_role_id_fk;
       public          postgres    false    3160    248    260            �           2606    29382    survey_response user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.survey_response
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 D   ALTER TABLE ONLY public.survey_response DROP CONSTRAINT user_id_fk;
       public          postgres    false    3185    260    251            �           2606    29419    app_versions vendor_name_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_versions
    ADD CONSTRAINT vendor_name_fk FOREIGN KEY (vendor_name) REFERENCES public.vendors(vendor_name) NOT VALID;
 E   ALTER TABLE ONLY public.app_versions DROP CONSTRAINT vendor_name_fk;
       public          postgres    false    213    263    3193            �           2606    29634    vendor_apps vendor_name_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendor_apps
    ADD CONSTRAINT vendor_name_fk FOREIGN KEY (vendor_name) REFERENCES public.vendors(vendor_name) NOT VALID;
 D   ALTER TABLE ONLY public.vendor_apps DROP CONSTRAINT vendor_name_fk;
       public          postgres    false    262    3193    263            9   �
  x��Z�r�F}�Tmj+��%�)ꑒ�벦���eɉ �����\y!�NG$�}����e�0�]e�
e��k���T��W�;<�y!�4�{�Z�	=�"�|�T�'*���O��P�<ŋʓ��3s�/<�s,Y%�^�X�E�')��{��n����w���"Ծ��JɄ��O%^ZǞ�I -V�|�>�� �m�ϵ�v�^S��R��@r�xJ���!�O4��x�a
��"_��+����vx�t��~
���W�D'R.b�'ҟ�[�9�?�t�}�T�]
?��!�-Tzh V&�y�)Oy"�I�kȆ�A׎�5�]���ĿP�L@Q��|��Q��U$��
X���`����=Hr���)����uQ�?-{u�F�n�������=�(V2޹��8�f ��ׄ��R��p��t��HCN���u\�#��hg"��B
��n���0Od�}lWy.���O�(�q�PP!���1�"��� ��j��c�O9�(7�\���E"�B�b�KCܠ�
�t��j��߄�2Q��L��c���k_gס�:���%�0��>��d�f�k>�cBo���us=�2uO~��B�sI�7��Kl����2U������+��$��٠��Ǔ��i�6@vh~u˧"�g��D��e�_��l
����+�����o?w� �!����I}�Q��7��`yno� �ZypQ�]�y��u�p��rحpsMĝn�2$��WS�&�����J@��M��OP)���4b�Z!M��O�/����j��c*䠧�;g���^J�?i�و�����.���o��D�`���+�=������.�pKng��<%[�*��U�[9U"��@��e�W��V�_����)}۲�9{�FU�?�>^��h�E|߈7��&���.��><��PɌ~�S.������a�/{�[�
>A����so��:V��A{ |�QF
J4666���g�$N��]��:�>����2BCi(/�,�X%|�K���s~�'���S�=`���c�*�L�K߈�ǟ	�z:<C3뚷M'����eH�����d�l�W5��2J��Ҫ��.�O/��}�-�un�������n�+��4p�U�cW"�j�#ɒދ�D�U���Jz���"=O�n~����T�R����{̦�*��8;�9���wd��PX>����Ҟ�ǵ���L��|�׍Fw��1�h�[�	�$ϔQ��̵cS{2��*@eP)2��*r؇��i�dR���˴S���m� P��6��PQ��Ԋ����̸%Ba����4�6� �2�d�*����)�)��i���E^�k���-@��v������1<aO즣!~)O�#Iĩ��R>�������H�\|YQ,g2�u�s����B�P	I�)�b
z�W�̆��Ĭ��t���0�����y=	+��|�.��n5�8c�~��[�����5w�`��C���Y(��	�h���l>��yf��RC��\Tm�.*m�@["���/��f�0��e�T�;,�)�ݺ�zH$�~f���5�4��Y����t$&sw�ޫ��O͊7�P��N k1Q�U���KU�FF3�3=������蝓4GQ�-u��66H�4��YlAfY���� S�Kæj�`�C	A-}R�dW��Ak	���:�!֦�Ɠ�j=r���EN�h{�d_�h}=����Mo�c�<��LN�fK�US����ZqW�"T��i�r�E��{��S�E\�44+��ԑ���F�ϵ%�>R^�k��Uۢ�ʅ3
�	�o���\����qN\�b��/�bG��wMu��DV�:�%n[t%)�4�:<�jW��:�A�t3�|:�?�'9���?�X�{*+}o0�2��srd��M:�b+En��4�W�r���Bg�G岧ÚMHj�b=��^*��1��M�W��i�\���Z�^#�-��=pa���]S��������q��=:�a���\g�'�;�jŀ]��>$t��O�c�C&8?�<$��1偱�G<=�^�9�_��] �b₋��v%�G�R�!m�y,����/�yF���#��f���,�,��6`Z���&�O���V����t6hOn $}�2x�ԋ����IZw����E�wDf4Q����z�<�ʦs����C�X{FvpiN�6�p�GwN;UZ+�ˉgK��[����''w7���2{|¯���
ӭab�g)�G�fH�&\��~1�g�֩�M6<���P��D����������N'��q	�@�����̎_眨�����{���-�c�J��i l���JO'_�������6����\C&���:t�kl�M�*��'�S/���,�$e`Fx��{0v����^��6}�7�v����ձl��/�X4�K[�Zǣ2�8ڄ��X��$�&�E�$�*�a�b���[u���A��Ť�����9��z�2~'���_No�����_h�:�>�:�p؝.��f:W�󴰠���yN�w�u��g�,Ձ � D�4�NAd��kYJCo �U��B�%q�7d��4KRsF�%J�@'��c�[�`��hi|>�>��"���Fx �|(b>���3#�=�y����S�e�ܭ	w��Y�[��s�H�g"�W�"ȱy۞�T$���C�F��n���G��׶3���~(��@å�LJ��mխ������x���p���^�ՑM�֦{.5?�5�M���.D���?������.?)*�u��ի�;��y      ;   D   x�3�4䬀.N#ΐ�T��b������ļ�̔ĒT���"�������<�:c��,����� �4      <   @  x�%R�m1�v���v��sԦ�"x�|��@����8>މ�](���<<���#���_���X �8�Z�`��Ґ�K��_^�4��OR���Ҕ)��x�@�)GIW�qA0��4]%J����%�z D�6�t���ׁ���h���_'Z|] ���4g?����;4q����/���H�\��8F{��g
#�� F�m�^7���[o�,�JͶ��i���k�q��w`osT�C�����k�2�v_f�w_d�e�����~����Vc��Jl5X��^���㲇���9��ay      >      x��]ko�H��L�
k$H$��\#H��$;q�3�@@Im�7�����ouW�!�E�[s��N,�]����TuuS�4ERE��<�WO�]��͍?����ϼ[�#2dmh?��$��0�e/"�w��So4%�������$�O��N��"?\���ky�F~�%��>���Q�����&�C�|(�F��tBxj,����Ȳt�$������>x8a��yg(�ٜ�,i'���I��!�&�~�K�V#�>TD�ܐ4�VrUD�MI3j%�D�ܒ4�Vr]D�mI�j%7D�ܑ4�VrSD�]Isj%�D�\U$ͭ]H���@�j�g�:�>�0�� �UCj����� �c��o`,N�\��� L�[���ӧe|��� ��f��&ѽ?&/�Ӗ$�O�y|G�?
 <���� �|��p揣0o��E|V��̛�㳑���"�A�U��?�S!�E�#�h��o��@2�7�'Ǎ�D*��z�-$BMqkǎ�F��~�$aMqǎ�E
��y�!�3���p#f�7c�M1�ǌY㔳)]�)��bב�j��6,�/d"�����w>[O�����0"�;�eb�gL��_g1����UV�2�snđ���@ &�D�X��Eag�B&XB�����&09Z=]`.�z�� t�S=SD� T�A� ,�'������N�9I���9'���C�~��i��n���Ƌ�<��XN�<�'r�0�S�*#�/���Z�%������Ӳ�R5e��WH�V��s�>O��dx�P0%iW�~�k��n�iB�s���V �Ӝ���y��<��h
�z�)R�Hwz�aYͮR�k�4_�h_*���o�����w������A�h5� ��]���j�E�ۻ�cՠ� ��]���jPE�߻ͣՠ�F��f�=Ml�������Xfӻ��]ף��L����|��{ԟ�)�!��y���~�.hl���G�?!�D��C��g�\aU�E��{��c���$�g���0o�a�t�z>��c������72zqA�a������;W�S�0Ū���@�l�zڜ8�������]t�(�\��E�	��T�ɷ�N��,�]t�(�4d�-�J�bE ���:��V@Y��2�0�J���L��Z@U d�������!O��МU�0	P�Y,��x����m���. j7�|���ħC�\V��z�a�4����G�<{{}-댱z��H��D�qp���q�[k0��VF�A]To0(� ~_�HH���ؖ�cM���{�����5���=�m*m�[��ԫ�t�%Xy n�o�c�u��7ME��<�"�=��#����$]��N]�5�p�]�4$]�Ʒo:�iJ�!N�+�����Ժ�iK:��*Ŷ�����K�}_�!V8�no+�!�쮤;��n�%��H����`�s~�nX�k�ђ��˜LW�a�P\��\�L]���>0u�l���;>`s>�&���b:�;��/�����P�X�*�;T�����}�2;C�p��6�2v���iq��\�	�8-N�L�$�h�9�6<�Ù��,i�����⧒�2�-+8e�`_3mUí�gO��"H�M%���Qs.r(Ԏ�9[9jWԜ�5�0"���P�U1PsFt(Ԛ�9c:j�q���b�МM
��?bδ�����YX+�SK|k{����7�'ޡ����Y�j��Q��U��2X�zW�C>�uܱ��xE$ ��j"��oi#��^�R�jk�͎r�]��N����!#�h�@qF��P���KF��1,��ݘ���9]���*��N����9�[����9�]���*��v����y�н�[M��&S�|Z�{&!�j�'6���	���T�5Z���T�<��h��N7U�lbJca��#��HZ��ci��&�tٚ�*<;�~}��-|���_��3�~�o�1t��������n�sV�}���K��G T��߆8t�pp���!N��0Eár���%U2�,C�ɗ��q���zE��G>:��2ֶb�m�\>����&��
ET�7g�tl�s*3ua�&�!�A!� й�%C;4 |�JIĦQ���1$C��8S2��i��������"F�R���}���g�kT��sy�`�"���W��_�8y���*
��|���9pD��~,�Ԛ洴���0����g���o�בZ��=���M��% k<�+��L�բ�K?�Q&뀇��B|
�h7q�{޳|7�p���?�Y�������٬T_g}05Scw1�����+S��`�;v5��(��U��Ǯ���ES�ƙ���y�
�Mz~�!�΍��ڀ>�y/s�#kѤ���]IYtG��]��1�	&�+��2ڧ;
�b/
3��tcʷ/N:�&���|	k����N�*�0l��U ��z���)e�\DB�;e�����n�l'7Nck�==�5�Ag)	n��/���ĳ,��W,�>���YE�CL^���n��eoNT0��1�Z�.T���bL�NYXJ���rtTW��u���+�T����ו�\�ʂ�v�5ѵfb`�|a]�t��)��>�-}v�	�[�����>�!u����n�������H����E�b,8 �	I�H�C���U�˙H/�U��~�s����0���g0�l᥋����F|�����m>��]���<nE�����Vm&L�zrM2��[������)\���7����.�V�H�����$��e�}���;z;]� u��\�5�Z;��R�<��� ���7=Z��|[5�A����
���{����ڣ�B�U�����,\#�П��r�q�mYn���
�	�c�����V�a��[�5:�l�� ]|q��7?�a�\���pP`ɦ����̶h
�`�M��`�荎ƌ���$�`B���i��M-��`@�tsʖ�p��pt��^�ѕ���X�S6��p*��#XqY�^�ӛT���f����F�:u����(ʧO�_�_�i3Ь;�Ud3g�M��٨=Q�ۍ��&�c���g�V\ y���Jb�U�t��T 6��!��e(�Y�l[i�G�O��7��.��������ʁ
9B�Zj4�9�l |�
���x�U�h4j��V�#uf3��6�;��L�R�dz����XLNK�^G�@b�r����K;3��8lZ~;��'�)�̐0��Ѩ� �א/�B�Q��6�8��6���V�w�$+��٥[�Ђ{G��[���z�v���]��rvg".�H8�2
[A��[�*;�Uɪ;
���񍌦�?�G}H���5���٘�_mY��{N?�ӡO�>�9��i.�19�q�v��ؚd՝�l����Bd���u��O���P�d՝mC��:��J?3n�MW,����<���?,Ì�#��e������LJ� �#<����e�t�� ��v(�T�`R�8�e��^�qp��YEG���~�{/R�8k�I���	&��3�T(�E'�AL���]w�AUI�%��\��}=��\��I��G?�7�A껲������
��r���v8�U�JO�Q�db���*���)�IC���}�@:A�����J|d��,�����'?*	�Oc��� �?�EL\s�������qq�m8��9�DA����:���hVv�菝��50��J��}����o��|�ռ��;t4�m�
.�΁t�@E�>��F�ց�����:�Ow�w ��ӱ�n�2�h"%t� �r��Xh2�C���&t n'4�r��E�ʆ�AX��aۓRS4���tۑ'�.��Ό�]�͠��S����'��8�9������%Wfi
d[����OTj��kV��\����_�����}��n_����'
�d,�cc(`�)n)�ϑ7�%~�x�>U��3d��`W �/�~3�w �oV?���� 3�����ۣuYj^4Y����t���M�@�l��ĉ$��ԧ�l����&uQk�P�L%z�J��٤�3.��%@��/k�WI����Q���*��ۈP�����8T�� |  䋻��<�P��|��k�3Q�.�`���,?�C���k��K��a����~�s��Fv4��v�d��+:a�Aeg�-�6� �<�C/R/�{�єLP�5���I�<�j��F�U��i����N���R����`��9\�~���ǖEL�S�;/���@�K�pB��ChA�=!�Y[����я�4>9|�5��)�SXy��V���l�5���9�>3��	W�t%;�C _1�O�� y�O�
h��	_%>0�t�Kk���#02�_���2១]���->��{z^<��Ś�δFEq*Գ���r��-��M�/`{�6��z�Νk^o��������`������q���!��(��#0���-6��p=ǔ�َ��a���(��n�5��Ғ���,�Tz�g��&�<�G�BcR,�ܒR�#�q�~I�a���������"
�c�3u�j*�9����ٟ��Xiv<c�^j����G6�._��Lc�+������w����u�V����\~������K�2ĺN�M���7��y��1��ȓ�Q64H�(��"��B�lc�)N��9�5_�ap������6(~e�д���p���f\0��SZŠg��O��g�E�'OYe��
{?;��~1���VE�j�9��n��e'�ȴ�Q����ap!}FktԬ���,��}^�\0!Sfc�:�7?�@(hd��EO*#�(J����	��ɥ���ț�5z�g~�	-k��i<���,/��30� a�d ^��D_޾ lA���"`�1~�B���Ř^�=��ܥ���0���o��}1�еB"
�)��n&-�lr)�/Y^���U�1��䧾�ͽ�3���P��l�B�s*QA���2OA_�K��b�?�I�ߞǏy3�wGj掘�E$o��eϙ3<��|mUײ���I������E�XiD��bӢ�/�]l��vT�i���������>eI�V������-����!y[$DzJ��
P=�:�CI}�����ٌ�̧Kg�uu5�ʜM; h����U�%%%zJJڨ�T-
�0zJB�.��d����:��t�1��v*f:�)9����L��IF�Pژ�2�"b�s#�%�T��x�<H�����ju�w�÷��~�ӟ����j������qt��ӈ�|?������s��=�)�J	�!�kc��V\�j59��c�[I���z<WN����$���L����Y�x����G���K���/)a1�d(��4�����l]����e�)̖kٮe88[z�l����e�B����c~A%"�K���_,�K�L��0��L�ӱ�p�f��L	�!�f2n������S/���7�g*�j�*_t��߿�'''�u      @   0   x�s�s
������utw���~.�!�!\p,Q���� ���      A   �  x��XYo��~���	0�ś�I������E�}iQ-�1�VȦ�_������:/�f�����jٖm͏�<K��d���/�����ǳ�����օT{��J1yT�!�lN���)���������V�K:{?8�9�ãO�C�������|�ny�wb��2ؕ�7����U�^y^�P0:��]e�=[t'��D#i�+%J+S�x�"|���E����/�R�O���'F��noΗIr~�_y���Q<�Lj?
�m��&��Ճ	� /�/v&�_H�U�I�A��:�I@�(�#�M<~��Z�#�"�gw�'�-gf�BP������$� ��.���=��pl�հ��}�{vZ��`_�nh�kᰃC�-up�᠅��5ܻ3�zf�v�޹���Fn���㑛�����t=�#7]_���M7а;r�5��t#�#7�X���Mo������'�������$����q>=O��|z>�j��]'��`@s/6���9Q<۶�����	uG�?�ЊO�ykl"�&��Yjh�"]/dU���>2O�}�T�m�FLM~àބ(z�qh���e�F!�@H�V�6��g��/"w�P?&��]2� L~+��	���M,=Ѷ��Y�|�b�����&�9V�������Mi[h�dEm�>	��)�OLA���D�ef�����e�u�*#�!�YKQ�{��C�b�q�"�\ׅ�%!"�h������H�G\Sz/�҃��k����3_�kM*M%�)0�GRh��-���,�Bt40�Ɍ���g�X�M��h��P/�%��R��Ƹ��=��c"$�2+v�.^Ӏp@�}^EED\X5�P	F�[^T�/���_���b-J��jj���W�Z�W���ď ���`q���p�׼Fb�aR$ g�d�`�6�K�,�+�����7�����'�ǋŭ9�b�ʷ�%vy�0M�tYf�K���GD��"O����b��
��t/Z��:{6#�}�S8��{Q�"FP��'�������F�3���
'͐�3�(���ۓ<"�	��{d�O�G�i���8��0D�pݞE���NJb"4��ZPޠ<`uߕ�;׫��.�li6�",5~XKiZ�[k�r/�#5���KV���td^T�:#R@���j�&$�C}<
3�62��h)��e���.�/��
{�F��y����]��E��?jj	���"y'�3>xM�Ş���m��*E�xФ%]��x�JY �E�$�gE����|[�-�3�����-�,W��'+����r,����YU�{�+��J��u��ĺ�k��BHO��C̴
�%4$$�����E�ox�Tن>W�~�/"��{cLs�!��@*=�A�����;�K��Mx���[8h�#�#�kJ��^G�/�Hw<��j����BgSl0hW��|�6,���+�th�Y���J�-��';��D�p�mͮ8=�E�����Oq��})�fR.��W:��.��!O[t��H��G��t����y�п��vŊ��O�4�t>��e?�<z,ćDP��y��xJ$dZ����&Ζ)�y�.#K?m�qx���JtH*Qy�8�*St'Q�6�y�����nR7X�[Q�:Wّ�B2�4]��`7�]֙��9yq��u��s�_�P���uOr�(�Y	� u���[2��a�'��CeD�����Ѥ�:6��	Z,n$-���*IՖ���������E��Mb�����I	ՅT�=ǣ,����N�禮���_�j��J����,U}<g;\Z�|��l]k~"�h��=��W$��g���J�FK��3Ӡ����o|sȺKA�F���:�HD��$ҌBEMJ=';�頶��'�uPU�X���#:O�!�z�h��B�Mn�)�R�H��XPX�ǦN�cÒ��.��j��
�O|�����)��I�.��aDG'/E+pC��Tz��T�&�`�6���?��k\��juc�^�N-�{b0�'�×K��ul��}����r�	<      C   J   x�sru�q����	�v�quF��;{�:{;�Gp9�x��;�����q{�����4��pru����� 2�      D   �   x�u�+�P�a}g]Aә��%��i�`�P� 1b�s�a�9��\�����5!Z�H����b��Z�h���Na��y{�N��z�}�ICe(��P��fC,�*X5�z'�/�wa�O�&C�h(B2��h(C�P���
C��:.#�n���      F   �  x����n�0���S���dɺ�耮C��8`��u�؁�n؞~�+$�r�r���#)R����5+����s�}_!s��@Yέ̬�����5��sQ��7LN���:�]=�KqU��E��9���D=��貺ާ�%V���ۺȟ\�v��ʨ3.a��nܡE�;�;<F�	�V�LOP|�vf.Ѩ��Ҟ�4�k��+�ss�ܢ`�:����Y[�3{�G�C���a{u��q����b2$��6;qF��4���UT�c]���=5�$�����ǰk���cWS���S���1�ތ�����w�oh�&a���9Pi���2�D
:�yU�]�z�S�ZST�\u��q3)}�Ǭv�K�e"�T��m a�0�(���'�s�NܩߐD@��XI�%�;�b	P@��I=8�3@G\ҋa����������z��xj%ZE�i�r�P�/�n|�)�h��E���E�B)5�����
9�S@��k˅@����z�=��pf�Q���9���
�ԕ��� �|���:w�	M���U�uɕ�&�)\eX]���*�K|���UR�:DUa��R�Sz�2����B�O�J�;�/^�ď��-��(z y�1���H����׶k�D.q��Pא K�ĩ\z֩6,�SPL�Ԗ�9�5����c ��P      H   �  x����n1Ek�+�f��D�M��p��i�E���W!g׏b�b�#���L 7��_���}��
�//�~�B;S�6�I}� �����	봎���O���|��yc��'3�x)��x�Ⅷ5� Ӝ.��W\�t��,r�X�cc���E���-x�YkU�E���W�y��n��@���4��Io�8MT��Oj�s�v�­��ϧq����*�r|ڠG[�m���2$�*x�i�x���x��&�ŗovz�+�7�i6�15�V���ب�f�}n�S2K^��PԲYy;��\�3az�3��	���G��+��T��7|L�,����Waқ^ajל��_ŵ��/0�R��p+�y`~ ���|ý��ldT�v&��N�K�4����(�ۙgOz��vq��6�:���y߁�?.��v�
!      J   �   x���A
�0E��)����R��nbC ɔ$z{G��������f�}u2c���لqd�J��%z���bH��`����x�����:���fI^16�η���2AA��i��t��&�d9w�Nd�}�ĺ??��)��|��9���v"���#?S���=>u8(V,#H������      K      x��]Is�H�=�E�:�#,	��ɲz�/��v�e.	I��l���2�@@A$A�Qr����D��U��/k�t��<O{]d�<�2�>��&�}���E2��甝O�,I��|��r���"������:����׿�(cl�L�4�C6	��h��IR6Y>.�;ȣd�i��s����qo�͑���=���.��6<�[����H����7�yn�ڗ?���&-A�����~e��Ұ�x֭u[_q���w!�^h�F�����EM��E3����`�y���M� ��b�4Y�,��,��Z���<��-H@jR{RC;_Cʠ� '#����}��m8eߢ���ɷ5�� .h���Af 9�O^9��~rfy�һc����؟�<�����g�>K݇�̊�"Is@5K�<~`ќ����2���e�$.�����k����bʠ���_����o��w��z*e�8ȡ�f��O�p>��n�W��_c���,��\^�Y�ONc��`~"��@Sh7�Y�������c9��i�q>���h^|g�10Ni���p��I&_q�ͧ�a���� �շù�y�f���M��Y�vG�
���y��y��@~ɇ�I�8C#t�s�~Q��!������ ���YF3��=�)����Z4+~�6I�[���<}�G�]x�i��,���H���goX�$q7;��uem�.��`�]��-�~���MKW�� zEqpA.hV!�$|��9��q��8�s��pͥ�*MW2q�0��;
b���߃	/�q�P��b����K��l�&_�3��)΢@�o�GpL����ؕU_X��4�O" dl_��ɍ� �d�'�"�V�Ϩ}ww�0�#SC{�l`̊8'H`���c��h�`� �"^���|�zwb���¦�%�)��A�,q�')�y
�@�t"X����U
��������>5dqrK�+����jk���8)���ȷ���;������M/Id�,�n�ri(-�>�������[E�q1�F��<�$1���!��r��l����}�W_��"�b��&��]b�u.q�eP;��BOc��%����ȵ4�#����;0���㟫w1xsk��R�3S:�l�@cȵ
잨��aC��%����e��5i�����C��Qp���yNw���\����x2���u��djd[�g���s `" Н���Y�����B��ӏ���So��mjZ�ֲ�]=�w0��嫷�l�iwl���m����b��3y`0C;厏��b��vEx�s���YEM�ޠ�i�E*�@�B%	o �����)�=�wȜ�i�98�8�;��W�-Lj�����<�&��ǡ�A�� ��7>E�s�H�s�T{� &������L�}Nf���"O��s����nߴ�������*��x\c;�/�`ɢ�4o(zv�]��ɏ+�/kD)^����!���Q������4�.�
�2��y������Pn�V�Ј���m6:�b�l�,�Y9!y��?��dTU�5����;��o������8�1<Fx�C�5���? Z�o�"��:�Zq�EZbNrۦ)�br���e叠�Es�Z+��(`�h
��$��QN��$`��8k���L<)�s,��9��_��[�Ax�q��5���,���,}�/XʺK�b`�ɧ�K��DO�j��M
��>2P�lZf�W048�e�[�pj�޸��ە���p,|�����n��zX�([�G�Ԟ2���A�j�:A	�N�c����6]�ALJ��	ƤHS�T�C�\զT�+�-�a����4-�q��#�(��}���h6g�U�ԓt����ػ�1�1U+�~IØ��I�`����w0���-�=7�oh�A����"_���bc�_���U�/����7�VGc��Pp<��n�r�ݑn����P�5H���]K�k.���uj{hv1p��^�|���������l�F�n�n��[��E*|�X�q}2��T���g�8���h���J�Xavo�4�h����I���P��%��"��`v�$l-�������"�;�!�8z��@�H3�j���*on���"���+�+�����-�,��D��� B�PH3`e��4`)vZ�-��H	�Z@�ՙ%�@nw-�q�c���T�^�G�3�O9���W��Qe�_�Hg.D��t����3*�V���h9ͨ�� ͋�YvW��6��U8%7�{e0�PW�\0t;�Hr�Zo�-ȾR���Ir�*�
�Ufeb�},�ӳ��s�3=C��^� 6ࡎl?�l����c�* ��E��EC�U��eQ�G��_��r�; s,E<��!?w�w2��F;�z�����x��O�c8�h;���|UY�������:���UI�a)�����Ҫw�����:��We�N�1֔#4+���2�G��E�����`8���z��SȷV�\Lg��u���G�<=����*e�;�a��~�M<ka�0� �� ��3�z2�٠'�AB��E[�&�zCG�*mRi�H�V�ڰd��6�7����ƛ0,�1P5���&>
Th�p�[{u��d��(x)�Y�����}o^j����,�� 0u��c%M,��<VҤj�/�XI��0� j�m�-���܅���#�����v���_"a,��gL~�iN���)��}X>����jy~wf��*��AQ�[�D�>|���Dt����C��lk� �#��^sЀ`��P�W��sj|�M� eY��~�@�AP�n!]��}O�������6U���i�,�u�I��j�S�C�B�GSO�c���}�S�x��G=��%G<�zJ�E65�)u�A�@��P�"�T����zл�D@��ͯ�Y���+1�&�.�ܷ.Y�G�׭@�����	,a���:~[�WB�י9"�VK��)���r+�M��UQ�5�㚆�&�}�#���ݑa#P��a�C��_�}� ��, ��x3a
[��O��Z���ro�� ��m%�"	w{��/��IZƉi5��ß��^��ޭ���C�?���j.�՗�nd�4����pp�I�6���զm�L���.����v8�چAD5�yR����L����<�L��J8���d��V�\WZ������S��D_>G�(�!hff�ܖ����$h�H�V�\��Einw��vxb=��÷|�E�	��q����/xv=}nh����nÖG�a�9�vq��샨��O��Z�s�h�g���M�r�[�zJ��"2����%̈	� �>SR�~�>�q�(d�����ϵ�>Ii�qsd��W�Y{������7���3M|�O鳫�,4�����Q�9�9'��z��G��䜧���W�+-�l����#�m-K�;�]ik�����A�o"�#��H -����j.��x��4s6NbPvY_w���wȝ)����K���z�����=�m)�q��gcS��lĦ��V�A�XK2#��!�u�u����#�����b��?��l���UM�v�p��Vi�xQ��h�\,��{���`J����2Ujb;��gd�3$�`1��Z�q��A����0Q���������6 �F�5vؐ���y(;��v���_�{,eKP\�bm_�F!�����%*R�=o��}B{�[��:��qmY��^q�ֶANs�[���(��&��R��]�I�D:"M&!A��[W��8a.-'T�g(-(l�mW��a��m#��诒�8R4S�ާΞ.8]�J�(�*sq`+ECPTa�[�f
n��b���{��+���e�5����τ��R!���H7�BH�D*
���-d��P&�a�!�������A���\İ��{4�B��I��eX���\Q񑊊�s�k��4dp���[ACd ��4�M�8J���E��g�/ò�~���p��=���u5Xn�!O�K��@��R�8{��<p�.󢨦�R �  �)�b�[��Sy2�R�� ����\S�+U���]�㵌ߣY1ci)c>���
��T�2gSp��o3��Y����~�NҎ˾xM;�>2l����>R�9��>�|���x��J ��G���8��W� d� ;� j�mb��
�Y��^�����fTFH���ٕ-!B��JޞH�jZK��m��}(ϝnyt�G��
�[Ҏ�9����O��I���fe.\pԮY��!Xt���1�X페;h�j����vU@�'�HwG\�� �x0a5u@usd��F�j�Y4�r�a�J �i���}0A�hۇ�w������ϸ�W�#���N�},t�|���F��4����=bO�`�@ސ� �&�W�,	Z@�h�,��^{�x~��}�pwc�|0(x[�LTě��uT6E���ah(>������k8��e����[��(b�R}-�A�&��/g4hapUl%���%�
l���yDM��ƚl-�լ".1�xc7ޒd�b8�x�4�S����OJ���x�Ϡn��Ip$����04��Qi�
8��߷�� ��˷z^G�\���גRt�`�?���r��������DVV`� uT���"���5�`�m/s��a	.��dk�#�ȡ��78��C��N������)6zC���Z�G�Y���ez�����ps7���.�\*9�*.//��S�"p����Up.�s\�)��C@���Y����6a�X%Xzh.���"�1�pV;$&P~����"ރ�%%��J.)���L.)�s=rI��'�)�K6�:ߥ����6�!i`n���= ����a�g�.߽�M옓� ���� B���!5jR���}�㙮�X��(��JXm�:��Ie���y�nGs�h�#�W+@:�>=	��8���$&EB
�ԓ�r�F�#�+X"
��E�"*�H q�(���6�3�^���I]AQ%����	n���]_�3/�[#C��[��#�g����J�<�e2<���j]@��e�@p�'�@&Rz]�B֢��bs��%l1���e*�X����%~jx+�<AoX��%�`1�kŚ�|�8;�<�|{��K����n?ɐ9�>"p�S�2���>!�Y����v�K$|$1�J�
�������%8���!�\2���璬I��%��KKX�k��}�6�ྉ
GpP.�^�]��zI���)V����:�vI�SR�W�]��K�<��m�ش9c�]�H�G���J:���0,5ǩ�#�Q�j V��}JMd�s�Į�h@���W �H���B�!�q�X��u<�&%�!|���b	
�/E7�y[e�W[B���4�ċ��a�!,q1u�T��%����j�(zQJK�9��_��l�      M     x����j�0���ק�������/I��4!I'{�5�vؠ)�A���%%�	�����&�/�,b���ú�p�х����x�e�XSmķ������!�:c����lT��� �4�+g��}���'����a��6�nr�9�J�8��LZ�I+8*�����Q��m<d5%�50�z�q�گ���ň�;�TM)ҿ�J�IE�t4�Hҟ����՜yM&�ғ!��5�'[4	H�i��$ 8Yxv������¤�d�!K9�EQ� kٲ�      O   A  x����n!�ϳO�@e���om�z��t�E� kS������ɮm dH���2��X���:ʙԥ��SU[��@�	�a�Ẍ́�x
�%��
;2A�K��� Z�XV��
i;T�h�J�M�60�1L�8�L�帧6i�&�!1���H��*Ċ�{�x�h�N�8�1!%jt"Pt5��A�s���^IG�AId?�u����:V�Ai�e�0^m5�_���G��|���h�[L�SXK� ���|v5���yċ�)��7��ŝ�tt�d����Z�BX�PN9��[���zn�h�Ǩ=�u���	�$I����       Q   �   x���44RpKL.�/Rp��-H,�L���,��)��e��XP�T�W�������2�t*-��K-.F0"�L�����d����"�~\f�.�%�
�@��S9a��9�Kj�A1���2����3���8C=�8Ï+F��� �KR      R   f  x��Zks۸���
��ԞJ�(Y����u��q<���L��@$$�&.J����\�����F��6��C"	���s�}���Ӄ�s`f:���⠭s۶:��m/Ę�i_������uaM�~8�������%_��B��6�a��xW�J|,Si�0���_�t�����Dcظx���턃V�tOMw��<��K��a��
2�R+�9WLS
���%��z.
�0���	v)Uy�nE�D��b���A7��ui���1$M�q,�a�Nk�ѓRŴn���m-2���g���Х��\(w��d�������	e*XRH�h�J@��)nc`�ncp�)���g��f�n���˖-x�-^+�.���R�M� �<N���+ay�-'C\�{J�.ލF�.}��Pc8�a8[]R��U��bx�>/��bx�~9�j|���x.�D������b��۲�͗����ܐ�i����|�N+4Ԫ�D"y�4�v2���LI�-}�� ��B�әCȀ̀(�l�ғV��>as�Y\���ގ~a���X0a2�1;\�d<c_r�i+�,-s�� ���hw3{}���ΟZ����^���v�����yq��M��ND�nɦ����
3g�����17S!��D�)�>]�a��䩡K��vL`g܂T��jz�È�Z��1�L�M����T/Ku�SXJ��zl9�*��5Ɍ�,%{�)	��=ab�x!�aig�/ Y+��4Y���� �գ`�<*����0�� MJ�&�`�9�趛.��N�l�S���:��#��7帴��Z@��3��xX*'�Ȱ"�
�1͔��CNF%c�y�4_<6�T�PA�f���,���_�kR[A�^�TK�� �ڥ��Y��#v��[i���6i���oޜ_<���W�v���ِ��y,˨&��Yrq�l��B�� � ,�5��V�nv��ʁ���O��G�~���o�:y�_!X�)�H�g�ӽ�A�I����2�nA��/ԑ��F�S96����8	��3)6:���*�X�25��Ir�4]����/��p*�*��������>�,�_}� ~r�ҹ	�Զ�8f�@(��3E�ݤȢ\�2^F���Q�ǚq?1iK�[d��2RbQM"�D�Ԕ����ODA`3!�;�,ٜ�2q\�;R��l��{g�B���D[���b��<1����$������E�*b.DBa�1R�ٴ�=50�`T���B���+w�~+���â7�@� 8��������������N�ˢ�Σx�**!S��AQ�EFPIa�JI��Qہ_�7�	��f+SKQu!0%->u��ҧK�*b��X�U�e OV*c��}�{�|������ �����l�?+Q=|x�|î�^^�\KE0BT��6WR�EY��IRT�B%ny�t��=�.��=�c�Ag�z圍�cr�fQ���E2��v����j3���ʘ�-t��0ظ<�/�������ك��W!wx	À����[U�U���߸;;���!�� P�HJyM��5ikU566���i!��G�l?�$q��R#)c�����l��%Z���s�	��He&J���tԑ:�Lsպ_K��%  ���n.cWS�Ԓju/��JYM���*C@���tGx8(w� J6̂�H�Ы����?�����zE�s�;�a1���]�e�Vud�J��B���N��Ӊ9��Yb��*���qFPi���Y/�Ɣ�� �h��Җ|�ʀTʑdK#��i��)숽*ʠ��ˬJ?����uD��?~���KZ�l�S�,2�,�20e4��GcnDO����������jϔ�?��]ϻ�����J��{��:��:=>������SWt�7���^qŧ���yu�L9����83�k�l!~+����A��=��AVK�x�%|��|�)����-���Y�}ϵj�|R��ê��	L�����,"2@�
k�FT� d��b���T�$�%K�)~���o|�GN{>ֻ	|�� ��%�8�zG-�T����~�R,����2A��9�>�w��ve�&e�v�Kǧ�ѫ_��;���=2:�6ٸ�'%�����+�[$u;׺F��fB����=������¸\Mť��HNt\z lt�AU�������͛�A����c�1^H�c ��gyd��u�	B��K�W���}Q��I�M�V�'�������3��C��j���^��e���z�����K���)<�[+��(\�����W�����z�T��˘6J�f`0z�'.��^*un����<0�uȝi�p�����r�ދ�[:�K�ƒ�0�.���������U��ƭ�E�/�iK �]fH����jAPk��u�&�n�!�,� �z���i��1����.
��Ub�v:��HD���+�c
�k�����c���kص�`�!j���ST
7�K�,���˧��
��N�Nv��`'J��I��BŠ�[�pD	��77��.�ǧ�zQk���:x-�J�`�)���
A.	�N�BC��wg��&[eb#�z�K�Ȫ����8Ky��> r���׽H ܥ�A��eejeN-V'�;��{����>�͒�xc�º����A��_sb�y��x���Y�n��SW��#,�XAP7MB�ҧ�~��S%M�^��%��øf����f�7�&k;��^��P�N�N���;jJ;�>��z�c��}C��j����*�kHVЮ��_4B9p��Y9��/]��X�+ԃ(�B�P��](7�a����X(�pc�긛�����O �?>ێ[}sݕ3��T1���u��B�$����Kv���ˤN��~����쟚aS5�1}H/�z9~L/۝��*x�� 5���y��+��@'�f�:�)��bM-~�{U�ÇE{PK�;��5�WoY�m<[Ua� KPl���#��W@'nܽ G=�U��\y,�D˷�*��3���!�Q�.�+�%�r��/S���%�~��̟�<��S	d�M��J�H�1q�0ԗ���k;����-hM�^�tQ}UӇ�N'���U����g�V�QJr�xa��G�B��-�:I䯸�x�� �!oeGw�D�2��T*����ڟ�
]A郖�`��5�}�Mk��g�џ���������:��ʸ\*����7��fl����k�ۥD��}�_*ס��/��gw d�D��㧒�NѫFP2��xj�#��D�gʶɀ�xvk�}�~sq]����mN����֧_ ��I��BO���K��*&��G�[z�͸�%x]I`�=u!Z�!��v��+�Vo����C],��a�w~�������g�������ޫ�dR��t��gag�?v{����}��ɓ� ��)      T   s  x����r�0������ꏱuKB;�����L.\6����ʦL߾�\��hmi���	�8�|xכ�o�P\s�%���G���W<���G�mx+��ian��K��6�@�
D,�*�(E��P��kg/.������2G����s����#�D*s,��h����C�S!�,�֔I��~��3�ţ�z񋻆��D����뷶s"���s�gx�]BeH�$�<$V(��A�D��$sOd�ν�J*U�J��
���A�j�Ff�����k�Űv��E2�l�����ڷ{p��;���������|��O�Hí_�n��5rHxC��軳5m�) �C3�ۧo�J�s��S{i�v��i6eY�2`�3      V   O   x���4�4�L�O�N-����,�,(�/J-@fy%V&%�:s�5��5(x�&q���p���ė��Y\1z\\\ &�      X   2  x���nI������Թ���a@\ !$������(��Q�����mǙ��A)������W�Z���c'���xw��?>��n~�q�޽�>l�o~x����[�|��u{���z�ڮ�~�C�����y�Y[o���.l?���~{w�X��d�����ū�߽������󏊽���t}������S����u{��������[��X�>}�޽G���������ًS��4On�����>�s�k<�x�P[������m+��d�qg��l����ۚi3��S*)�k�u�=.9崵�_��������`=�������ǂ=�5�@�v\�+�ZZom��nAj�޺,�6�i=�����>�κ��i����[��+�y�wy�u.�V��m7=.ή�VwYӵ�k��͛���ym�WSX/"a�]6A�X�۾�ŷmˋ���l'ͱ܅��Vsi��N�£�c��\ܺΦQƝCom�L\z�Ő��K��WY��i�l�Tn�
���jՊ(O�Y��[���W��ż.�-���lp����W7G�u�M�\�UN�yj� �����tf�͉�D?p5:/�Ëz�|*HwŬ[�U1�i�G���g�y�N�]l�G�q-r-�*i���ݞg��SךC��..�粒)�$���ak��j��n��#�{-���Qը�=��$|sӼ�i�-�ꌭ�5h�#��Q9�^ˋwAUFt%��Ϥ_�\:�b��{s7ii�0�ZY����V�����������ٛ۲ %qt�����Fͪ�vx�Hl�ʳ��a���|X�ըe�W�;�8d��^�ׁM� �V���-�S�ʠu!��~�>�E�'E�	rY�3v��G�9P�,[=p=K
�I�ȑ��ԭ��>��=���vf��YFY����5��ϛ�{FI�]�q�f5)��X[[����Ip7Y�h����x�C95�Qd'��z:[KX��o'�Q}(Pt���*�|����nu{hʳYr���[@�>��S�y91��B�n-��7�k#��t,���(E��Y]��c��Q|�-�a9
g>V�7�vݭ���ɋ�e���M�Y�S"L��̣}l�1���A�z�kG��c��l?�:�S�@�~>�]��L;��!����?�4�sq�̵�9�ɇ;���z?�?6��>5\��G@m{�4������]���_f�'=�E�k]7�l_Z��X�-�n�gw_�j�v��E��؝nz-^+�����XTS�Y����/�?�_�ڞ?��w���~�&<����7O|0j���ն~��o�����7��7�.}w�O\0^���X�&V��Ճ5���tQn��mp���x����?�x����?�������>�)`��(���y0��SLq0��SLq0ů�)����[��\T��<�����͗�ⵟ��Qm���;��`����;��`���~=l7�k0��pP�ApP�A��P�t���|��x�g<c�&v���x�'<���w;X�`���;X�`�������t�<S��'ӵߎJרs����\�v�9�Ǚ�຃��;��຃��;���_�}��;��nP�A���nP�A���z�]C=�ݠv��j7�ݠv��j���v�__�nP�A���nP�A����P���zP�A���nP�A���nP������v��j7�ݠv��j7�ݠv?jw��6��~{7_�wo������Ͽ����p|9�ʵ��\���r�w��������c���PS��+9���u,��Z�\x�����^s�j
!�ֺ�^Z�%ք�\ҽ:�z��w�WQb���G��{��B'�d��d��u�}L|Y��sd�R�E��X�#4����V����l��w{�~��<��9���O3���RP����I6�eK�9�Z�V�Ĺ�ǖ�Y�/;ͩƹ��t?{v@'��nHr,/�[�/]w�~�C>�\4��Þ�_$i�M6���k�9@��c���8�ģr*ā���w�HI+~��<,%˲������I��_bU�g.R�@��
 ��v��������ԑ�[����Zt"�Չ�ɹ�)gl����4U��ts���i5�I>�2)'�,��HpU�(u&�$6�GJ�D؞g��Oى+x�r�畊 6X_��&h-:�k��SgM�+[�)N�h3ħ���\�sQ�4���P��t�� �/(�L��J�"���Ϊ����Z�L�%1%�5�F�>�L��˙�D�leE�������SP/��j� Vc̉LTϐ��3a�	������ځA�a��z�z��=);tP�PB�y�$�D��SX�K�e���^[��duݭ?T�Q�~���&�vź���7T�B��9I5>��-�H
T�|�u�����+���l`�oy��J;u��'��;{S�%�fQ1qU]�W"�p�Q��Y@��/�5����
U5�zO-�O��ћ����KTҕh�H�2���B�@M�L�'s�r�k�x,��F1�`��XL����a���Wx���@�;R�S�hψ9��>D�"�����L/�W�k4����3�Up�*_TCq�}��j2Y�X���A�
=U4�� ��-T�T'�	x�`	��,�U��i51r��6�Z�:���\Tg�� j�%Ŝ�A0�d5	
Z�h�������f�4tEmn���)e���ԗ�d!gN�c����'��hDf�a���䍪�Y��0
��6�5*�
��]}X�m?q��/6���F�X����(�olFodkO+��P�v��">Lb��'�LZ*�Z_DY�G�:1V�"[T�Q3KX��j�[�C�8����0h��9"�;�SԈE�3���TŲ
C��
�D�E�
�T��@]^0�H4�y�/�����,��k��][�&�A�^ɬL_���}8�;��y�Z3haW!,�ܨX�
��k�@GRD6�+3���I�ua��@�:@hX�}�Т���zw���"^M���1��`oR}P� L��n���,�p����IHw�0�߲�e��$�X�D�SE� �XF��=�.`Y�I)���I=���q��XSm�"q��Iy��!��7!��/\Ri�u��,g�ݤ*�R�XF@�.�i���8C�	bT�}RE�!�1<��IS��"Y/���'�ށ
�����#��D��$G�x��0wg���@���So��A��SF5g�:T,I�m�E�eq^�6B-�Vch�3��ĳT�"JU�#�9�jD9r4?�iA�abC�(���خf
1��ľ�`��8��T~һ/�	3�(ij�S)�^s���&���R��d�*�Qz�W�/�'���BL[��U5�M&|L�)u�4��A	��"�F���:A���&��>�!�մh��j���bq��"
jU>qQ4%zL���nQ�U��&Mr�TLBg���=O9c��+�	�T�Lh�<�Y���x���V�^�XY�:-��h���^l��m�7�S�5�E�#5ժ�L��¢$4�	+�,�P�d˘����f�	?ԨPc�����y�.�&	�\	���Tk�y���ȂFX�V�>��1��ş��g���q�`��f�3U��7jPuՅ:��nt��=�٣������ӵS��g7b����Ӥ��Iޝ�tҢC��)6�t��zC��ԛ�p��׋��~��G'�Mϑ{���g^�dQNb:��oվ���mq�����l�2��E���%��{��9���"��E��Z��q��������TŚ����j�lW� q��v����ziY��[n��i@��x�H�E뿳���O��y(
�w����,�wc�}����6�m�w3|��;��]/���i?(jU]�n�����j�_?���}��=y���zY�      Z   �   x�mн�0���2�0�_'�!� �_r	dɍ�G�?�fP%�\�0R��{��M��s��-���V���#���0�����gX�)g��n�����([b�ǂ��Q?�{�_v��T�
����f!wH~��r�V�9�����X?��b�����o�#k=��1�߱�?���3�q/��i����Z�      \   [  x���ݎ�0���S�����ܵ��zUU�^�T��� �v�O߱�&і�tK�(җ�9c�T�Ov�p�)�z�����m�_�f��Q���!��C�}��k���ᾬ�h�6C^5eW������C�6_�&���>�Q���,���|��z�E]5
�B�B��EJZB���?+��&�DЍ�^�	b�0&H�M�6�iOq!rW�H��u��<.%)���6Q��
IH�'Wsx�����zׂpԞY<��3B�),���5�^�8X<���wS���jĥ�;��.M <Χ��Ì~���b���K~�������������^FNz�n�|�=��C�\vSZ�/x�9ħ-Fs�5��ֲ|�+́�1��kN/�e���Ia�N�|x����h�����K�׋%����4T���(y�f� !���&巴r{��	�k'����"���Bl��<��>2�s����v�
�^�zT�Q0iwđ���}��T�1��ͪ>�q	S)�xm��('����[�sF�m�	b����1�����/�(B�g%΋x|�� �Ǒ�q��_w��s+%IoUc��7S�q^��z�op�*����x����f�Z���&�      ^   m   x�3�JMQ�H,Qp����L�M�LIM-H��420��50�5�P04�25�22����2��t�U)J�+N�/�M,���SpL)�,�/�j����c+c+K�!1z\\\ ��!t      `   �  x���r�0Ư�)xE�;׶;;��t��w��d!jZHX�����Eq��j�njNN����|�j�ծ�Di7����߇�Q$oRyǂL���q����nL�Lti��p�~L��}|����a`/	�ϣ �����#�$g�]ʙux�f\
}� F�X��\��8�̹��9��J� ��v	AE�fk�r���,���}�&�e�f�����8��V��Da
0���xܲt�� �K1�)�X�H��#�-��0ï\�eP��c�bR=������LX
�G���e΂[���������.�1�҆�#��ө�.p�����LEdu��ε]N�j�I
�}<�b�'G;%��7�5�cR�eJ�0�!�@
�Q���Qʔ���a[�I�tV�Ul�$U�5ZF/���!V$,X9Ma��jвښ������Up����wv>���ަ���f8�܀���)����F�N��O�Y� t3H�B�B�D�IWt��.������Q�*�T*�-�^���E^�g��t�ڧ�eޜ�h={e�dF&c�e|�Y���`k Z� j,���}��hh�0���L3D`�lD��ޜ�G3E�[���Wy=�C;#{7K���5/T����J�z��1JZ�]H=ժ���F�!�-�W�Ȩ�������,�.H��:[��V��\�]�Ib	�m��dU\?,|V��)qm�N��<�$�e��5����ZO��Ҩ����:�W����4�M�-����)��FuJ<ҌO��tJ<���xv��UF��Sr�N��=�J���{N��Pm�-�F��"�O�V^2&*;���e���f3xl�" &iy��Gk.l�*�Ә�J�^���Qnk%j�1ds�^���v��bk3�6�����kyTyy�f�P3���}�a��?2h<�������_�      b   �   x��ϱN�0���~Wwv��҂:��td��Sk���q���Y�t����N9}p(�̟��*�J[I���a+l�/�{��g.�%������|��-N�UN@^�|��X٥�^b��K4�������>�A�1�=��Y��4�<��u�3����������8-�Q*m$�C�FP[�����Ѩ�(Ԓ���5�H����6"bG      d   &   x���tqq����
��2�=}|\9#�b���� �@4      e   �  x���mo�H�_�O1/�R���)����z��\Z�R��X�x}�k(��7�P��!Eۿ���<ٱ�O瓑u�I�P)��5Q@��~�H�-�\@��"*X����1�b<��D�j������~����[X��ׅ�`}h�V��v<�#����(��W���V~,OP@=�m�qj��Ԟ�,٠�D��Q|@V�Q���:�1_1*!f/�|GE��cqS�h����(�u�:}�,��?�������kIr���4�	�S���אoR�`\$�幐}ӆ:x�|6�=-
C��~1�@��|Z�H����m��>��L��F���/��b�W��4p�T{���Y�?2��
���#�5 ������S��d���e4:�;��\�k��2*�o�=�T��4��a�m��,WΆEQLwx�,]g���pZ�'�N��4�j uvL)⴯B	���t�N�*�3t��)��u��_p[&n�8֙ȕY�5�0K������異miP:c�%	^-�YC���s+�d?�����r�t?(��5Q���ʘ<�����z��t����ۙ_pMQp���!I
�)=\�>��%�I��_i�q���&:}�і�3Y�F�H��隭!Nni�"�+.ȪԈ~[A?��ޥ���m�-Ut�-�-�^G7�i�%��w���ֱ���&g�����ձ�8�����:�R��v�Jk�H���.I�����8��U'�?��o����G��8�[�s��	έ�+U���gbL����6����5�T��H��)
K}��\�R�]��%-S?����SL�݇��e厰#{H��(���f���<��j�^�U���N���1���6Z=���u����C��Ә(�]��,����(��{B��q�#��¥}���	nT���5�V�r\��ɻ��G����L�x��.�F�Y����E�L��'��6vx��c��G��=8���x�9��Z�5kK�L���F۩'�j+��eK��"� �K�	�'@nߤb�d�%y��h��tDU��z(@"�
&�^s����"H4�J�uY*�k.�x��fA��[��:�7�.�C�������oxt7M^���t�]j'�����hr\��i�����h�T���      g   H   x�3�tL����LIM-H��420��50�52U04�2"�? �2�t��-H̫T R�1\Chqja�1z\\\ et#�      i   N   x�3�t��+I��K-R.-*K��HIM-H��420��5��5�T0��21�22�#�e���X��_�3�O��1z\\\ �=2�      j     x���Mn�@���)t��̮M�Р�v�M�d-z�U9��jI����|�qF��h�8<=?�}�E�(0R	�(W�j߾|�?�O��@�>F�y�����fx|����
�@V%UA�������Ʌ�9��@�b�����|��t�h����Z�W-]�ya_�Ш,��`e��R�_ߩ��O%�[V]kCuD�Y���UΝ����Te��rQa�a��qU�B�L��7�zE��S�k�0�>6�)��S�Ϸ�ˈ4�$�b;��u����e��U= ��DG��Х�.���$���S$Mv�(��5iG#�`�\c�:�@�.�#�D�-�ԪR#�pе�'�e���q�q��3�%om�SEZ$R�pc*�=����v�*�}A�Ꞵ��������VC�2-n��g����)��\�`�i��K��r���[����w�XXZ�i9��]��艂�nMe�G�Ӎ�����,�����9b�+���+��-�~�xWtr����r�f�޲�������rX      k   �  x���ۑ\1D�5QlC	H� �����{�U�<%5� �w���>Ա���C׫�����[2Āh�������P��b\�`����z��"��`��=�4-&�	f�do����d���=ڤzL���T\��{�+.<4�c^5�m���/f����6��aE�Im��,��w��A�����T; ��@=r65
� 	уjB&���[Dǫ#�i-��DE�u1�A�<N?��g`����4�Mzh°�0VzVKʔ���d2�z[���3��1�-3��6�=T�ʌ� �h�YGIz����TI2���lP��E0�rj�Y_5�9����g�b�1�b�̪�8c�z��_�,�g?̼�h[3֟ݞ��	��	�Y�	 ����ƈ�����ب��']|#L[m3,�c*��
�pS��a��$��\_)8�i@�!����&�/p�1F}u��^�y}w��2�h�qa��#�pЗ����7�o�p�a$wT����?\_�,p���E8��!���2�ng$p�b����Ʋ�l D+��`����"�Whb�r4nܧ����4�`�-cd��ۭ�b^�%����]�bKb!�H�3.:�p�Nbc ��.x�!�R*Vl��R�dxqq>�;�x0�����a]%#\��ĭ5�w�����W�A�׫��0īt�g�"`ʪ�kc$����y����0���ku����Oy<?�y�      l   �  x�u�]v� ���Ut倐0�Z���qG�:m���<��@?I��6^�e���V��h�/��֢&`"(5 -A���J@g��"��99�)�"��Iˮ"J1x��@�;A�$��J1�P�����8og���Q�8���\�18q}qQ�������/D��Ap�&��id�y�i`����*�iV��*G<{K�އ��W� ��E�^75 =��D�3��uBt135AB���������S��Tj� &	���Qq$�\�����[5+�[$�������~�Ѩ�8'.�Z+j 8��rdTt����3_.GFE=��<T�.f�p�<�+�<=�6�8��}9�G���]�� �d�8p�m�jC��%0EPj �E�k�EN�9ub?Iy&�$U�� ��hcT��$����F�q���ڥ�8筢�W��:�u.�a��-��������m�.�K���������ϫ�������:�~V����@�{�1�t�Ar+����:��:���g��/�/;J�؞���^��|��],�r��Ix$(2�{��N��&p���}��"
OT#%��^��:Hck�X�U�#u��g��:j��9��Iv��(�J� ��
2��*�SI��D�S$u��y�,�g�*� �[z�9�Թ��������he��˥o��O_�V�X|u�[�=I�U��C���*�YV}��蠮��}���.$���J]�q� ��c�3��:H:��cE/�?� ���W�cM>kߗ��l-:����V�ܟ�-� ��/��n-�f�*�����^0��*�[��.�Z�҃��QLx�jÔ�ur"�e�|�A:Iх��1�Sl�7/��U^:��I��|_ʼt�4�-#��Q����t�RV�!�#u��}D��t��S�l�?����"�����ȶ��8����C�;>��/$����!�s� �_�����q�o�ʶm�q�j�      p   �   x�eO;�0��S� h����� ]��T%����'�!AH���{.��v* ���j�hZM��Z{�>![��~��e@�I��Tf!���2�D�a!��q<ʎ��G~�$�9Vz%�5��h�1#�u|a^yvFzſ\W�g�E	g�$+��v)�x�&TS      q      x������ � �      s     x��P�j�0=K_��ьd����C/�(�6���6�K�|}�-��a��HV�FW�w�[S�Ǣh�'�^�/��霞����,��;����4m�=➌!�"��� �Y��`�������!�g���T%,��O����;�~��4Z*�<bC�O1TgT����vs臡�6c�H�nt��F�ui�9�F��su#=�rPd�b8{�o)0�	��Ϳ��%���ǥ�FA�����L�#��wC�*�p ����·      u   �   x�]�A�0E��=�w��	!	.�8j#�fZ��^�E���L���42��,��e�Ix`K�m��#��c�h���#i�	�̡h}g�B���ڏ�W���pC^8 �
��H�=��x���{���� [�vb[��U'�m����H�}5���%/�F$V����o�"�����梗AyY��iM�w��+�o�      v   B   x�s,HL�H�r,(�I��t������L���L.�/�O+���OI�
��/JL�JM�H,����� EQ~      w   ;  x���Mn� ���)��c��qع�*u�*�*�l��cƩ|������g�V�͓��f�B~�Ԡ�V�
����+gak�&ݷx�ŷ�S �{`���JX�)<��J��I!�\dbPI�mdt��2v��ͨ�����Iy|gd�MR)8��}���v�y����ʹ�鐉4dPCxm���l��t|�0&�X�<����*y���!)<��iN���5�}�ثV�OW�R�	�4��Pۂ�� 3�7�!�ҹ���ָN�% ++�T��h	�`p�?�9�!e\����)�קa�y�ԵB1Y	�|������     