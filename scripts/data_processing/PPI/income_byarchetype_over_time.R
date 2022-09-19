#### Alternative versions of datasets- (run after archetypes_over_time.R)
##    Archetype categorical variable, numeric variables for population in each income group
### NGS
filter(Arch_seqtab_pop, world_bank_economies != "All") %>% 
    pivot_longer(cols = `Insufficient data`:Sustain, names_to = "Archetype") %>% 
    pivot_wider(names_from = world_bank_economies, values_from = value) %>% View()
    write_csv("../../../data/NGS_Data_Tables/Timeseries/sequencing_income_byarchetype.csv")
### Testing
filter(Arch_testtab_pop, world_bank_economies != "All") %>% 
    pivot_longer(cols = `Insufficient data`:Sustain, names_to = "Archetype") %>% 
    pivot_wider(names_from = world_bank_economies, values_from = value) %>%
    write_csv("../../../data/NGS_Data_Tables/Timeseries/testing_income_byarchetype.csv")
