
		FILENAME SRCTTEG2 "./SAS_DATA.xml";
        FILENAME map "./SAS_MAP.xml";
        LIBNAME SRCTTEG2 xml xmlmap=map access=readonly;
		proc datasets library=SRCTTEG2;
		copy out=work;
		run;
		proc format;
		value
			CL_361_ 1="1 = initial"2="2 = follow up"3="3 = final";value
			CL_362_ 0="0 = male"1="1 = female";value
			CL_363_ 1="1 = Death"2="2 = Life threatening"3="3 = (prolongation) of hospitalization"4="4 = persistent or significant disability"5="5 = thrombolytic complication"6="6 = other medically important condition";value
			CL_364_ 1="1 = grade 1"2="2 = grade 2"3="3 = grade 3"4="4 = grade 4"5="5 = grade 5";value
			CL_365_ 1="1 = resolved"2="2 = resolved with sequelae"3="3 = ongoing"4="4 = Death";value
			CL_367_ 0="0 = no"1="1 = yes: placebo"2="2 = yes: Haemocomplettan P";value
			CL_368_ 1="1 = related"2="2 = not related"3="3 = unknown";value
			CL_369_ 0="0 = none"1="1 = yes(specify at Description of SAE)";value
			CL_934_ 0="0 = male"1="1= female";value
			CL_937_ 0="0 = no"1="1 = yes";value
			CL_936_ 0="0=no"1="1=yes, primary non-syndromic craniosynostosis"2="2=yes, Muencke Syndrome"3="3=yes, Saethre-Chotzen syndrome";value
			CL_938_ 1="1=scaphocephalus"2="2=trigonocephalus"3="3=plagio-/brachycephalus"4="4=combination";value
			CL_437_ 0="0 = male"1="1= female";value
			CL_440_ 0="0 = no"1="1 = yes";value
			CL_439_ 0="0=no"1="1=yes, primary non-syndromic craniosynostosis"2="2=yes, Muencke Syndrome"3="3=yes, Saethre-Chotzen syndrome";value
			CL_441_ 1="1=scaphocephalus"2="2=trigonocephalus"3="3=plagio-/brachycephalus"4="4=combination";value
			CL_375_ 0="0=no"1="1=yes";value
			CL_377_ 0="0=no"1="1=yes";value
			CL_380_ 1="1=according to protocol"2="2=withdrawal of consent"3="3=SAE"4="4=death"5="5=other";value
			CL_382_ 1="0=not done"2="1=done (please fill out)"3="2=data will follow (bulk measurement)";value
			CL_386_ 0="0 = no"1="1 = yes";value
			CL_387_ 1="<24 hrs"2="24-36hrs"3="36-48hrs"4=">48hrs";value
			CL_388_ 1="yes"0="no";value
			CL_390_ 0="0=no"1="1=yes";value
			CL_391_ 1="1=(possible) related"2="2=not related"3="3=unknown";value
			CL_392_ 1="1=resolved completely"2="2=resolved to baseline"3="3=ongoing / stable"4="4=ongoing";
		run;
		
				data _TEGFSAE;
				set _TEGFSAE;
				format _TYPEREPORT CL_361_.;
				run;
			
				data _TEGFSAE;
				set _TEGFSAE;
				format _GENDERV6 CL_362_.;
				run;
			
				data _TEGFSAE;
				set _TEGFSAE;
				format _SAECATEGORY CL_363_.;
				run;
			
				data _TEGFSAE;
				set _TEGFSAE;
				format _SEVERITYSAE CL_364_.;
				run;
			
				data _TEGFSAE;
				set _TEGFSAE;
				format _OUTCOMESAEV4 CL_365_.;
				run;
			
				data _TEGFS_TRIALMEDICATION;
				set _TEGFS_TRIALMEDICATION;
				format _TRIALDRUGDEBLINDEDV6 CL_367_.;
				run;
			
				data _TEGFS_TRIALMEDICATION;
				set _TEGFS_TRIALMEDICATION;
				format _RELATIONSHIPSAESTUDYDRUGV6 CL_368_.;
				run;
			
				data _TEGFS_TRIALMEDICATION;
				set _TEGFS_TRIALMEDICATION;
				format _ACTIONSTUDYDRUGV6 CL_369_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _GENDERMFSS CL_934_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _CONGENITALBLEEDINGDIATHESIS CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _CONGENITALPROTHROMBOTICRISK CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _HYPERSENSITIVITYHAEMOCOMPLE CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _KNOWNCOAGULOPATHYV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _CRANIOFACIALMALFORMATIONSYN CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _ACTIVEINFECTIONV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _ANEMIAHBLT6V3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _THROMOCYTOPENIAV8 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _THROMBOEMBOLICEVENTV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _HEREDCOAGDISORDERV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _OTHERSERIOUSV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _MEETSALLCRITERIAV3 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _CRANIOSYNOSTOSISMSC CL_936_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _WRITTENINFORMEDCONSENTV4 CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _CRANIOSYNOSTOSISNONMSC CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _TYPECRANIOSYNOSTOSISV5P CL_938_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _AGE5TO25MTH CL_937_.;
				run;
			
				data _TEGFREGISTRA;
				set _TEGFREGISTRA;
				format _AGE5TO15MONTHSV3 CL_440_.;
				run;
			
				data _TEGFPHYSICAL;
				set _TEGFPHYSICAL;
				format _PAPILLEEDEMAV10 CL_375_.;
				run;
			
				data _TEGFPHYSICAL;
				set _TEGFPHYSICAL;
				format _SIGNSOFTHROMBOSISV5 CL_375_.;
				run;
			
				data _TEGFPHYSICAL;
				set _TEGFPHYSICAL;
				format _AUSCULTATIONLUNGSYN CL_375_.;
				run;
			
				data _TEGFPHYSICAL;
				set _TEGFPHYSICAL;
				format _AUSCULTATIONHEARTYN CL_375_.;
				run;
			
				data _TEGFPHYSICAL;
				set _TEGFPHYSICAL;
				format _OTHERFINDINGSYN CL_375_.;
				run;
			
				data _TEGFPERIOPER;
				set _TEGFPERIOPER;
				format _INFUSIONMODIFIED CL_377_.;
				run;
			
				data _TEGFOFFSTUDY;
				set _TEGFOFFSTUDY;
				format _REASONOFFSTUDYV3 CL_380_.;
				run;
			
				data _TEGFLAB;
				set _TEGFLAB;
				format _STANDARDCOAGULATIONMONITORI CL_382_.;
				run;
			
				data _TEGFLAB;
				set _TEGFLAB;
				format _ROTEMINTEMDATA CL_382_.;
				run;
			
				data _TEGFLAB;
				set _TEGFLAB;
				format _ROTEMEXTEMDATA CL_382_.;
				run;
			
				data _TEGFLAB;
				set _TEGFLAB;
				format _ROTEMFIBTEMDATA CL_382_.;
				run;
			
				data _TEGFBLOODLOS;
				set _TEGFBLOODLOS;
				format _DISCHARGEICUV5 CL_386_.;
				run;
			
				data _TEGFBLOODLOS;
				set _TEGFBLOODLOS;
				format _DURATIONPOSTOPERICUADMISSIO CL_387_.;
				run;
			
				data _TEGFAE;
				set _TEGFAE;
				format _SHOWAELISTV7 CL_388_.;
				run;
			
				data _TEGFA_AE;
				set _TEGFA_AE;
				format _ISSAEV3 CL_390_.;
				run;
			
				data _TEGFA_AE;
				set _TEGFA_AE;
				format _RELATIONSTUDYDRUGV5 CL_391_.;
				run;
			
				data _TEGFA_AE;
				set _TEGFA_AE;
				format _OUTCOMEAEV5 CL_392_.;
				run;
			
				data _TEGFA_AE;
				set _TEGFA_AE;
				format _TREATMENTREQUIREDV3 CL_390_.;
				run;
			