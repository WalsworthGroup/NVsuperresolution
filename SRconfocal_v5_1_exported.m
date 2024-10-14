classdef SRconfocal_v5_1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        Superresolutionconfocalcontrolprogramv51Label  matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        MainTab                         matlab.ui.container.Tab
        LaserpowerPanel                 matlab.ui.container.Panel
        LaserPowerVoltage               matlab.ui.control.NumericEditField
        RawvoltagereadVLabel            matlab.ui.control.Label
        EnableLaserPowerMonitor         matlab.ui.control.CheckBox
        LaserPowerIndicator             matlab.ui.control.NumericEditField
        LaserpowermWLabel               matlab.ui.control.Label
        DatatipsPanel                   matlab.ui.container.Panel
        ScanmodeEditField               matlab.ui.control.EditField
        ScanmodeEditFieldLabel          matlab.ui.control.Label
        RecordDataTips                  matlab.ui.control.CheckBox
        UITable                         matlab.ui.control.Table
        GeneralPanel                    matlab.ui.container.Panel
        ZLabel_4                        matlab.ui.control.Label
        YLabel_4                        matlab.ui.control.Label
        XLabel_4                        matlab.ui.control.Label
        GlobalXPosmm                    matlab.ui.control.NumericEditField
        GlobalYPosmm                    matlab.ui.control.NumericEditField
        GlobalZPosmm                    matlab.ui.control.NumericEditField
        GlobalpositionmmLabel           matlab.ui.control.Label
        NDSwitch                        matlab.ui.control.Switch
        CurrentlightLamp                matlab.ui.control.Lamp
        CurrentlightLampLabel           matlab.ui.control.Label
        ColorSwitch                     matlab.ui.control.Switch
        meancps                         matlab.ui.control.NumericEditField
        meansigLabel                    matlab.ui.control.Label
        maxcps                          matlab.ui.control.NumericEditField
        maxcpsLabel                     matlab.ui.control.Label
        mincps                          matlab.ui.control.NumericEditField
        maxcpsLabel_2                   matlab.ui.control.Label
        ScanprogressGauge               matlab.ui.control.LinearGauge
        ScanprogressLabel               matlab.ui.control.Label
        ElapsedTime                     matlab.ui.control.EditField
        ElapsedtimehhmmssEditFieldLabel  matlab.ui.control.Label
        EstTimeLeft                     matlab.ui.control.EditField
        EsttimelefthhmmssLabel          matlab.ui.control.Label
        UnitLabel                       matlab.ui.control.Label
        StopscanButton                  matlab.ui.control.Button
        DwellTime                       matlab.ui.control.NumericEditField
        SamplerateLabel_2               matlab.ui.control.Label
        ReturnInitPos                   matlab.ui.control.CheckBox
        plotcurcps                      matlab.ui.control.CheckBox
        TakeDataTest                    matlab.ui.control.Button
        cursignal                       matlab.ui.control.NumericEditField
        currentcpsLabel                 matlab.ui.control.Label
        DscanplotsPanel                 matlab.ui.container.Panel
        ScanPlot_x                      matlab.ui.control.UIAxes
        ScanPlot_y                      matlab.ui.control.UIAxes
        ScanPlot_z                      matlab.ui.control.UIAxes
        DscanplotPanel                  matlab.ui.container.Panel
        UnitLabel_4                     matlab.ui.control.Label
        UnitLabel_3                     matlab.ui.control.Label
        autoadjustplotlimits            matlab.ui.control.CheckBox
        cmin                            matlab.ui.control.NumericEditField
        cmax                            matlab.ui.control.NumericEditField
        ColorbarlimitsLabel             matlab.ui.control.Label
        ScanPlot_2d                     matlab.ui.control.UIAxes
        LogTextArea                     matlab.ui.control.TextArea
        LogTextAreaLabel                matlab.ui.control.Label
        SavesettingsPanel               matlab.ui.container.Panel
        NoteonlyMATformatincludesallappsettingsLabel  matlab.ui.control.Label
        SaveDataButton                  matlab.ui.control.Button
        FormatDropDown                  matlab.ui.control.DropDown
        FormatDropDownLabel             matlab.ui.control.Label
        FileName                        matlab.ui.control.EditField
        FilenameLabel                   matlab.ui.control.Label
        Savefilepath                    matlab.ui.control.TextArea
        FilepathLabel                   matlab.ui.control.Label
        NanoDrivescanningPanel          matlab.ui.container.Panel
        CalculatestepsorincrementLabel_2  matlab.ui.control.Label
        IncrumLabel                     matlab.ui.control.Label
        IncrXNano                       matlab.ui.control.NumericEditField
        IncrYNano                       matlab.ui.control.NumericEditField
        IncrZNano                       matlab.ui.control.NumericEditField
        GenStepsNano                    matlab.ui.control.Button
        CalcIncrNano                    matlab.ui.control.Button
        UseNewScanCenterNano            matlab.ui.control.CheckBox
        ScanCenterPosXNano              matlab.ui.control.NumericEditField
        ScanCenterPosYNano              matlab.ui.control.NumericEditField
        ScanCenterPosZNano              matlab.ui.control.NumericEditField
        CenterScanRangeNano             matlab.ui.control.Button
        NanodrivetooriginButton         matlab.ui.control.Button
        NanoNreads                      matlab.ui.control.NumericEditField
        readsLabel                      matlab.ui.control.Label
        ReadNanoPos                     matlab.ui.control.Button
        automoveZ_Nano                  matlab.ui.control.CheckBox
        FlipXButton_Nano                matlab.ui.control.Button
        FlipYButton_Nano                matlab.ui.control.Button
        FlipZButton_Nano                matlab.ui.control.Button
        StepSizeUm                      matlab.ui.control.NumericEditField
        StepsizeumLabel                 matlab.ui.control.Label
        NanoXleft                       matlab.ui.control.Button
        NanoXright                      matlab.ui.control.Button
        NanoYup                         matlab.ui.control.Button
        NanoYdown                       matlab.ui.control.Button
        NanoZup                         matlab.ui.control.Button
        NanoZdown                       matlab.ui.control.Button
        Steps5                          matlab.ui.control.Button
        Steps10                         matlab.ui.control.Button
        Steps15                         matlab.ui.control.Button
        Steps20                         matlab.ui.control.Button
        Steps30                         matlab.ui.control.Button
        StepsLabel                      matlab.ui.control.Label
        NanoPosX                        matlab.ui.control.NumericEditField
        NanoPosY                        matlab.ui.control.NumericEditField
        NanoPosZ                        matlab.ui.control.NumericEditField
        TrackZNano                      matlab.ui.control.Button
        ZLabel                          matlab.ui.control.Label
        YLabel                          matlab.ui.control.Label
        XLabel                          matlab.ui.control.Label
        UnloadButton_nanodrive          matlab.ui.control.Button
        LoadButton_nanodrive            matlab.ui.control.Button
        PosumLabel                      matlab.ui.control.Label
        ScanrangeumLabel                matlab.ui.control.Label
        x15ButtonNano                   matlab.ui.control.Button
        x5ButtonNano                    matlab.ui.control.Button
        x10ButtonNano                   matlab.ui.control.Button
        x25ButtonNano                   matlab.ui.control.Button
        x50ButtonNano                   matlab.ui.control.Button
        x100ButtonNano                  matlab.ui.control.Button
        x200ButtonNano                  matlab.ui.control.Button
        Fix_xNano                       matlab.ui.control.CheckBox
        Fix_yNano                       matlab.ui.control.CheckBox
        Fix_zNano                       matlab.ui.control.CheckBox
        ToumLabel                       matlab.ui.control.Label
        FromumLabel                     matlab.ui.control.Label
        stepsLabel                      matlab.ui.control.Label
        nanoZscan_from                  matlab.ui.control.NumericEditField
        nanoZscan_to                    matlab.ui.control.NumericEditField
        nanoZscan_numsteps              matlab.ui.control.NumericEditField
        nanoYscan_from                  matlab.ui.control.NumericEditField
        nanoYscan_to                    matlab.ui.control.NumericEditField
        nanoYscan_numsteps              matlab.ui.control.NumericEditField
        nanoXscan_from                  matlab.ui.control.NumericEditField
        nanoXscan_to                    matlab.ui.control.NumericEditField
        nanoXscan_numsteps              matlab.ui.control.NumericEditField
        FixLabel                        matlab.ui.control.Label
        ScanNanoButton                  matlab.ui.control.Button
        MicroDrivescanningPanel         matlab.ui.container.Panel
        ReadMicroPos                    matlab.ui.control.Button
        CoarseZdown                     matlab.ui.control.Button
        CoarseZup                       matlab.ui.control.Button
        CoarseYdown                     matlab.ui.control.Button
        CoarseYup                       matlab.ui.control.Button
        CoarseXright                    matlab.ui.control.Button
        CoarseXleft                     matlab.ui.control.Button
        TLabel                          matlab.ui.control.Label
        GLabel                          matlab.ui.control.Label
        SLabel                          matlab.ui.control.Label
        DLabel                          matlab.ui.control.Label
        ALabel                          matlab.ui.control.Label
        WLabel                          matlab.ui.control.Label
        CalculatestepsorincrementLabel  matlab.ui.control.Label
        IncrX                           matlab.ui.control.NumericEditField
        IncrY                           matlab.ui.control.NumericEditField
        IncrZ                           matlab.ui.control.NumericEditField
        IncrmmLabel                     matlab.ui.control.Label
        GenSteps                        matlab.ui.control.Button
        CalcIncr                        matlab.ui.control.Button
        LoadButton_microdrive           matlab.ui.control.Button
        UnloadButton_microdrive         matlab.ui.control.Button
        MovetooriginButton              matlab.ui.control.Button
        ResetEncoders                   matlab.ui.control.Button
        ScanMicro                       matlab.ui.control.Button
        TrackZMicro                     matlab.ui.control.Button
        enableincrmovt                  matlab.ui.control.CheckBox
        automoveZ                       matlab.ui.control.CheckBox
        CoarseXscan_from                matlab.ui.control.NumericEditField
        CoarseYscan_from                matlab.ui.control.NumericEditField
        CoarseZscan_from                matlab.ui.control.NumericEditField
        CoarseXscan_to                  matlab.ui.control.NumericEditField
        CoarseYscan_to                  matlab.ui.control.NumericEditField
        CoarseZscan_to                  matlab.ui.control.NumericEditField
        CoarseXscan_numsteps            matlab.ui.control.NumericEditField
        CoarseYscan_numsteps            matlab.ui.control.NumericEditField
        CoarseZscan_numsteps            matlab.ui.control.NumericEditField
        FlipXButton                     matlab.ui.control.Button
        FlipYButton                     matlab.ui.control.Button
        FlipZButton                     matlab.ui.control.Button
        Coarse_Fix_X                    matlab.ui.control.CheckBox
        Coarse_Fix_Y                    matlab.ui.control.CheckBox
        Coarse_Fix_Z                    matlab.ui.control.CheckBox
        MicroXPos                       matlab.ui.control.NumericEditField
        MicroYPos                       matlab.ui.control.NumericEditField
        MicroZPos                       matlab.ui.control.NumericEditField
        ZLabel_3                        matlab.ui.control.Label
        YLabel_3                        matlab.ui.control.Label
        XLabel_3                        matlab.ui.control.Label
        TommLabel                       matlab.ui.control.Label
        FrommmLabel                     matlab.ui.control.Label
        stepsLabel_2                    matlab.ui.control.Label
        FixLabel_2                      matlab.ui.control.Label
        MicroDrivePosmmLabel            matlab.ui.control.Label
        UseNewScanCenter                matlab.ui.control.CheckBox
        ScanCenterPosX                  matlab.ui.control.NumericEditField
        ScanCenterPosY                  matlab.ui.control.NumericEditField
        ScanCenterPosZ                  matlab.ui.control.NumericEditField
        CenterScanRange                 matlab.ui.control.Button
        ScanrangeshortcutsmmLabel       matlab.ui.control.Label
        x001Button                      matlab.ui.control.Button
        x005Button                      matlab.ui.control.Button
        x025Button                      matlab.ui.control.Button
        x01Button                       matlab.ui.control.Button
        x05Button                       matlab.ui.control.Button
        x1Button                        matlab.ui.control.Button
        StepSizemm                      matlab.ui.control.NumericEditField
        StepsizemmEditFieldLabel        matlab.ui.control.Label
        enablekeyboardMicro             matlab.ui.control.CheckBox
        DatastreamingmodeTab            matlab.ui.container.Tab
        DataStreamPlotAutoScale         matlab.ui.control.CheckBox
        DataStreamPlotYMin              matlab.ui.control.NumericEditField
        SamplerateLabel_17              matlab.ui.control.Label
        DataStreamPlotYMax              matlab.ui.control.NumericEditField
        SamplerateLabel_16              matlab.ui.control.Label
        MaxStreamBufferSize             matlab.ui.control.NumericEditField
        SamplerateLabel_8               matlab.ui.control.Label
        SamplerateLabel_7               matlab.ui.control.Label
        CurSigMean                      matlab.ui.control.NumericEditField
        currentcpsLabel_2               matlab.ui.control.Label
        CurSigSD                        matlab.ui.control.NumericEditField
        currentcpsLabel_3               matlab.ui.control.Label
        StreamDispNumPoints             matlab.ui.control.NumericEditField
        SamplerateLabel_6               matlab.ui.control.Label
        UnitLabel_2                     matlab.ui.control.Label
        ReadsPerMean                    matlab.ui.control.NumericEditField
        SamplerateLabel_4               matlab.ui.control.Label
        TimePerRead                     matlab.ui.control.NumericEditField
        WilldisableregularscanningmodeLabel  matlab.ui.control.Label
        Gauge_upper_limit               matlab.ui.control.NumericEditField
        StreamStartStop                 matlab.ui.control.Button
        SamplerateLabel_3               matlab.ui.control.Label
        siglivegauge                    matlab.ui.control.SemicircularGauge
        SignalkcpsLabel                 matlab.ui.control.Label
        UIAxesDataStream                matlab.ui.control.UIAxes
        GeneralsettingsTab              matlab.ui.container.Tab
        DummydevicesPanel               matlab.ui.container.Panel
        UseMicroDummy                   matlab.ui.control.CheckBox
        UseNanoDummy                    matlab.ui.control.CheckBox
        UseDAQDummy                     matlab.ui.control.CheckBox
        IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel  matlab.ui.control.Label
        MFF101Panel                     matlab.ui.container.Panel
        NDonpositionLabel               matlab.ui.control.Label
        MFFtimeout                      matlab.ui.control.NumericEditField
        MFFpollperiod                   matlab.ui.control.NumericEditField
        SerialNumberND                  matlab.ui.control.EditField
        SerialNumbercolor               matlab.ui.control.EditField
        EnableLabel                     matlab.ui.control.Label
        EnableColorMFF                  matlab.ui.control.CheckBox
        EnableNDMFF                     matlab.ui.control.CheckBox
        SerialNumberNDEditFieldLabel    matlab.ui.control.Label
        OpenMFFconnButton               matlab.ui.control.Button
        RedgreenflipperLabel_2          matlab.ui.control.Label
        MovementTimeoutmsLabel          matlab.ui.control.Label
        PollperiodmsEditFieldLabel      matlab.ui.control.Label
        MFFPositionSwitchND             matlab.ui.control.Switch
        MFFPositionSwitchColor          matlab.ui.control.Switch
        RedPos                          matlab.ui.control.DropDown
        RedpositionDropDownLabel        matlab.ui.control.Label
        NDPos                           matlab.ui.control.DropDown
        RedgreenflipperLabel            matlab.ui.control.Label
        SerialNumbercolorEditFieldLabel  matlab.ui.control.Label
        MicroDriveGlobalPositionPanel   matlab.ui.container.Panel
        MicroSerialXY                   matlab.ui.control.NumericEditField
        MinpeakheightVLabel_24          matlab.ui.control.Label
        MicroSerialZ                    matlab.ui.control.NumericEditField
        MinpeakheightVLabel_25          matlab.ui.control.Label
        MoveTimeMult                    matlab.ui.control.NumericEditField
        MaxLabel                        matlab.ui.control.Label
        MinLabel                        matlab.ui.control.Label
        Xmax                            matlab.ui.control.NumericEditField
        Ymax                            matlab.ui.control.NumericEditField
        Zmax                            matlab.ui.control.NumericEditField
        ZLabel_2                        matlab.ui.control.Label
        YLabel_2                        matlab.ui.control.Label
        XLabel_2                        matlab.ui.control.Label
        Xmin                            matlab.ui.control.NumericEditField
        Ymin                            matlab.ui.control.NumericEditField
        Zmin                            matlab.ui.control.NumericEditField
        VelocitymmsLabel                matlab.ui.control.Label
        MovestepthresholdmmLabel        matlab.ui.control.Label
        MovevelocitylimitsLabel         matlab.ui.control.Label
        MinpeakheightVLabel_10          matlab.ui.control.Label
        Xfarmovevel                     matlab.ui.control.NumericEditField
        Yfarmovevel                     matlab.ui.control.NumericEditField
        Zfarmovevel                     matlab.ui.control.NumericEditField
        Xmovedistlim                    matlab.ui.control.NumericEditField
        Ymovedistlim                    matlab.ui.control.NumericEditField
        Zmovedistlim                    matlab.ui.control.NumericEditField
        regmovevel                      matlab.ui.control.NumericEditField
        MicroDrivePrecision             matlab.ui.control.NumericEditField
        ZeroNanodriveaxisbeforemovingglobalpositionLabel  matlab.ui.control.Label
        ZeroNanodriveX                  matlab.ui.control.CheckBox
        ZeroNanodriveY                  matlab.ui.control.CheckBox
        ZeroNanodriveZ                  matlab.ui.control.CheckBox
        MovestepthresholdmmLabel_2      matlab.ui.control.Label
        Xdistlimincr                    matlab.ui.control.NumericEditField
        Ydistlimincr                    matlab.ui.control.NumericEditField
        Zdistlimincr                    matlab.ui.control.NumericEditField
        IncrementsmmLabel               matlab.ui.control.Label
        Xmoveincr                       matlab.ui.control.NumericEditField
        Ymoveincr                       matlab.ui.control.NumericEditField
        Zmoveincr                       matlab.ui.control.NumericEditField
        MinpeakheightVLabel_4           matlab.ui.control.Label
        MovelargerdistancesinincrementsLabel  matlab.ui.control.Label
        zigzagscan                      matlab.ui.control.CheckBox
        SafetylimitsmmLabel             matlab.ui.control.Label
        MinpeakheightVLabel_2           matlab.ui.control.Label
        DAQPanel                        matlab.ui.container.Panel
        LaserpowerPDmonitorPanel        matlab.ui.container.Panel
        VoltagepowerconversioncoeffsLabel  matlab.ui.control.Label
        MinpeakheightVLabel_17          matlab.ui.control.Label
        MinpeakheightVLabel_16          matlab.ui.control.Label
        LaserMonitorPeriod              matlab.ui.control.NumericEditField
        MinpeakheightVLabel_15          matlab.ui.control.Label
        InputChLaserMonitor             matlab.ui.control.NumericEditField
        LaserMonitorConvOffset          matlab.ui.control.NumericEditField
        LaserMonitorConvSlope           matlab.ui.control.NumericEditField
        MinpeakheightVLabel_14          matlab.ui.control.Label
        AnaloginputPanel                matlab.ui.container.Panel
        InputCh                         matlab.ui.control.NumericEditField
        MinpeakheightVLabel_8           matlab.ui.control.Label
        SampRate                        matlab.ui.control.NumericEditField
        MinpeakheightVLabel_7           matlab.ui.control.Label
        DynRange                        matlab.ui.control.NumericEditField
        MinpeakheightVLabel_6           matlab.ui.control.Label
        EdgecountingPanel               matlab.ui.container.Panel
        CtrOutTermTrig                  matlab.ui.control.NumericEditField
        SamplerateLabel_27              matlab.ui.control.Label
        CtrInTrig                       matlab.ui.control.NumericEditField
        SamplerateLabel                 matlab.ui.control.Label
        CtrOutTerm                      matlab.ui.control.NumericEditField
        InputPFILabel_2                 matlab.ui.control.Label
        CtrInTerm                       matlab.ui.control.NumericEditField
        InputPFILabel                   matlab.ui.control.Label
        CtrIn                           matlab.ui.control.NumericEditField
        MinpeakheightVLabel             matlab.ui.control.Label
        CtrOut                          matlab.ui.control.NumericEditField
        CounteroutputLabel              matlab.ui.control.Label
        AcquisitionmodeButtonGroup      matlab.ui.container.ButtonGroup
        EdgecountButton                 matlab.ui.control.RadioButton
        AnalogvoltageButton             matlab.ui.control.RadioButton
        ReinitializeDAQ                 matlab.ui.control.Button
        DevName                         matlab.ui.control.EditField
        DevicenameLabel                 matlab.ui.control.Label
        AxismappingPanel                matlab.ui.container.Panel
        SetAxesMap                      matlab.ui.control.Button
        MicroaxesLabel                  matlab.ui.control.Label
        MicroAxisX                      matlab.ui.control.EditField
        MicroAxisY                      matlab.ui.control.EditField
        MicroAxisZ                      matlab.ui.control.EditField
        LabZLabel                       matlab.ui.control.Label
        LabYLabel                       matlab.ui.control.Label
        LabXLabel                       matlab.ui.control.Label
        NanoAxisX                       matlab.ui.control.EditField
        NanoAxisY                       matlab.ui.control.EditField
        NanoAxisZ                       matlab.ui.control.EditField
        NanoaxesLabel                   matlab.ui.control.Label
        GeneralstartupPanel             matlab.ui.container.Panel
        DisableStagePosSave             matlab.ui.control.CheckBox
        SaveSettingsExit                matlab.ui.control.CheckBox
        SettingsfilepathLabel           matlab.ui.control.Label
        SaveSettings                    matlab.ui.control.Button
        ReloadSettings                  matlab.ui.control.Button
        SettingsFilePath                matlab.ui.control.TextArea
        movecountlim                    matlab.ui.control.NumericEditField
        MinpeakheightVLabel_9           matlab.ui.control.Label
        LogMsgLimit                     matlab.ui.control.NumericEditField
        MinpeakheightVLabel_5           matlab.ui.control.Label
        MCLLibPath                      matlab.ui.control.TextArea
        MCLlibrarypathaddbackslashatendTextAreaLabel  matlab.ui.control.Label
        startupLoadDAQ                  matlab.ui.control.CheckBox
        startupLoadNano                 matlab.ui.control.CheckBox
        startupLoadMicro                matlab.ui.control.CheckBox
        NanoDrivesettingsTab            matlab.ui.container.Tab
        BatchModeSettingsPanel          matlab.ui.container.Panel
        InactiveLabelBatch              matlab.ui.control.Label
        MinpeakheightVLabel_23          matlab.ui.control.Label
        NanoFixedMoveTimeBatch          matlab.ui.control.NumericEditField
        MinpeakheightVLabel_22          matlab.ui.control.Label
        MaxCoordsPerBatch               matlab.ui.control.NumericEditField
        MinpeakheightVLabel_20          matlab.ui.control.Label
        NanoDriveClk                    matlab.ui.control.NumericEditField
        MinpeakheightVLabel_21          matlab.ui.control.Label
        WfmWriteRate                    matlab.ui.control.NumericEditField
        WaitFinishRead                  matlab.ui.control.NumericEditField
        MinpeakheightVLabel_19          matlab.ui.control.Label
        BatchModeSwitch                 matlab.ui.control.Switch
        DbatchscanningmodeSwitchLabel   matlab.ui.control.Label
        NanoDrivePosMonitorPeriod       matlab.ui.control.NumericEditField
        MinpeakheightVLabel_18          matlab.ui.control.Label
        NanoDrivePosMonitor             matlab.ui.control.CheckBox
        NanoUpdateEachStep              matlab.ui.control.CheckBox
        zigzagscanNano                  matlab.ui.control.CheckBox
        NanoSkipifSame                  matlab.ui.control.CheckBox
        NanoPositionError               matlab.ui.container.Panel
        ZLabel_Ori_2                    matlab.ui.control.Label
        YLabel_Ori_2                    matlab.ui.control.Label
        XLabel_Ori_2                    matlab.ui.control.Label
        AbsPosCorrSwitch                matlab.ui.control.CheckBox
        NanoDriveCorrXint               matlab.ui.control.NumericEditField
        NanoDriveCorrYint               matlab.ui.control.NumericEditField
        NanoDriveCorrZint               matlab.ui.control.NumericEditField
        NanoDriveCorrXX                 matlab.ui.control.NumericEditField
        NanoDriveCorrYX                 matlab.ui.control.NumericEditField
        NanoDriveCorrZX                 matlab.ui.control.NumericEditField
        NanoDriveCorrXY                 matlab.ui.control.NumericEditField
        NanoDriveCorrYY                 matlab.ui.control.NumericEditField
        NanoDriveCorrZY                 matlab.ui.control.NumericEditField
        NanoDriveCorrXZ                 matlab.ui.control.NumericEditField
        NanoDriveCorrYZ                 matlab.ui.control.NumericEditField
        NanoDriveCorrZZ                 matlab.ui.control.NumericEditField
        NanoDriveCorrLabel              matlab.ui.control.Label
        MeasPosErrStart                 matlab.ui.control.Button
        MeasPosErrStop                  matlab.ui.control.Button
        PosErrCoeffUpdate               matlab.ui.control.Button
        ElapsedtimesLabel_2             matlab.ui.control.Label
        SavePosErrCoeffs                matlab.ui.control.Button
        LoadNanoDriveCorr               matlab.ui.control.Button
        PosErrScanIncr                  matlab.ui.control.NumericEditField
        MeasPosErrXZ                    matlab.ui.control.CheckBox
        MeasPosErrY                     matlab.ui.control.CheckBox
        NanoDrivePrecision              matlab.ui.control.NumericEditField
        MinpeakheightVLabel_11          matlab.ui.control.Label
        ZLabel_Ori                      matlab.ui.control.Label
        YLabel_Ori                      matlab.ui.control.Label
        XLabel_Ori                      matlab.ui.control.Label
        NanoDriveRealX                  matlab.ui.control.NumericEditField
        NanoDriveRealY                  matlab.ui.control.NumericEditField
        NanoDriveRealZ                  matlab.ui.control.NumericEditField
        NanoDriveRealPos                matlab.ui.control.Label
        StagesettlingtimeaftermovementButtonGroup  matlab.ui.container.ButtonGroup
        InactiveLabelNormal             matlab.ui.control.Label
        NanoSaveParams                  matlab.ui.control.CheckBox
        NanoSaveFilePath                matlab.ui.control.TextArea
        FilepathLabel_3                 matlab.ui.control.Label
        MinpeakheightVLabel_13          matlab.ui.control.Label
        MinpeakheightVLabel_12          matlab.ui.control.Label
        unitlabel_nm                    matlab.ui.control.Label
        NanoFixedMoveTime               matlab.ui.control.NumericEditField
        NanoPosErrThreshold             matlab.ui.control.NumericEditField
        NanoMinSettleTime               matlab.ui.control.NumericEditField
        NanoMoveTimeout                 matlab.ui.control.NumericEditField
        NanoDispPosError                matlab.ui.control.CheckBox
        unitlabel_ms                    matlab.ui.control.Label
        PositionerrorthresholdButton    matlab.ui.control.RadioButton
        FixedsettlingtimeButton         matlab.ui.control.RadioButton
        MonitorlivestagepositionPanel   matlab.ui.container.Panel
        SamplerateLabel_26              matlab.ui.control.Label
        SamplerateLabel_25              matlab.ui.control.Label
        SamplerateLabel_24              matlab.ui.control.Label
        SamplerateLabel_23              matlab.ui.control.Label
        SamplerateLabel_22              matlab.ui.control.Label
        SamplerateLabel_21              matlab.ui.control.Label
        SamplerateLabel_20              matlab.ui.control.Label
        SamplerateLabel_19              matlab.ui.control.Label
        MonitorNanoMaxStreamBufferSize  matlab.ui.control.NumericEditField
        SamplerateLabel_18              matlab.ui.control.Label
        SamplerateLabel_14              matlab.ui.control.Label
        NanoStageXMonMean               matlab.ui.control.NumericEditField
        SamplerateLabel_13              matlab.ui.control.Label
        NanoStageXMonSD                 matlab.ui.control.NumericEditField
        NanoStageXMonPlotMax            matlab.ui.control.NumericEditField
        SamplerateLabel_12              matlab.ui.control.Label
        NanoStageXMonPlotMin            matlab.ui.control.NumericEditField
        SamplerateLabel_11              matlab.ui.control.Label
        NanoStageYMonMean               matlab.ui.control.NumericEditField
        NanoStageYMonSD                 matlab.ui.control.NumericEditField
        NanoStageYMonPlotMax            matlab.ui.control.NumericEditField
        NanoStageYMonPlotMin            matlab.ui.control.NumericEditField
        NanoStageZMonMean               matlab.ui.control.NumericEditField
        NanoStageZMonSD                 matlab.ui.control.NumericEditField
        NanoStageZMonPlotMax            matlab.ui.control.NumericEditField
        NanoStageZMonPlotMin            matlab.ui.control.NumericEditField
        MonitorNanoAutoScaleX           matlab.ui.control.CheckBox
        MonitorNanoAutoScaleY           matlab.ui.control.CheckBox
        MonitorNanoAutoScaleZ           matlab.ui.control.CheckBox
        MonitorNanoDispNumPoints        matlab.ui.control.NumericEditField
        SamplerateLabel_9               matlab.ui.control.Label
        MonitorNanoAnalyzeNumPoints     matlab.ui.control.NumericEditField
        SamplerateLabel_15              matlab.ui.control.Label
        MonitorStagePosStartStop        matlab.ui.control.Button
        MonitorNanoStageXPlot           matlab.ui.control.UIAxes
        MonitorNanoStageYPlot           matlab.ui.control.UIAxes
        MonitorNanoStageZPlot           matlab.ui.control.UIAxes
        HelpTab                         matlab.ui.container.Tab
        MFF101helpLabel                 matlab.ui.control.Label
        MicroDrivePrecisionLabel_2      matlab.ui.control.Label
        explainglobalpos                matlab.ui.control.Label
        MicroDrivesettingshelpLabel     matlab.ui.control.Label
    end

    %% Changelog
    % v.2 faster DAQ reading time by operating in continuous mode
    % (feature later removed because this distorted the resulting image)
    % v.3 new DAQ mechanism incorporating edge counting and pulsing
    % v.3.1 added capability to scan MicroDrive in all 3D
    % v.3.2 changes to allow integrated coordinate system between Micro and NanoDrive
    % v.3.3 add ability to restrict maximum MicroDrive stage velocity to prevent jerking
    % v.3.4 add many changes: live streaming mode, capability to switch
    % between analog input voltage and photon edge counting, many UI
    % improvements (including NanoDrive arrow keys and scan elapsed time),
    % round stage coords to some inputted precision, option to zero
    % NanoDrive before shifting MicroDrive, saving all positions and scan
    % ranges
    % v.4.0 Added nanostage position error correction, settling time
    % monitoring. Fixed some bugs with v.3.4 Started to work on scan tiling
    % v.4.1 Position error correction coeffs are now in um, not percent.
    % Added separate NanoDrive setting tab, capability to measure pos error
    % correction, can control MFF101 filter flipper to switch between red &
    % green light
    % v.4.2 Improved main panel buttons to adjust scan range. Can now
    % control two MFF101 filter flippers (the second one to control ND
    % filter). Added Nanodrive position monitoring capabilities. Improved
    % data streaming features. Many other bug fixes and cosmetic features.
    % v.4.3 Added laser power monitoring & data tips. Added some public 
    % properties and wrapper functions to allow access and contrfol of app 
    % from console. Improved saving function
    % v.4.4 Standardized units to kcps instead of cps. Added dummy
    % capabilities. Cosmetic improvements. Added option to suppress
    % updating front panel during nanoscans to improve efficiency.
    % v.4.5 changed FunctionPoolDAQNew functions to NIDAQPool class, which
    % more closely follows MATLAB recommended programming practices.
    % Modified timed tasks to overcome 8-hour MATLAB timer limits. Allow
    % saving and reloading all app settings. Several efficiency and
    % cosmetic improvements.
    % v5.0 added new integrated DAQ + nanostage movement

    %% Variables for use in code
    properties (Access = private)
        libfolder
        appDepPath = strcat(fileparts(mfilename('fullpath')),'\Dependencies'); %dependencies path
        movecount = 0; % counter to track how many moves with stages have been made
        scanprog %scan progress tracker
        allowlogmsg
        axismapvecmicro %for mappings of lab to microstage axes
        axismapvecnano %for mappings of lab to nanostage axes
        colorbar2d %for 2d plot colorbar
        settings %structure to store all front panel settings
    end
    
    properties (Access = public) %public properties that can be accessed from outside, including the console
        % General properties
        data % store data object
        contscan % continue scan (used for the stop button)
        scan2dparams %for storing parameters of the latest scan
        mff % container for all MFF flipper related stuff
        slspool % saveloadstate object, used for saving and loading state of the app

        % MicroDrive properties
        MicroXPosCur
        MicroYPosCur
        MicroZPosCur
        microhandle % MCL NanoDrive lib handle
        MCLmicroset % MCL MicroDrive settings (mainly for internal use, not front panel settings)

        %NanoDrive properties
        Xnano
        Ynano
        Znano
        nanorealpos %Nanodrive positions based on manufacturer (instead of lab) axes
        nanohandle % MCL NanoDrive lib handle
        MCLnanoset % MCL NanoDrive settings (mainly for internal use, not front panel settings)
        streambuffernano %for streaming Nanodrive positions

        %DAQ properties
        nidaqpool %NIDAQpool object, for invoking methods
        dq % Structure for storing DAQ-related properties
        streambufferdaq % for streaming DAQ
        dqlaser % DAQ object for laser monitor PD
    end

    % functions used only in code view (not buttons)
    methods (Access = private)
        %% General functions
        function logmsg(app,message) % Log message in log area based on what is happening in the app
            % also delete old messages to keep total # of messages below
            % LogMsgLimit
            if app.allowlogmsg == 1
                newlog = [app.LogTextArea.Value;message];
                if length(newlog) > app.LogMsgLimit.Value
                    newlog = newlog(2:end);
                end
                app.LogTextArea.Value = newlog;
                scroll(app.LogTextArea, 'bottom');
            end
        end

        function incrcheckmovecount(app) %increment and check movecount, if above the limit then automatically save positions to a file
            app.movecount = app.movecount+1;
            if app.contscan == 1 && app.DisableStagePosSave.Value == 1 %if app is in the middle of a scan and the option is activated, don't save stage pos to improve efficiency
                return
            end
            if app.movecount >= app.movecountlim.Value
                SaveSettingsButtonPushed(app,[]); %save all settings
            end
        end

        function updatecoarsescanparams(app,deltax,deltay,deltaz) % function to automatically update coarse scan params
            %determine scan center: either a new inputted value or the current value
            if app.UseNewScanCenter.Value == 1
                x = app.ScanCenterPosX.Value;
                y = app.ScanCenterPosY.Value;
                z = app.ScanCenterPosZ.Value;
            else
                x = app.MicroXPosCur;
                y = app.MicroYPosCur;
                z = app.MicroZPosCur;
            end

            %Generate low and high scan limits, bounded by MicroDrive
            %safety limits
            boundsx = genboundedscanlimits(x,deltax,app.Xmin.Value,app.Xmax.Value);
            boundsy = genboundedscanlimits(y,deltay,app.Ymin.Value,app.Ymax.Value);
            boundsz = genboundedscanlimits(z,deltaz,app.Zmin.Value,app.Zmax.Value);

            %round to MicroDrive precision
            boundsx = roundtomicroprec(app,boundsx);
            boundsy = roundtomicroprec(app,boundsy);
            boundsz = roundtomicroprec(app,boundsz);

            if app.Coarse_Fix_X.Value == 0
                app.CoarseXscan_from.Value = boundsx(1);
                app.CoarseXscan_to.Value = boundsx(2);
            end
            if app.Coarse_Fix_Y.Value == 0
                app.CoarseYscan_from.Value = boundsy(1);
                app.CoarseYscan_to.Value = boundsy(2);
            end
            if app.Coarse_Fix_Z.Value == 0
                app.CoarseZscan_from.Value = boundsz(1);
                app.CoarseZscan_to.Value = boundsz(2);
            end

            logmsg(app,sprintf('Updated scan limits with scan center (%.2f,%.2f,%.2f).',x,y,z));
        end

        function updatenanoscanparams(app,deltax,deltay,deltaz) %function to automatically update nanoscan params
            if app.UseNewScanCenterNano.Value == 1
                x = app.ScanCenterPosXNano.Value;
                y = app.ScanCenterPosYNano.Value;
                z = app.ScanCenterPosZNano.Value;
            else
                x = app.Xnano;
                y = app.Ynano;
                z = app.Znano;
            end

            logmsg(app,sprintf('Updated scan limits with scan center (%.2f,%.2f,%.2f).',x,y,z));

            %Generate low and high scan limits, bounded within -100,100
            %which is the range of the Nanodrive stage
            minbound = -100;
            maxbound = 100;
            boundsx = genboundedscanlimits(x,deltax,minbound,maxbound);
            boundsy = genboundedscanlimits(y,deltay,minbound,maxbound);
            boundsz = genboundedscanlimits(z,deltaz,minbound,maxbound);

            %Round to Nanodrive precision
            boundsx = roundtonanoprec(app,boundsx);
            boundsy = roundtonanoprec(app,boundsy);
            boundsz = roundtonanoprec(app,boundsz);

            if app.Fix_xNano.Value == 0
                app.nanoXscan_from.Value = boundsx(1);
                app.nanoXscan_to.Value = boundsx(2);
            end
            if app.Fix_yNano.Value == 0
                app.nanoYscan_from.Value = boundsy(1);
                app.nanoYscan_to.Value = boundsy(2);
            end
            if app.Fix_zNano.Value == 0
                app.nanoZscan_from.Value = boundsz(1);
                app.nanoZscan_to.Value = boundsz(2);
            end
        end

        function updatenanosteps(app,steps)
            if app.Fix_xNano.Value == 0
                app.nanoXscan_numsteps.Value = steps;
            end
            if app.Fix_yNano.Value == 0
                app.nanoYscan_numsteps.Value = steps;
            end
            if app.Fix_zNano.Value == 0
                app.nanoZscan_numsteps.Value = steps;
            end
        end

        function startscanprogress(app,totalindex) %start scan progress timing
            app.scanprog.timer = tic; %start timer
            app.scanprog.curindex = 0;
            app.scanprog.totalindex = totalindex;
            app.ElapsedTime.Value = "00:00:00";
            app.EstTimeLeft.Value = "00:00:00";
        end

        function updatescanprogress(app) %update scan progress bar
            app.scanprog.curindex = app.scanprog.curindex + 1;
            seconds = toc(app.scanprog.timer);
            app.ElapsedTime.Value = convertTime(str2double(sprintf('%02d', seconds)));
            app.EstTimeLeft.Value = convertTime(seconds * (app.scanprog.totalindex-app.scanprog.curindex)/app.scanprog.curindex); %estimate time left
            app.ScanprogressGauge.Value = app.scanprog.curindex/app.scanprog.totalindex * 100;
        end

        function [b, a] = swap(~,a, b)
        end

        function b = roundtomicroprec(app,a) %round number to MicroDrive precision
            b = round(a/app.MicroDrivePrecision.Value)*app.MicroDrivePrecision.Value;
        end

        function b = roundtonanoprec(app,a) %round number to NanoDrive precision
            b = round(a/app.NanoDrivePrecision.Value)*app.NanoDrivePrecision.Value;
        end

        function resbuffer = updatebuffer(~,initbuffer,datapoint)
            % function to update a buffer used in streaming. Always add
            % element at the end and remove the first element.
            resbuffer = circshift(initbuffer,-1); %shift all element position by -1
            resbuffer(end) = datapoint; %replace first element (now at end) with new element
        end

        %% Axis mapping functions
        function axisname = getaxisname(~,axisnum) % convert axis number to axis name string
            axisinput = [1 2 3];
            axisoutput = ["X","Y","Z"];
            [~,idx] = ismember(axisnum,axisinput);
            axisname = axisoutput(idx);
        end

        function axisnum = getaxisno(~,axisname) % convert axis number to axis name string
            axisinput = ["X","Y","Z"];
            axisoutput = [1 2 3];
            [~,idx] = ismember(axisname,axisinput);
            axisnum = axisoutput(idx);
        end

        function [axis,dir] = mapaxes(app,labaxis,axismapvec) % map input lab axis to an output axis given by axismapvec. Returns an axis number
            % Assumes that axismapvec contains the mapping for X, Y, Z
            % lab axes respectively, e.g. [Z, Y, -X].
            % Assumes that labaxis is in char form, e.g. 'X'

            % First, determine if there are sign flips involved, generate
            % dirvec and dir
            firstchars = extract(axismapvec,1); %take first characters of each member of axismapvec
            dirvec = -1*(firstchars == "-"); %look for minus signs in the first characters
            dirvec(dirvec == 0) = 1; % replace 0 with 1. Now sign vec is ready
            axisnum = getaxisno(app,labaxis); % Next, get number of labaxis (1 to 3)
            dir = dirvec(axisnum); % obtain direction from sign vec

            % Second, map axis according to axismapvec
            newaxisname = axismapvec(axisnum); %take relevant member of axismapvec
            newaxisname = extract(newaxisname,strlength(newaxisname)); %remove any negative signs
            axis = getaxisno(app,newaxisname); %convert to axis number that is understandable by the stage
        end

        function prepMapaxes(app) %read axis mapping entered by user
            app.axismapvecmicro= [convertCharsToStrings(app.MicroAxisX.Value),convertCharsToStrings(app.MicroAxisY.Value),convertCharsToStrings(app.MicroAxisZ.Value)];
            app.axismapvecnano = [convertCharsToStrings(app.NanoAxisX.Value),convertCharsToStrings(app.NanoAxisY.Value),convertCharsToStrings(app.NanoAxisZ.Value)];
        end

        
        function updateglobalpos(app) %compute and update global position indicators by adding positions from Micro + Nanodrive
            %make sure all units in mm
            app.GlobalXPosmm.Value = app.MicroXPos.Value + app.NanoPosX.Value/1000;
            app.GlobalYPosmm.Value = app.MicroYPos.Value + app.NanoPosY.Value/1000;
            app.GlobalZPosmm.Value = app.MicroZPos.Value + app.NanoPosZ.Value/1000;
        end

        %% MicroDrive functions
        function mclcleanup(app, errors)
            calllib('MicroDrive', 'MCL_ReleaseAllHandles');
            unloadlibrary('MicroDrive');
            if (errors == 1)
                message = 'Exiting (MicroDrive)';
                logmsg(app,message);
            else
                message = 'MicroDrive unload complete! Program finished without any errors';
                logmsg(app,message);
                app.MCLmicroset.loadstatus = 0;
            end
        end

        function mclLoadLib(app)
            if (~libisloaded('MicroDrive'))
                loadlibrary(strcat(app.libfolder,'MicroDrive'),@MicroDrive_proto);
            end

            calllib('MicroDrive', 'MCL_GrabAllHandles'); %grab all available handles
            % Load XY stage
            app.MCLmicroset.handlexy = calllib('MicroDrive', 'MCL_GetHandleBySerial',app.MicroSerialXY.Value);
            if (app.MCLmicroset.handlexy == 0)
                message = 'Error: MicroDrive handle was not initialized correctly; Exiting';
                logmsg(app,message);
                app.MCLmicroset.loadstatus = 0;
                return
            else
                message = 'MicroDrive XY handle initialized!';
                logmsg(app,message);
                app.MCLmicroset.loadstatus = 1;
            end

            % Load Z stage
            app.MCLmicroset.handlez = calllib('MicroDrive', 'MCL_GetHandleBySerial',app.MicroSerialZ.Value);
            if (app.MCLmicroset.handlexy == 0)
                message = 'Error: MicroDrive handle was not initialized correctly. Exiting.';
                logmsg(app,message);
                app.MCLmicroset.loadstatus = 0;
                return
            else
                message = 'MicroDrive Z handle initialized!';
                logmsg(app,message);
                app.MCLmicroset.loadstatus = 1;
            end

            app.MCLmicroset.pxPos = libpointer('doublePtr', 0.0);
            app.MCLmicroset.pyPos = libpointer('doublePtr', 0.0);
            app.MCLmicroset.pzPos = libpointer('doublePtr', 0.0);
            app.MCLmicroset.paPos = libpointer('doublePtr', 0.0);

            readmicro(app); % read encoders
        end

        function readmicro(app)
            % Read current position
            err1 = calllib('MicroDrive', 'MCL_MDReadEncoders',app.MCLmicroset.pxPos,app.MCLmicroset.pyPos,app.MCLmicroset.paPos,app.MCLmicroset.paPos,app.MCLmicroset.handlexy);
            err2 = calllib('MicroDrive', 'MCL_MDReadEncoders',app.MCLmicroset.pzPos,app.MCLmicroset.paPos,app.MCLmicroset.paPos,app.MCLmicroset.paPos,app.MCLmicroset.handlez);

            if err1 ~= 0 || err2 ~= 0
                if err1 ~= 0
                    logmsg(app,sprintf('Error: MicroDrive did not correctly read encoders. Error Code %d', err1));
                end
                if err2 ~= 0
                    logmsg(app,sprintf('Error: MicroDrive did not correctly read encoders. Error Code %d', err2));
                end
                return;
            else
                %update front panel indicators
                app.MicroXPos.Value = app.MCLmicroset.pxPos.Value;
                app.MicroYPos.Value = app.MCLmicroset.pyPos.Value;
                app.MicroZPos.Value = app.MCLmicroset.pzPos.Value;
                app.MicroXPosCur = app.MicroXPos.Value;
                app.MicroYPosCur = app.MicroYPos.Value;
                app.MicroZPosCur = app.MicroZPos.Value;

                updateglobalpos(app); %update global position indicators
            end
        end

        function move(app, labaxis, move_length) % move Microdrive
            if app.MCLmicroset.loadstatus == 0 % check if MicroDrive has been loaded
                logmsg(app,sprintf('MicroDrive not loaded.'))
            elseif app.MCLmicroset.loadstatus == 1
                [axis, dir] = mapaxes(app,labaxis,app.axismapvecmicro); %map lab axis letter to stage axis number with appropriate coordinate transformation
                new_move_length = dir*move_length; %move length with appropriate sign based on lab-stage axis conversion. Only used when sending command to stage

                % Determine whether new position will be out of range
                outofrange = 0;
                if (abs(move_length) < app.MicroDrivePrecision.Value) % if the move difference is too small (or zero), do nothing
                else
                    %% First, check if movement is out of range. Also adjust
                    % movement velocity based on movement distance.
                    switch labaxis
                        case 'X'
                            newposmicro = app.MicroXPosCur + move_length;
                            outofrange = ~(newposmicro >= app.Xmin.Value && newposmicro <= app.Xmax.Value);
                            if (abs(move_length) > app.Xmovedistlim.Value)
                                app.MCLmicroset.maxVelocity = app.Xfarmovevel.Value; % if movement is far, move slower
                                logmsg(app,'Requested movement distance is far. Activating slower movement velocity...');
                                drawnow;
                            else
                                app.MCLmicroset.maxVelocity = app.regmovevel.Value; % otherwise use regular move velocity
                            end
                        case 'Y'
                            newposmicro = app.MicroYPosCur + move_length;
                            outofrange = ~(newposmicro >= app.Ymin.Value && newposmicro <= app.Ymax.Value);
                            if (abs(move_length) > app.Ymovedistlim.Value)
                                app.MCLmicroset.maxVelocity = app.Yfarmovevel.Value; % if movement is far, move slower
                                logmsg(app,'Requested movement distance is far. Activating slower movement velocity...');
                                drawnow;
                            else
                                app.MCLmicroset.maxVelocity = app.regmovevel.Value; % otherwise use regular move velocity
                            end
                        case 'Z'
                            newposmicro = app.MicroZPosCur + move_length;
                            outofrange = ~(newposmicro >= app.Zmin.Value && newposmicro <= app.Zmax.Value);
                            if (abs(move_length) > app.Zmovedistlim.Value)
                                app.MCLmicroset.maxVelocity = app.Zfarmovevel.Value; % if movement is far, move slower
                                logmsg(app,'Requested movement distance is far. Activating slower movement velocity...');
                                drawnow;
                            else
                                app.MCLmicroset.maxVelocity = app.regmovevel.Value; % otherwise use regular move velocity
                            end
                    end
                    %% Second, assuming it is not out of range, execute the
                    % movement by sending a command to the stage
                    if outofrange == 0
                        if axis == 1 || axis == 2
                            err = calllib('MicroDrive', 'MCL_MDMove', axis, app.MCLmicroset.maxVelocity, new_move_length, app.MCLmicroset.handlexy); % command MicroDriveXY to execute movement
                        elseif axis == 3
                            err = calllib('MicroDrive', 'MCL_MDMove', 1, app.MCLmicroset.maxVelocity, new_move_length, app.MCLmicroset.handlez); % command MicroDriveZ to execute movement
                        end

                        % Check if movement command was executed successfully
                        if err ~= 0
                            message = sprintf('Error: MicroDrive did not correctly move when attempting to move %s by %.2f. Error code %d.', labaxis,new_move_length,err);
                            logmsg(app,message);
                        else % make sure not to access device until it is finished moving
                            switch labaxis
                                case 'X'
                                    message = sprintf('Moved x pos by %0.4f mm.', move_length);
                                case 'Y'
                                    message = sprintf('Moved y pos by %0.4f mm.', move_length);
                                case 'Z'
                                    message = sprintf('Moved z pos by %0.4f mm.', move_length);
                            end
                            logmsg(app,message);

                            %Wait a sufficient time before next move
                            app.MCLmicroset.milliseconds = abs(round(1000*move_length/app.MCLmicroset.maxVelocity)*app.MoveTimeMult.Value); %pause to ensure sufficient moving time
                            if axis == 1 || axis == 2
                                calllib('MicroDrive', 'MCL_DeviceAttached', app.MCLmicroset.milliseconds,app.MCLmicroset.handlexy);
                            elseif axis == 3
                                calllib('MicroDrive', 'MCL_DeviceAttached', app.MCLmicroset.milliseconds,app.MCLmicroset.handlez);
                            end
                            incrcheckmovecount(app); % check if enough movements have occurred to require saving of position
                        end
                    else
                        %if out of range, cancel movement and do not update
                        %global coordinates
                        message = sprintf('Movement out of range. Check safety limits.');
                        logmsg(app,message);
                    end
                end
                readmicro(app); %read MicroDrive positions
            end
        end

        function moveabs(app, axis, coord) %move Microdrive to absolute position by calling upon move()
            if app.MCLmicroset.loadstatus == 0
                logmsg(app,'MicroDrive not loaded.');
                return;
            end
            useincrmovt = 0; %use incremented movement or not.
            switch axis
                case 'X'
                    app.MicroXPosCur = roundtomicroprec(app,app.MicroXPosCur); % round to max precision
                    if abs(app.NanoPosX.Value) > 0.05 && app.ZeroNanodriveX.Value == 1
                        movenano(app,'X',0); % move NanoDrive into zero position first before moving MicroDrive, if setting is turned on
                    end
                    move_length = coord - app.MicroXPosCur;
                    if abs(move_length) > app.Xdistlimincr.Value %activate incremented movement if the requested movement is above a specified distance threshold
                        useincrmovt = 1;
                        stepsize = app.Xmoveincr.Value;
                    end
                case 'Y'
                    app.MicroYPosCur = roundtomicroprec(app,app.MicroYPosCur); % round to max precision
                    if abs(app.NanoPosY.Value) > 0.05 && app.ZeroNanodriveY.Value == 1
                        movenano(app,'Y',0); % move NanoDrive into zero position first before moving MicroDrive, if setting is turned on
                    end
                    move_length = coord - app.MicroYPosCur;
                    if abs(move_length) > app.Ydistlimincr.Value %activate incremented movement if the requested movement is above a specified distance threshold
                        useincrmovt = 1;
                        stepsize = app.Ymoveincr.Value;
                    end
                case 'Z'
                    app.MicroZPosCur = roundtomicroprec(app,app.MicroZPosCur); % round to max precision
                    if abs(app.NanoPosZ.Value) > 0.05 && app.ZeroNanodriveZ.Value == 1
                        movenano(app,'Z',0); % move NanoDrive into zero position first before moving MicroDrive, if setting is turned on
                    end
                    move_length = coord - app.MicroZPosCur;
                    if abs(move_length) > app.Zdistlimincr.Value %activate incremented movement if the requested movement is above a specified distance threshold
                        useincrmovt = 1;
                        stepsize = app.Zmoveincr.Value;
                    end
            end

            move_length = roundtomicroprec(app,move_length); %round to microdrive precision
            if app.enableincrmovt.Value == 0 %check if incremented movement is enabled
                useincrmovt = 0;
            end
            % logmsg(app,sprintf('use incrmovt is %d',useincrmovt));
            if useincrmovt == 0
                move(app,axis,move_length);
            elseif useincrmovt == 1 %break up movement into small increments of specified size, to prevent jerking
                app.contscan=1; %this allows cancelling the movement if it takes too long, using the stop scan button
                nsteps = floor(abs(move_length/stepsize)); %find largest integer which if multiplied with step size is smaller than total move length. This is the number of movement steps except for the remainder
                rem = mod(move_length,stepsize); %find remainder
                % logmsg(app,sprintf('movement length is %d and stepsize is %d',move_length,stepsize));

                if abs(rem)> app.MicroDrivePrecision.Value
                    movelengthvec = ones(1,nsteps+1)*stepsize*sign(move_length); %add extra step at the end which will be changed to the size of the remainder
                    movelengthvec(end) = rem*sign(move_length); %add remainder movement
                else
                    movelengthvec = ones(1,nsteps)*stepsize*sign(move_length);
                end
                % assignin('base','movelengthvec',movelengthvec);

                logmsg(app,sprintf('Beginning incremented movement of %d steps of %.3f mm each...',nsteps,stepsize));
                drawnow;

                i = 1;
                while app.contscan == 1 && i <= length(movelengthvec)
                    move(app,axis,movelengthvec(i));
                    i = i+1;
                    drawnow;
                end
                logmsg(app,'Finished incremented movement.');
            end
        end

        %% Keyboard interaction functions
        function figureWindowKeyPress(app, ~, event)
            %control microdrive using keyboard
            if app.enablekeyboardMicro.Value == 1
                if strcmp(event.Key, 'w')  % Check if 'W' was pressed
                    app.CoarseYupButtonPushed(); %
                end
                if strcmp(event.Key, 's')  
                    app.CoarseYdownButtonPushed();
                end
                if strcmp(event.Key, 'a')  
                    app.CoarseXleftButtonPushed();
                end
                if strcmp(event.Key, 'd')  
                    app.CoarseXrightButtonPushed();
                end
                if strcmp(event.Key, 't')  
                    app.CoarseZupButtonPushed();
                end
                if strcmp(event.Key, 'g')  
                    app.CoarseZdownButtonPushed();
                end
            end
        end
        %% Nanodrive functions

        function mclcleanupnano(app, errors)
            if (libisloaded('Madlib'))
                calllib('Madlib', 'MCL_ReleaseHandle', app.nanohandle);
                unloadlibrary('Madlib');
            end
            if (errors == 1)
                message = 'Exiting (NanoDrive)';
                logmsg(app,message);
            else
                message = 'NanoDrive unload complete! Program finished without any errors';
                logmsg(app,message);
                app.MCLnanoset.loadstatus = 0;
            end
        end

        function mclLoadLibnano(app)
            % loadlibary(dll name, header file name) : Load a DLL into memory so that MATLAB can call it.
            loadlibrary(strcat(app.libfolder,'Madlib'), @Madlib_proto);

            if (~libisloaded('Madlib'))
                message = 'Error: NanoDrive Library did not load correctly';
                logmsg(app,message);
                return
            end

            % calllib: Call a function in a loaded DLL
            app.nanohandle = calllib('Madlib', 'MCL_InitHandle');
            if (app.nanohandle == 0)
                message = 'Error: NanoDrive handle was not initialized correctly';
                logmsg(app,message);
                mclcleanupnano(app, 1);
                return;
            else
                message = 'NanoDrive handle initialized!!';
                logmsg(app,message);
                app.MCLnanoset.loadstatus = 1;
            end

            % print out information about the NanoDrive
            prInfo = libstruct('ProductInformation'); % external structure
            pprInfo = libpointer('ProductInformation', get(prInfo)); % need a pointer to the struct

            err = calllib('Madlib', 'MCL_GetProductInfo', pprInfo, app.nanohandle);
            if (err ~= 0)
                message = sprintf('Error: NanoDrive did not correctly get product info. Error code %d', err);
                logmsg(app,message);
                clear pprInfo
                clear prInfo
                mclcleanupnano(app, 1);
                return;
            else

            end

            % get calibrations, original axes
            app.MCLnanoset.calibrationX = calllib('Madlib', 'MCL_GetCalibration', 1, app.nanohandle);
            message = sprintf('NanoDrive X calibration: %d',app.MCLnanoset.calibrationX);
            logmsg(app,message);
            app.MCLnanoset.calibrationY = calllib('Madlib', 'MCL_GetCalibration', 2, app.nanohandle);
            message = sprintf('NanoDrive Y calibration: %d',app.MCLnanoset.calibrationY);
            logmsg(app,message);
            app.MCLnanoset.calibrationZ = calllib('Madlib', 'MCL_GetCalibration', 3, app.nanohandle);
            message = sprintf('NanoDrive Z calibration: %d',app.MCLnanoset.calibrationZ);
            logmsg(app,message);

            %read initial positions
            app.nanorealpos.axis1 = app.NanoDriveRealX.Value;
            app.nanorealpos.axis2 = app.NanoDriveRealY.Value;
            app.nanorealpos.axis3 = app.NanoDriveRealZ.Value;
            nreads = app.NanoNreads.Value;
            readnano(app,'X',nreads);
            readnano(app,'Y',nreads);
            readnano(app,'Z',nreads);

            %load position correction coefficients into memory and panel
            %indicators
            app.MCLnanoset.nanoposcorr = importdata('confocalnanocorr.csv');
            loadnanoposcorr(app); %load values into panel indicators in Nanodrive settings tab
 
        end

        function movenano(app, labaxis, labnewpos) % nanopositioner can be asked to move to absolute position. Assumes lab axes
            %v3.2: labnew pos is shifted such that its range is
            %-100 to 100 instead of 0 to 200. This must be translated back
            %to the absolute position.
            %v4.1: allows for direct moving of an axis referred to by its
            %original name (instead of lab axis) assuming labaxis input variable
            % is a number
            %v5.1: adjusted to accommodate 100 um range of NanoLP100

            if app.MCLnanoset.loadstatus == 0 % only do stuff if nanodrives are loaded
                logmsg(app,sprintf('NanoDrive not loaded.'));
                return;
            end

            if isnumeric(labaxis) == 1 %can directly move an axis by referring to manufacturer axis via a number instead of lab axis via a letter.
                axis = labaxis;
                absnewpos = labnewpos; % interpret inputted position as an absolute position on the nanostage axis (0-100 um)
            else
                [axis, dir] = mapaxes(app,labaxis,app.axismapvecnano);

                %ensure labnewpos is within -50, 50
                if labnewpos > 50 || labnewpos < -50
                    logmsg(app,'Target position out of range.');
                    return;
                end
                absnewpos = abs(labnewpos + dir*50); %translate new position back to absolute coordinates ranging from 0 to 100 um
            end

            curpos = getcurpos(app,labaxis); %Get current position
            deltacurpos = abs(curpos-labnewpos)*1000; %Difference between current position and target position
            % assignin('base','deltacurposlogic',deltacurpos < app.NanoPosErrThreshold.Value && app.contscan == 1);
            
            %% Process coordinates and send move command
            if deltacurpos < app.NanoPosErrThreshold.Value && app.contscan == 1 && app.NanoSkipifSame.Value == 1
                %Don't do anything if 1) previous position is within pos
                %error threshold already, 2) we are in the middle of a
                %scan, 3) the NanoSkipifSame option is activated
                return
            end

            %Otherwise, execute movement command as usual
            if app.AbsPosCorrSwitch.Value == 1 % apply absolute position correction to compensate for discrepancy between commanded and actual settled stage position
                if (axis == 1)
                    offset = app.NanoDriveCorrXint.Value + app.NanoDriveCorrXX.Value*absnewpos + app.NanoDriveCorrXY.Value*app.NanoDriveRealY.Value + app.NanoDriveCorrXZ.Value*app.NanoDriveRealZ.Value;
                elseif (axis == 2)
                    offset = app.NanoDriveCorrYint.Value + app.NanoDriveCorrYX.Value*app.NanoDriveRealX.Value + app.NanoDriveCorrYY.Value*absnewpos + app.NanoDriveCorrYZ.Value*app.NanoDriveRealZ.Value;
                elseif (axis == 3)
                    offset = app.NanoDriveCorrZint.Value + app.NanoDriveCorrZX.Value*app.NanoDriveRealX.Value + app.NanoDriveCorrZY.Value*app.NanoDriveRealY.Value + app.NanoDriveCorrZZ.Value*absnewpos;
                end
                goalnewpos = absnewpos - offset/1000; %subtract out offset, which is in nm. This becomes the goalnewpos

            else
                goalnewpos = absnewpos; %Otherwise, the goal position is the same as the dialed-in position
            end

            goalnewpos = forcebound(goalnewpos,0,200); %ensure goalnewpos is within 0,200 range

            err = calllib('Madlib', 'MCL_SingleWriteN', goalnewpos, axis, app.nanohandle);
            if (err ~= 0)
                logmsg(app,sprintf('Error: NanoDrive did not correctly write position. Error Code %d', err));
                mclcleanupnano(app, 1);
                return;
            end

            %% Wait until movement settles

            % pause device before reading again. Do one of two options:
            % fixed settling time or dynamic settling time based on
            % position error
            if app.FixedsettlingtimeButton.Value == 1 %If fixed settling time, simply wait a set amount
                calllib('Madlib', 'MCL_DeviceAttached', app.NanoFixedMoveTime.Value, app.nanohandle);
                elapsedtime = app.NanoFixedMoveTime.Value/1000;
            elseif app.PositionerrorthresholdButton.Value == 1 %otherwise, keep reading the position until it fulfills position error criteria or the timeout is reached
                avereadtime = 0.5; %average time per read is 0.5 ms
                nreadstotal = round(app.NanoMoveTimeout.Value/avereadtime*1.2); %initiate vector for storing reads. Size is determined by the timeout
                nave = app.NanoNreads.Value; %take the last nave readings for a running average
                posvec = zeros(1,nreadstotal);
                timer = tic; % start timer
                elapsedtime = 0;
                i=1;
                posave = 1000000;
                posstd = posave;

                % keep waiting until both average and standard deviation of last X reads are small enough
                while elapsedtime < app.NanoMoveTimeout.Value/1000 && (abs(posave-absnewpos) > app.NanoPosErrThreshold.Value/1000 || posstd > app.NanoPosErrThreshold.Value/1000)
                    posvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, app.nanohandle);
                    elapsedtime = toc(timer); %elapsed time since movement began in seconds
                    %Calculate running average
                    if i < nave
                        posave = mean(posvec(1:i));
                        posstd = std(posvec(1:i));
                        if posstd == 0
                            posstd = 1000000;
                        end
                    else
                        posave = mean(posvec(i-nave+1:i));
                        posstd = std(posvec(i-nave+1:i));
                    end
                    i=i+1;
                end

                if elapsedtime < app.NanoMinSettleTime.Value/1000 %if less then minimum settling time, wait for additional time
                    pause(app.NanoMinSettleTime.Value/1000-elapsedtime);
                    elapsedtime = toc(timer);
                end
            end

            %% Read new position and update all indicators

                [oldval,newval]=readnano(app,labaxis,app.NanoNreads.Value); % read position after moving and update all indicators
                deltapos = labnewpos-oldval; %intended movement step
                poserror = (newval-labnewpos)*1000; %position error in nm
                app.MCLnanoset.poserror = poserror;

                if app.NanoDispPosError.Value == 1
                    logmsg(app,sprintf('Average read Nanodrive position is %f um. Target position was %f um. Position error is %f nm. Movement time is %f s.',newval,absnewpos,poserror,elapsedtime));
                    logmsg(app,sprintf('Position difference is %f um.',deltapos));
                end

                if app.NanoSaveParams.Value == 1 && app.PositionerrorthresholdButton.Value == 1 %log movement parameters into file for diagnosis
                    % truncate zeros from posvec
                    nonZeroIndices = find(posvec);
                    lastNonZeroIndex = nonZeroIndices(end);
                    posvec= posvec(1:lastNonZeroIndex);

                    params = [axis deltapos oldval labnewpos posave newval absnewpos poserror elapsedtime posvec];
                    % writematrix(params, app.NanoSaveFilePath.Value{1},'WriteMode', 'append');
                    dlmwrite(app.NanoSaveFilePath.Value{1}, params, '-append', 'delimiter', ',', 'precision', '%.4f'); %have to use dlmwrite since we want to specify the precision, not possible with writematrix
                end
     
        end

        function labcoords = convtolabcoords(app,dir,newpos_read) %function to convert Nanostage coords from 0,100 to -50,50 coordinate system
            % assignin('base','dir',dir);
            labcoords = forcebound(dir*(newpos_read - 50),-50,50); %remember to convert back to -100,100 coordinate system.
            labcoords = roundtonanoprec(app,labcoords);% round to NanoDrive precision
        end

        function [oldval,newval] = readnano(app,labaxis,nreads)
            % assumes NanoDrive is loaded
            % reads the position of a Nanodrive axis and updates all
            % relevant indicators
            % v.4.1: no more conversion to percentage.

            %We can now choose to move either by addressing the lab axis
            %(X, Y, or Z) or manufacturer axis (1, 2, 3). If the latter,
            %then the positions will be purely in the manufacturer
            %coordinate system (0 to 200 um). The former will use the shifted
            %coordinate system (-100 to 100 um).

            % logmsg(app,'Readnano triggered.');

            if isnumeric(labaxis) == 1 %can directly move an axis by referring to manufacturer instead of lab axis.
                axis = labaxis;
                dir = 1;
            else
                [axis, dir] = mapaxes(app,labaxis,app.axismapvecnano);
            end

            posvec = zeros(1,nreads);
            for i = 1:nreads
                posvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, app.nanohandle);
            end
            pos_read = mean(posvec);
            newval = pos_read;

            if (pos_read < 0)
                message = sprintf('Error: NanoDrive did not correctly read position. Error Code %d', pos_read);
                logmsg(app,message);
                mclcleanupnano(app, 1);
                return;
            end

            %% First, update settings panel indicators (original axes)
            if (axis == 1)
                oldval = app.nanorealpos.axis1;
                %need to fix nanorealpos.axis1 definition
                app.nanorealpos.axis1 = pos_read;

                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoDriveRealX.Value = pos_read;
                end
            elseif (axis == 2)
                oldval = app.nanorealpos.axis2;
                app.nanorealpos.axis2 = pos_read;
                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoDriveRealY.Value = pos_read;
                end
            elseif (axis == 3)
                oldval = app.nanorealpos.axis3;
                app.nanorealpos.axis3 = pos_read;
                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoDriveRealZ.Value = pos_read;
                end
            end
            if app.NanoUpdateEachStep.Value ~= 1
                drawnow;
            end

            %% Second, update the front panel indicators and variables
            % (if we are moving with the lab instead of manufacturer axis)

            if (labaxis == 'X')
                oldval = app.Xnano;
                %Convert newly read position to -100,100 cordinate
                %system and update variables
                app.Xnano = convtolabcoords(app,dir,pos_read);
                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoPosX.Value = app.Xnano; % update front panel
                end
                newval = app.Xnano;
                logmsg(app,sprintf('NanoDrive X is now at position %0.4f.',app.Xnano));
                incrcheckmovecount(app); % check if enough movements have occurred to require saving of position
            elseif (labaxis == 'Y')
                oldval = app.Ynano;
                %Convert newly read position to -100,100 cordinate
                %system and update variables
                app.Ynano = convtolabcoords(app,dir,pos_read);
                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoPosY.Value = app.Ynano; % update front panel
                end
                newval = app.Ynano;
                logmsg(app,sprintf('NanoDrive Y is now at position %0.4f.',app.Ynano));
                incrcheckmovecount(app); % check if enough movements have occurred to require saving of position
            elseif (labaxis == 'Z')
                oldval = app.Znano;
                %Convert newly read position to -100,100 cordinate
                %system and update variables
                app.Znano = convtolabcoords(app,dir,pos_read);
                if app.MCLnanoset.enableupdateposindic == 1
                    app.NanoPosZ.Value = app.Znano; % update front panel
                end
                newval = app.Znano;
                logmsg(app,sprintf('NanoDrive Z is now at position %0.4f.',app.Znano));
                incrcheckmovecount(app); % check if enough movements have occurred to require saving of position
            end

            updateglobalpos(app); %update global position indicators
        end

        function curval = getcurpos(app,labaxis)
            % A simple function that returns the current position of a lab
            % axis based on previous readings
            if labaxis == 'X'
                curval = app.Xnano;
            elseif labaxis == 'Y'
                curval = app.Ynano;
            elseif labaxis == 'Z'
                curval = app.Znano;
            elseif labaxis == 1
                curval = app.nanorealpos.axis1;
            elseif labaxis == 2
                curval = app.nanorealpos.axis2;
            elseif labaxis == 3
                curval = app.nanorealpos.axis3;
            else
                curval = -99999999999999999999;
            end

        end

        %% Nanodrive position correction functions
        function saveposcorcoeff(app)
            app.MCLnanoset.nanoposcorr
        end

        function loadnanoposcorr(app) %load nanodrive position correction coefficients from memory into fron panel indicators in the NanoDrive settings tab
            % useful after modifying app.MCLnanoset.nanoposcorr. This is
            % because the position correction uses coefficients in the front
            % panel indicator, not app.MCLnanoset.nanoposcorr.
            app.NanoDriveCorrXint.Value = app.MCLnanoset.nanoposcorr(1,1);
            app.NanoDriveCorrXX.Value = app.MCLnanoset.nanoposcorr(1,2);
            app.NanoDriveCorrXY.Value = app.MCLnanoset.nanoposcorr(1,3);
            app.NanoDriveCorrXZ.Value = app.MCLnanoset.nanoposcorr(1,4);

            app.NanoDriveCorrYint.Value = app.MCLnanoset.nanoposcorr(2,1);
            app.NanoDriveCorrYX.Value = app.MCLnanoset.nanoposcorr(2,2);
            app.NanoDriveCorrYY.Value = app.MCLnanoset.nanoposcorr(2,3);
            app.NanoDriveCorrYZ.Value = app.MCLnanoset.nanoposcorr(2,4);

            app.NanoDriveCorrZint.Value = app.MCLnanoset.nanoposcorr(3,1);
            app.NanoDriveCorrZX.Value = app.MCLnanoset.nanoposcorr(3,2);
            app.NanoDriveCorrZY.Value = app.MCLnanoset.nanoposcorr(3,3);
            app.NanoDriveCorrZZ.Value = app.MCLnanoset.nanoposcorr(3,4);
        end

        function lm = fitplot1dscan(app,X,fX,axis) %fit and plot results from measuring abs position error
            % axis should be set to 2 normally for Y.
            % Fit a linear model
            lm = fitlm(X, fX);

            % Extract the coefficients
            a = lm.Coefficients.Estimate(1); % Intercept
            b = lm.Coefficients.Estimate(2); % Slope
            app.MCLnanoset.nanoposcorr(axis,:) = [a,0,b,0]; % update appnanoposcorr for relevant axis

            % Generate points for the fitted line

            X_line = linspace(min(X), max(X), 100);
            f_line = a + b * X_line;

            %plot data
            popupFig = uifigure('Name', 'Data View', 'Position', [100, 100, 600, 300]); % Increased height to accommodate text
            % Create axes for the plot
            ax = uiaxes('Parent', popupFig, 'Position', [20, 50, 560, 250]); % Adjust position to make room for text
            hold(ax, 'on');  % Specify the axes for hold

            % Set labels and title on the correct axes
            axesvector = ['X' 'Y' 'Z'];
            axisname = axesvector(axis);

            xlabel(ax, 'Absolute position (um)');
            ylabel(ax, sprintf('%s position error (nm)',axisname));
            title(ax, sprintf('%s position error vs. absolute position',axisname));

            % Assuming X, fX, X_line, f_line, a, and b are defined somewhere in your code
            % Generate some data to plot
            scatter(ax, X, fX, 'filled');
            plot(ax, X_line, f_line, '-r');

            % Display the equation on the plot
            txtAx = uiaxes('Parent', popupFig, 'Position', [20, -40, 560, 150], 'Color', 'none');  % Create a new axes for text
            txtAx.XColor = 'none';  % Hide X axis
            txtAx.YColor = 'none';  % Hide Y axis
            text(txtAx, 0.01, 0.5, sprintf('f =  %.2f + %.2f%s', a,b, axisname), 'FontSize', 12, 'Units', 'normalized', 'VerticalAlignment', 'middle');

            % Add legend
            legend(ax, 'Data points', 'Fitted line');

            hold(ax, 'off');  % Release the hold
        end

        function model = fitplot2dscan(app,X,Z,fXZ,axis) %fit and plot results from measuring abs position error
            % Generate a grid for X and Z
            [X_grid, Z_grid] = meshgrid(X, Z);

            % Reshape X_grid, Z_grid, and fXZ into vectors
            X_vector = reshape(X_grid, [], 1);
            Z_vector = reshape(Z_grid, [], 1);
            fXZ_vector = reshape(fXZ, [], 1);

            % Create a table of the independent variables and the dependent variable
            tbl = table(X_vector, Z_vector, fXZ_vector, 'VariableNames', {'X', 'Z', 'fXZ'});

            % Fit the linear model
            model = fitlm(tbl, 'fXZ ~ X + Z');

            % Extract coefficients
            a = model.Coefficients.Estimate(1); %Intercept
            b = model.Coefficients.Estimate(2); %Slope X
            c = model.Coefficients.Estimate(3); %Slope Z
            app.MCLnanoset.nanoposcorr(axis,:) = [a,b,0,c]; % update appnanoposcorr for relevant axis

            % Prepare a fine grid for a smooth surface
            [X_grid_fine, Z_grid_fine] = meshgrid(linspace(min(X), max(X), 100), linspace(min(Z), max(Z), 100));
            tbl_fine = table(reshape(X_grid_fine, [], 1), reshape(Z_grid_fine, [], 1), 'VariableNames', {'X', 'Z'});

            % Predict over the fine grid
            fXZ_fine_predicted = predict(model, tbl_fine);
            fXZ_fine_predicted = reshape(fXZ_fine_predicted, size(X_grid_fine));

            %plot data
            popupFig = uifigure('Name', 'Data View', 'Position', [100, 100, 600, 300]); % Increased height to accommodate text

            % Create axes for the plot
            ax = uiaxes('Parent', popupFig, 'Position', [20, 50, 560, 250]); % Adjust position to make room for text
            hold(ax, 'on');  % Specify the axes for hold
            grid(ax, 'on');

            % Set labels and title on the correct axes
            axesvector = ['X' 'Y' 'Z'];
            axisname = axesvector(axis);

            xlabel(ax, 'Absolute position (um)');
            ylabel(ax, sprintf('%s position error (nm)',axisname));
            title(ax, sprintf('%s position error vs. absolute position',axisname));

            % Scatter plot for the original data
            scatter3(ax,X_vector, Z_vector, fXZ_vector, 10, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r'); % Reduced marker size to 10

            % Surface plot for the fitted model
            mesh(ax,X_grid_fine, Z_grid_fine, fXZ_fine_predicted, 'FaceAlpha', 0.5);
            xlabel(ax,'X');
            ylabel(ax,'Z');
            zlabel(ax,'f(X, Z)');
            title(ax,sprintf('%s position error vs. X and Z position',axisname));
            legend(ax, 'Data points', 'Fitted surface');
            view(ax,30,40); % Adjusts the 3D view angle

            % Display the equation on the plot
            txtAx = uiaxes('Parent', popupFig, 'Position', [20, -40, 560, 150], 'Color', 'none');  % Create a new axes for text
            txtAx.XColor = 'none';  % Hide X axis
            txtAx.YColor = 'none';  % Hide Y axis
            text(txtAx, 0.01, 0.5, sprintf('f = %.2f + %.2fX + %.2fZ', a, b,c), 'FontSize', 12, 'Units', 'normalized', 'VerticalAlignment', 'middle');

            hold(ax, 'off');  % Release the hold
        end

        %% Nanodrive batch scan functions
        function scanresvec = scan1Row(app,scanposvec2,axisname1,axisno2,dir2,scanposvec1,i)
            scanposvec2abs = abs(scanposvec2 + dir2*100); %translate new lab position back to absolute coordinates ranging from 0 to 200 um required by the nanodrive
            scanposvec2mat = posvector2matrix(scanposvec2abs,app.MaxCoordsPerBatch.Value); % convert long 1D vec into a 2D matrix of shorter 1D vec. If there is a remainder, pad the last row with extreme values (9999)
            scanresvec = zeros(1,length(scanposvec2abs)); %vector to scan batch scanning results
            scanrescounter = 1; %track index to write in scanresvec

            % Scan 1 row in batches
            for k = 1:height(scanposvec2mat) %Process scanposvec2mat row by row
                if app.contscan == 1
                    movenano(app,axisname1,scanposvec1(i)); %move into position on first coordinate
                    scanbatchvec = stripextremevalues(scanposvec2mat(k,:)); %take a row of 2D matrix, strip any extreme values
                    movenano(app,axisno2,scanbatchvec(1)); %
                    if length(scanbatchvec) ~= app.dq.npulses %reset and modify npulses if scanbatchvec is different
                        %This is needed if the the length of scanposvec2 is not divisable by MaxCoordsPerBatch, such
                        % that there will be remainder batch at the end
                        app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                        app.dq.npulses = length(scanbatchvec);
                        app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
                    end

                    % assignin("base","dq",app.dq);

                    %Create and send waveform to be uploaded to
                    %Nanodrive
                    postime = app.DwellTime.Value * 1000 + app.NanoFixedMoveTimeBatch.Value; %time taken at each nanostage position step, converted to ms
                    % waveform = repmat(scanposvec2,round(postime/app.WfmWriteRate.Value),1); %needs to repeat values based on waveform write rate
                    waveform = repmat(scanbatchvec,round(postime/app.WfmWriteRate.Value),1); %needs to repeat values based on waveform write rate
                    waveform = reshape(waveform, 1,[]);

                    calllib('Madlib','MCL_IssBindClockToAxis',app.NanoDriveClk.Value,2,6,app.nanohandle); %bind clock output port to axis2, to allow triggering the DAQ upon moving an axis
                    %note that 2 = generate low to high pulse when waveform is loaded
                    error = calllib('Madlib','MCL_LoadWaveFormN',axisno2,length(waveform),app.WfmWriteRate.Value,waveform,app.nanohandle); %send waveform to Nanodrive
                    calllib('Madlib','MCL_IssResetDefaults',app.nanohandle); %immediately unbind clocks to prevent extra pulses
                    if error == -5
                        logmsg(app,'Nanodrive error -5. Insufficient wait time between scanning batches. Consider increasing "Wait to finish read."');
                    end

                    %Sending waveform will trigger a series of reads
                    %from the DAQ. Now fetch the resulting
                    %values
                    [app.dq,sig] = app.nidaqpool.procReadEdgeCountingBatch(app.dq); %read values
                    disp(sig);
                    scanresvec(:,scanrescounter:scanrescounter+length(scanbatchvec)-1) = sig; %insert values into scanresvec
                    scanrescounter = scanrescounter + length(scanbatchvec); %update scanrescounter
                    calllib('Madlib','MCL_IssBindClockToAxis',app.NanoDriveClk.Value,4,axisno2,app.nanohandle); %unbind axis

                    pause(app.WaitFinishRead.Value/1000); %wait to ensure tasks are finished before launching the next batch
                end
            end
        end
        %% DAQ functions
        % Note that a bunch of DAQ functions are in the FunctionPoolDAQ
        % file.

        % initiate daq
        function app = initdaq(app)
            % general DAQ variables
            app.dq.loadstatus = 1; %indicates a real DAQ is present
            app.dq.stream=0;
            app.dq.DwellTime = app.DwellTime.Value; %dwell time per read in seconds
            if app.EdgecountButton.Value == 1 %take data in edge-counting mode
                app.dq.mode = "edge"; %regular edge-counting mode
            elseif app.AnalogvoltageButton.Value == 1 %take data in analog voltage mode
                app.dq.mode = "analog";
            end

            % create names for counter input and output in edge
            % counting acquisition
            app.dq.CtrInName = strcat('/',app.DevName.Value,'/ctr',num2str(app.CtrIn.Value));
            app.dq.CtrInTermName = strcat('/',app.DevName.Value,'/PFI',num2str(app.CtrInTerm.Value));
            app.dq.CtrInTrigTermName = strcat('/',app.DevName.Value,'/PFI',num2str(app.CtrInTrig.Value));
            app.dq.CtrOutName = strcat('/',app.DevName.Value,'/ctr',num2str(app.CtrOut.Value));
            app.dq.CtrOutTermName = strcat('/',app.DevName.Value,'/PFI',num2str(app.CtrOutTerm.Value));
            app.dq.CtrOutTrigTermName = strcat('/',app.DevName.Value,'/PFI',num2str(app.CtrOutTermTrig.Value)); %only used for batch edge counting mode
            app.dq.countsnew = 0;

            % variables for analog voltage input acquisition
            app.dq.AIchan = strcat('/',app.DevName.Value,'/ai',num2str(app.InputCh.Value)); % AI input channel name
            app.dq.DynRange = app.DynRange.Value; % Dynamic range of DAQ will be +/- of this value
            app.dq.SampRate = app.SampRate.Value; % Sampling rate (max 1 MHz)
            app.dq.SampsPerRead = round(app.dq.DwellTime * app.dq.SampRate); % Number of samples per read, based on dwell time
            app.dq.VoltageInputArray = zeros(1,app.dq.SampsPerRead); %array to store each set of reads from daq

            app.nidaqpool = NIDAQPoolmain; % create instance of NIDAQPool class
            logmsg(app,'Successfully reinitialized DAQ settings.')
        end

        % take 1 isolated reading from the DAQ and update panel indicators
        function take1data(app)
            AcquisitionmodeButtonGroupSelectionChanged(app,[]); %ensure DAQ mode is either analog or edge count (not batch)
            [app.dq,sig] = app.nidaqpool.take1datagen(app.dq);
            sig = double(sig);
            app.cursignal.Value = sig;
            app.CurSigMean.Value = sig;
            app.siglivegauge.Value = sig;
        end

        function updatelasermon(app) %update laser monitoring indicators
            [app.dqlaser,sig] = app.nidaqpool.take1datagen(app.dqlaser);
            app.LaserPowerVoltage.Value = sig;
            app.LaserPowerIndicator.Value = sig * app.LaserMonitorConvSlope.Value + app.LaserMonitorConvOffset.Value;
        end

        function [app,datamean,datasd] = takemultdata(app,numreads)
            %take multiple readings from the daq and calculate mean and
            %stdev. Assumes tasks have been setup, only need to execute
            %ReadProcData in FunctionPoolDAQ. Mainly used in the data
            %streaming tab.
            resvec = zeros(1,numreads);
            for i = 1:numreads
                [app.dq,resvec(i)] = app.nidaqpool.readProcData(app.dq);
                % logmsg(app,sprintf('Reading is %.4f',resvec(i)));
            end
            datamean = mean(resvec);
            datasd = std(resvec);
        end

        %% MFF101 functions
        function updatemffindicatorsColor(app)
            app.mff.curposColor = app.mff.devicec.Position;
            if app.mff.curposColor == 1
                app.MFFPositionSwitchColor.Value = "1";
            elseif app.mff.curposColor == 2
                app.MFFPositionSwitchColor.Value = "2";
            end

            % also map to color-based indicator in the General
            % Tab
            if app.RedPos.Value == "1"
                poscolormap = ["Red" "Green"];
            elseif app.RedPos.Value == "2"
                poscolormap = ["Green" "Red"];
            end

            % logmsg(app,'Updating...');
            if app.mff.curposColor > 0 %Sometimes the Position read from the device is momentarily zero, if so, do not update the color switch value
                app.ColorSwitch.Value = poscolormap(app.mff.curposColor);
            end
        end

        function updatemffindicatorsND(app)
            app.mff.curposND = app.mff.devicen.Position;
            if app.mff.curposND == 1
                app.MFFPositionSwitchND.Value = "1";
            elseif app.mff.curposND == 2
                app.MFFPositionSwitchND.Value = "2";
            end

            % also map to color-based indicator in the General
            % Tab
            if app.NDPos.Value == "1"
                poscolormap = ["ND filter" "None"];
            elseif app.NDPos.Value == "2"
                poscolormap = ["None" "ND filter"];
            end

            % logmsg(app,'Updating...');
            if app.mff.curposND > 0 %Sometimes the Position read from the device is momentarily zero, if so, do not update the color switch value
            end
        end
        %% Datatip recording table functions
        function setupDatatipListener(app)
            updateDatatipTable(app);  % Set up the UITable to store datatip info with an additional 'Label' column
            dcm_obj = datacursormode(ancestor(app.ScanPlot_2d, 'figure'));
            dcm_obj.UpdateFcn = @(src, event) conditionalDatatip(app, src, event, app.UITable);
            dcm_obj.Enable = 'on';  % Enable data cursor mode

            function txt = conditionalDatatip(app, src, event_obj, UITable)
                % assignin('base','target',event_obj.Target);
                % assignin('base','scanplot2d',app.ScanPlot_2d);
                if event_obj.Target.Parent == app.ScanPlot_2d % Check if the target is ScanPlot_2d
                    txt = createDatatip(app, src, event_obj, UITable);  % Custom datatip
                else
                    txt = defaultDatatip(event_obj);  % Default datatip function
                end
            end

            function txt = defaultDatatip(event_obj)
                pos = get(event_obj, 'Position');
                txt = {[num2str(pos(1))], [num2str(pos(2))]};
            end

            function txt = createDatatip(app, src, event_obj, UITable)
                pos = get(event_obj, 'Position');
                xIndex = findClosest(event_obj.Target.XData, pos(1));
                yIndex = findClosest(event_obj.Target.YData, pos(2));

                if xIndex >= 1 && yIndex >= 1 && xIndex <= size(event_obj.Target.CData, 2) && yIndex <= size(event_obj.Target.CData, 1)
                    val = event_obj.Target.CData(yIndex, xIndex);
                else
                    val = NaN;
                end

                newEntry = {pos(1), pos(2), val, ''};
                currentData = get(UITable, 'Data');
                newTableData = [currentData; newEntry];
                if app.RecordDataTips.Value == 1
                    set(UITable, 'Data', newTableData);
                end

                txt = {[strcat(app.scan2dparams.scanaxis1, ': ', num2str(pos(1)))], ...
                    [strcat(app.scan2dparams.scanaxis2, ': ', num2str(pos(2)))], ...
                    ['Value: ', num2str(val)]};
            end

            function index = findClosest(values, target)
                [~, index] = min(abs(values - target));
            end
        end

        function disableDatatipListener(app)
            datacursormode(ancestor(app.ScanPlot_2d, 'figure'),'off');
        end

        function updateDatatipTable(app)
            curcolname1 = app.UITable.ColumnName(1);
            curcolname2 = app.UITable.ColumnName(2);
            app.UITable.ColumnWidth = {50, 50, 50, 100};
            app.UITable.Position(3) = 250;
            app.UITable.ColumnEditable = true;  % Only the 'Label' column is editable
            
            if ~(app.scan2dparams.scanaxis1 == curcolname1{1} && app.scan2dparams.scanaxis2 == curcolname2{1} && strcmp(app.scan2dparams.scanmode,app.ScanmodeEditField.Value) == 1)
                app.UITable.Data = []; % Initialize as empty
                app.UITable.ColumnName = {app.scan2dparams.scanaxis1,app.scan2dparams.scanaxis2, 'Value', 'Label'};
                app.ScanmodeEditField.Value = app.scan2dparams.scanmode;
            end
        end

        function deleteRow(app)
            % Get the index of the selected row
            idx = app.UITable.Selection;
            assignin('base','idx',idx);

            % Check if any row is selected
            if isempty(idx)
                uialert(app.UIFigure, 'No row selected', 'Row Deletion Error');
                return;
            end
            app.UITable.Data(idx(1), :) = [];  % Remove the row from the data
        end

        function goToPos(app)
            % Get the index of the selected row
            idx = app.UITable.Selection;
            axis1 = app.UITable.ColumnName(1);
            axis2 = app.UITable.ColumnName(2);
            axis1 = axis1{1};
            axis2 = axis2{1};

            coords1 = app.UITable.Data(idx(1),1);
            coords2 = app.UITable.Data(idx(1),2);
            coords1 = coords1{1};
            coords2 = coords2{1};

            if app.scan2dparams.scanmode == "Micro"
                moveabs(app,axis1,coords1);
                moveabs(app,axis2,coords2);
            elseif app.scan2dparams.scanmode == "Nano"
                movenano(app,axis1,coords1);
                movenano(app,axis2,coords2);
            else
                logmsg(app,'No scans in memory.')
            end
        end

        function clearAllRows(app)
            app.UITable.Data = cell(0,4);
        end
    
    end
    %% public functions
    methods (Access = public)
        % for programmatically executing commands on the app from console.
        % All of the component callback events are by default private, so
        % we need to create a public wrapper function for each

        %% scanning functions
        function pushScanMicroButton(app) %scan micro
            app.ScanMicroButtonPushed();
        end

        function centerScanRangeButton(app) % center micro scan range
            app.CenterScanRangeButtonPushed();
        end

        function pushTrackZMicroButton(app) %track Z position micro
            app.TrackZMicroPushed();
        end

        function pushScanNanoButton(app) %scan nano
            app.ScanNanoButtonPushed();
        end

        function centerScanRangeNanoButton(app)
            app.CenterScanRangeNanoButtonPushed();
        end

        function pushTrackZNanoButton(app) %track Z position nano
            app.TrackZNanoButtonPushed();
        end

        function saveScanData(app,filepath,filename,format)
            app.Savefilepath.Value = filepath;
            app.FileName.Value = filename;
            app.FormatDropDown.Value = format;
            app.SaveDataButtonPushed();
        end
 
        %% MicroDrive movement functions
        function goToGlobalPos(app,coords)
            app.moveabs('X',coords(1));
            app.moveabs('Y',coords(2));
            app.moveabs('Z',coords(3));
        end

        function goToGlobalPosX(app,coord)
            app.moveabs('X',coord);
        end

        function goToGlobalPosY(app,coord)
            app.moveabs('Y',coord);
        end

        function goToGlobalPosZ(app,coord)
            app.moveabs('Z',coord);
        end

        %% NanoDrive movement functions
        function goToNanoPosX(app,coord)
            app.movenano('X',coord);
        end

        function goToNanoPosY(app,coord)
            app.movenano('Y',coord);
        end

        function goToNanoPosZ(app,coord)
            app.movenano('Z',coord);
        end

        function nanoToZero(app)
            app.NanodrivetooriginButtonPushed();
        end

        %% misc
        function switchfilters(app,colorfiltersw,ndfiltersw) %switch filter positions
            app.ColorSwitch.Value = colorfiltersw;
            app.ColorSwitchValueChanged([]);
            app.NDSwitch.Value = ndfiltersw;
            app.NDSwitchValueChanged([]);
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %% Tooltips
            % Some help tooltips applied to multiple components are
            % executed here
            tooltipmovevellim = sprintf(['When moving small distances, the stage will move at the "regular move velocity." ' ...
                'When moving distances larger than the value in "Move dist limit", the stage will move at "max vel" instead. ' ...
                'This is useful to prevent "jerking" of the sample mount if the sample is fragile or not rigidly fixed.']);
            app.Xfarmovevel.Tooltip = tooltipmovevellim;
            app.Yfarmovevel.Tooltip = tooltipmovevellim;
            app.Zfarmovevel.Tooltip = tooltipmovevellim;
            app.Xmovedistlim.Tooltip = tooltipmovevellim;
            app.Ymovedistlim.Tooltip = tooltipmovevellim;
            app.Zmovedistlim.Tooltip = tooltipmovevellim;
            app.regmovevel.Tooltip = tooltipmovevellim;

            tooltipmoveincr = sprintf(['Any single movements larger than this will be made in multiple increments. ' ...
                'This feature can be switched on/off by the "Enable incremented movement" option on the main tab. ' ...
                'If the increment specified is larger than the movement step threshold, then this feature will do nothing.']);
            app.Xdistlimincr.Tooltip = tooltipmoveincr;
            app.Ydistlimincr.Tooltip = tooltipmoveincr;
            app.Zdistlimincr.Tooltip = tooltipmoveincr;
            app.Xmoveincr.Tooltip = tooltipmoveincr; 
            app.Ymoveincr.Tooltip = tooltipmoveincr; 
            app.Zmoveincr.Tooltip = tooltipmoveincr; 

            %% Settings
            app.slspool = SaveLoadStatePool; % create instance of saveloadstate pool
            ReloadSettingsButtonPushed(app,[]); %load last app settings from file
            warning('off', 'MATLAB:timer:deleterunning'); %suppress warnings that arise from stopping timers

            BatchModeSwitchValueChanged(app,[]);
            
            app.libfolder = app.MCLLibPath.Value{1}; % MCL library folder
            addpath(app.libfolder);
            prepMapaxes(app);
           
            app.MCLmicroset.loadstatus = 0;
            app.MCLnanoset.loadstatus = 0;
            app.contscan = 0; % Is app scanning status
            app.allowlogmsg = 1; %Allow log messages
            app.LogTextArea.Value = ''; %reset log

            app.UIFigure.WindowKeyPressFcn = @(src, event)figureWindowKeyPress(app, src, event); %needed for keyboard interactions

            %% Datatip table
            % Create a context menu for the table
            cmenu = uicontextmenu(app.UIFigure);  % app.UIFigure is typically the parent figure of the app
            uimenu(cmenu, 'Text', 'Delete Row', 'MenuSelectedFcn', @(src, event) deleteRow(app));
            uimenu(cmenu, 'Text', 'Go', 'MenuSelectedFcn', @(src, event) goToPos(app));
            uimenu(cmenu, 'Text', 'Clear All', 'MenuSelectedFcn', @(src, event) clearAllRows(app));
            app.UITable.ContextMenu = cmenu; % Assign the context menu to the table

            % setup some default values for scan2dparams
            app.scan2dparams.scanmode = 'None'; %latest scan mode
            app.scan2dparams.scanaxis1 = 'X';
            app.scan2dparams.scanaxis2 = 'Y';
            
            if app.RecordDataTips.Value == 1
                setupDatatipListener(app); % setup datatip listener
            end

            %% Initialize MicroDrive
            %write previous positions and settings
            if app.startupLoadMicro.Value == 1 %startup MicroDrive
                app.MCLmicroset.Coarse_stepSize = app.StepSizemm.Value;
                mclLoadLib(app);
            end

            %% Initialize NanoDrive
            % write previous positions and settings
            app.streambuffernano = zeros(3,app.MonitorNanoMaxStreamBufferSize.Value); %preallocate memory for streaming nanodrive position
            app.MCLnanoset.stream = 0; %streaming status (for monitoring position)
            app.MCLnanoset.enableupdateposindic = 1; %enable updating of nanostage position indicators (disabled when continuously streaming the position)
            app.MCLnanoset.prevNanoNreads = 10; %used to temporarily store value of front panel indicators
            if app.startupLoadNano.Value == 1 %startup NanoDrive
                mclLoadLibnano(app);
                NanoDrivePosMonitorValueChanged(app, []); %initiate nanodrive position monitoring if it's set to "on"
            end

            %% Initiate DAQ settings
            app.dq.loadstatus = 0; %indicates whether DAQ is present
            if app.startupLoadDAQ.Value == 1
                app = initdaq(app); %initiate DAQ object
                EnableLaserPowerMonitorValueChanged(app,[]); %Initialize laser power monitoring if it is already set to "on"
                app.streambufferdaq = zeros(1,app.MaxStreamBufferSize.Value); %preallocate memory for streaming DAQ
            end
            UseDAQDummyValueChanged(app,[]); %Update DAQ dummy value

            %% Figures
            app.ScanPlot_2d.FontSize = 12;
            colormap(app.ScanPlot_2d, jet);

            % Set up the 2d plot colorbar
            app.colorbar2d = colorbar(app.ScanPlot_2d);
            cpos = app.colorbar2d.Position;
            app.colorbar2d.FontSize = 16;
            try
                app.colorbar2d.Limits = [app.cmin.Value app.cmax.Value]; %set colorbar limits
                app.ScanPlot_2d.CLim = [app.cmin.Value app.cmax.Value]; %set colorbar limits
            catch
                logmsg(app,'Improper colorbar limits.');
            end

            %% Initialize MFF101
            app.mff.conopen = 0;
            app.mff.curposColor = app.MFFPositionSwitchColor.Value; %tracks the absolute position of the color filter MFF101
            app.mff.curposND = app.MFFPositionSwitchND.Value; %tracks the absolute position of the ND filter MFF101
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            try
                if app.MCLmicroset.loadstatus == 1
                    mclcleanup(app, 0);
                end
                if app.MCLnanoset.loadstatus == 1
                    mclcleanupnano(app, 0);
                end
                if app.mff.conopen == 1 % shut down MFF101 connection if it's open
                    if app.EnableColorMFF.Value == 1
                        app.mff.devicec.StopPolling();
                        app.mff.devicec.DisableDevice();
                        app.mff.devicec.Disconnect();
                    end
                    if app.EnableNDMFF.Value == 1
                        app.mff.devicen.StopPolling();
                        app.mff.devicen.DisableDevice();
                        app.mff.devicen.Disconnect();
                    end
                    app.mff.conopen = 0;
                end

                if app.EnableLaserPowerMonitor.Value == 1
                    stop(app.dqlaser.takereadtimer);
                end
                % Note: save settings has to be at the end after all the
                % closing above
                if app.SaveSettingsExit.Value == 1
                    app.SaveSettingsButtonPushed(); %save settings to file
                end
                delete(app);
            catch
                close all force; % forcefully close if regular close doesn't work
            end
        end

        % Button pushed function: LoadButton_microdrive
        function LoadButton_microdrivePushed(app, event)
            app.MCLmicroset.Coarse_stepSize = app.StepSizemm.Value;
            mclLoadLib(app);
        end

        % Button pushed function: UnloadButton_microdrive
        function UnloadButton_microdrivePushed(app, event)
            mclcleanup(app, 0);
        end

        % Button pushed function: ReadMicroPos
        function ReadMicroPosButtonPushed(app, event)
            readmicro(app);
        end

        % Callback function
        function StopMicroButtonPushed(app, event)
            app.contscan = 0;
        end

        % Value changed function: StepSizemm
        function StepSizemmValueChanged(app, event)
            value = app.StepSizemm.Value;
            app.MCLmicroset.Coarse_stepSize = value;
            message = sprintf('Coarse movement step size is set to %f mm.', value);
            logmsg(app,message);
        end

        % Button pushed function: CoarseXleft
        function CoarseXleftButtonPushed(app, event)
            moveabs(app,'X',app.MicroXPosCur-app.MCLmicroset.Coarse_stepSize); %need to use moveabs() instead of move() in order to use incremented movement function
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: CoarseXright
        function CoarseXrightButtonPushed(app, event)
            moveabs(app,'X',app.MicroXPosCur+app.MCLmicroset.Coarse_stepSize); 
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: CoarseYup
        function CoarseYupButtonPushed(app, event)
            moveabs(app,'Y',app.MicroYPosCur+app.MCLmicroset.Coarse_stepSize); 
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: CoarseYdown
        function CoarseYdownButtonPushed(app, event)
            moveabs(app,'Y',app.MicroYPosCur-app.MCLmicroset.Coarse_stepSize); 
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: CoarseZup
        function CoarseZupButtonPushed(app, event)
            moveabs(app,'Z',app.MicroZPosCur+app.MCLmicroset.Coarse_stepSize); 
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: CoarseZdown
        function CoarseZdownButtonPushed(app, event)
            moveabs(app,'Z',app.MicroZPosCur-app.MCLmicroset.Coarse_stepSize); 
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: TakeDataTest
        function TakeDataTestButtonPushed(app, event)
            take1data(app);
        end

        % Button pushed function: ReinitializeDAQ
        function ReinitializeDAQButtonPushed(app, event)
            initdaq(app); %initiate DAQ object
        end

        % Value changed function: UseDAQDummy
        function UseDAQDummyValueChanged(app, event)
            app.dq.UseDAQdummy = app.UseDAQDummy.Value; %updates app.dq variable which will be passed on to FunctionPoolDAQ
            app.dq.mode = "edge"; %need to fill this variable for things to work.
        end

        % Button pushed function: ResetEncoders
        function ResetEncodersPushed(app, event)
            message = 'Successfully recalibrate the origin for micro stages. Current position: (0,0,0)';

            logmsg(app,message);
        end

        % Button pushed function: MovetooriginButton
        function MovetooriginButtonPushed(app, event)
            moveabs(app, 'X', 0);
            moveabs(app, 'Y', 0);
            moveabs(app, 'Z', 0);
            message = 'Moving micro stages to (0,0,0)';
            logmsg(app,message);
        end

        % Button pushed function: TrackZMicro
        function TrackZMicroPushed(app, event)
            CalcIncrButtonPushed(app,[]); %update increments based on specified # of steps
            if app.MCLmicroset.loadstatus == 0
                if app.UseMicroDummy.Value == 0
                    logmsg(app,'MicroDrive not loaded. Aborting scan.')
                    return;
                end
                % if UseMicroDummy is activated then proceed with "dummy
                % scan" which doesn't actually move anything but allows
                % testing of code features
                logmsg(app,'MicroDrive not loaded. Dummy mode activated for code testing.');
            end
            app.contscan = 1;
            % zposvec = [app.CoarseZscan_from.Value:app.StepSizemm.Value:app.CoarseZscan_to.Value]; % generate list of z positions
            scanlims = [app.CoarseZscan_from.Value,app.CoarseZscan_to.Value,app.CoarseZscan_numsteps.Value]; % z scan limits
            stepsizes = (scanlims(2)-scanlims(1))/(scanlims(3)-1); %step sizes based on number of steps
            scanposvec = scanlims(1):stepsizes:scanlims(2); % vector of coordinates to be scanned
            scanresvec = 0*scanposvec; % vector for scan results
            startscanprogress(app,length(scanposvec));% start scan progress bar

            initpos = app.MicroZPosCur;
            app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
            for i = 1:length(scanposvec)
                if app.contscan == 1 % contscan can be turned to 0 with the STOP button
                    moveabs(app,'Z',scanposvec(i));
                    [app.dq,scanresvec(i)] = app.nidaqpool.readProcData(app.dq);
                    updatescanprogress(app);
                    drawnow;
                end
            end
            app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
            app.contscan = 0;

            if app.ReturnInitPos.Value == 1
                moveabs(app,'Z',initpos);
            end
            plot(app.ScanPlot_z,scanposvec,scanresvec)
            app.ScanPlot_z.XLabel.String = 'Z (mm)';


            %write scan results into variable for saving later
            app.data.x = scanposvec;
            app.data.res = scanresvec;
            app.data.dim = 1;
            app.data.plot = app.ScanPlot_z;
            assignin('base','latestscan',app.data);

            app.meancps.Value = mean(scanresvec); %calculate average
            app.mincps.Value = min(scanresvec); %calculate min
            app.maxcps.Value = max(scanresvec); %calculate max

            %Find maximum Z position
            [~,maxind] = max(scanresvec);
            maxzpos = scanposvec(maxind);
            logmsg(app,sprintf('Maximum signal detected at z = %0.4f mm.',maxzpos));
            if app.automoveZ.Value == 1
                moveabs(app,'Z',maxzpos); % move microstage into max position
                logmsg(app,sprintf('Moved z to maximum position.'));
            end
            app.MCLmicroset.optzpos = maxzpos; % store this optimum z value
            SaveSettingsButtonPushed(app,[]); %save all settings
        end

        % Button pushed function: ScanMicro
        function ScanMicroButtonPushed(app, event)
            CalcIncrButtonPushed(app,[]); %update increments based on specified # of steps
            if app.MCLmicroset.loadstatus == 0
                if app.UseMicroDummy.Value == 0
                    logmsg(app,'MicroDrive not loaded. Aborting scan.')
                    return;
                end
                % if UseMicroDummy is activated then proceed with "dummy
                % scan" which doesn't actually move anything but allows
                % testing of code features
                logmsg(app,'MicroDrive not loaded. Dummy mode activated for code testing.');
            end
            app.contscan = 1;
            initpos = [app.MicroXPos.Value,app.MicroYPos.Value,app.MicroZPos.Value]; % initial positions of all three axis; useful for returning to it later after scan
            scanvec=~[app.Coarse_Fix_X.Value,app.Coarse_Fix_Y.Value,app.Coarse_Fix_Z.Value]; % vector of which axes are to be scanned
            scanvecind = find(scanvec == 1); % find index of non-zero members of scanvec
            scanlims = [app.CoarseXscan_from.Value,app.CoarseXscan_to.Value,app.CoarseXscan_numsteps.Value;
                app.CoarseYscan_from.Value,app.CoarseYscan_to.Value,app.CoarseYscan_numsteps.Value;
                app.CoarseZscan_from.Value,app.CoarseZscan_to.Value,app.CoarseZscan_numsteps.Value]; %matrix of scan limits for each axis
            stepsizes = (scanlims(:,2)-scanlims(:,1))./(scanlims(:,3)-1); %step sizes based on number of steps

            if sum(scanvec) == 1 % 1D scan with scanvecind as the scan axis
                scanposvec = scanlims(scanvecind,1):stepsizes(scanvecind):scanlims(scanvecind,2); % vector of coordinates to be scanned
                scanresvec = 0*scanposvec; % result vector
                startscanprogress(app,length(scanposvec));% start scan progress bar

                app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
                for i = 1:length(scanposvec)
                    if app.contscan == 1 % contscan can be turned to 0 with the STOP button
                        moveabs(app,getaxisname(app,scanvecind),scanposvec(i));
                        [app.dq,scanresvec(i)] = app.nidaqpool.readProcData(app.dq); %read from DAQ
                        updatescanprogress(app); %update scan progress bar
                        drawnow; % force immediate front panel update
                    end
                end
                app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                app.contscan = 0;

                plotvec = [app.ScanPlot_x,app.ScanPlot_y,app.ScanPlot_z];
                plot(plotvec(scanvecind),scanposvec,scanresvec); % plot data in appropriate 1D plot
                plotlabelvec = ['X (mm)';'Y (mm)';'Z (mm)'];
                plotvec(scanvecind).XLabel.String = plotlabelvec(scanvecind,:);

                %write results into variable for saving later
                app.data.x = scanposvec;
                app.data.res = scanresvec;
                app.data.plot = plotvec(scanvecind);
                app.data.dim = 1;
                assignin('base','latestscan',app.data);

                app.meancps.Value = mean(scanresvec); %calculate average
                app.mincps.Value = min(scanresvec); %calculate min
                app.maxcps.Value = max(scanresvec); %calculate max
                SaveSettingsButtonPushed(app,[]); %save all settings
            elseif sum(scanvec) == 2 %2D scan
                scanposvec1 = scanlims(scanvecind(1),1):stepsizes(scanvecind(1)):scanlims(scanvecind(1),2); % 1st vector of coordinates to be scanned
                scanposvec2 = scanlims(scanvecind(2),1):stepsizes(scanvecind(2)):scanlims(scanvecind(2),2); % 2nd vector of coordinates to be scanned
                scanresmat = zeros(length(scanposvec1),length(scanposvec2)); % matrix for results
                startscanprogress(app,length(scanposvec1)*length(scanposvec2));% start scan progress bar

                % scan in zigzag configuration to save on moving time
                app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
                direction = 1;
                for i = 1:length(scanposvec1)
                    moveabs(app,getaxisname(app,scanvecind(1)),scanposvec1(i));
                    for j = 1:length(scanposvec2)
                        if app.contscan == 1 % contscan can be turned to 0 with the STOP button
                            %  move into position on both coordinates
                            moveabs(app,getaxisname(app,scanvecind(2)),scanposvec2(j));
                            updatescanprogress(app);
                            drawnow; %required to immediately force update of front panel
                            [app.dq,scanresmat(i,j)] = app.nidaqpool.readProcData(app.dq); %read from DAQ
                        end
                    end
                    if app.zigzagscan.Value ==1 % only for zigzag scanning mode
                        if direction == -1
                            scanresmat(i,:) = flip(scanresmat(i,:));
                        end

                        %change direction
                        direction = -direction;
                        scanposvec2 = flip(scanposvec2);
                    end
                end
                if direction == -1 && app.zigzagscan.Value ==1
                    scanposvec2 = flip(scanposvec2);
                end
                app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                app.contscan = 0;
                app.scan2dparams.scanmode = 'Micro'; %latest scan mode (useful for datatip table functions)
                app.scan2dparams.scanaxis1 = getaxisname(app,scanvecind(1));
                app.scan2dparams.scanaxis2 = getaxisname(app,scanvecind(2));
                updateDatatipTable(app); % update UITable

                %2D plotting
                myplot = app.ScanPlot_2d;
                scanresmat = transpose(scanresmat); %transpose scanresmat so that X = columns, Y = rows (instead of vice versa)
                imagesc(myplot,scanposvec1,scanposvec2,scanresmat);

                % adjust axis labels
                myplot.XLabel.String = strcat(app.scan2dparams.scanaxis1," (mm)");
                myplot.YLabel.String = strcat(app.scan2dparams.scanaxis2," (mm)");

                if scanposvec1(1) > scanposvec1(end)
                    scanposvec1 = flip(scanposvec1);
                end
                if scanposvec2(1) > scanposvec2(end)
                    scanposvec2 = flip(scanposvec2);
                end
                myplot.XLim = [scanposvec1(1) scanposvec1(end)];
                myplot.YLim = [scanposvec2(1) scanposvec2(end)];

                %write scan results into variable for saving later
                app.data.x = scanposvec1;
                app.data.y = scanposvec2;
                app.data.res = scanresmat;
                app.data.plot = app.ScanPlot_2d;
                app.data.dim = 2;
                assignin('base','latestscan',app.data);

                app.meancps.Value = mean(scanresmat,"all"); %calculate average
                app.mincps.Value = min(min(scanresmat)); %calculate min
                app.maxcps.Value = max(max(scanresmat)); %calculate max

                if app.autoadjustplotlimits.Value == 1 % autoadjust 2D plot limits based on min-max
                    app.cmin.Value = app.mincps.Value;
                    app.cmax.Value = app.maxcps.Value;
                    cminValueChanged(app,[]);
                    cmaxValueChanged(app,[]);
                end
                SaveSettingsButtonPushed(app,[]); %save all settings
            elseif sum(scanvec) == 3
                logmsg(app,sprintf('3D scan not supported in this mode.'));
            end

            %return to initial position before scan if desired
            if app.ReturnInitPos.Value == 1
                if scanvec(1) == 1
                    moveabs(app,'X',initpos(1));
                end
                if scanvec(2) == 1
                    moveabs(app,'Y',initpos(2));
                end
                if scanvec(3) == 1
                    moveabs(app,'Z',initpos(3));
                end
            end
        end

        % Button pushed function: x200ButtonNano
        function x200ButtonNanoPushed(app, event)
            bounds = 200;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x100ButtonNano
        function x100ButtonNanoPushed(app, event)
            bounds = 100;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x50ButtonNano
        function x50ButtonNanoPushed(app, event)
            bounds = 50;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x25ButtonNano
        function x25ButtonNanoPushed(app, event)
            bounds = 25;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x10ButtonNano
        function x10ButtonNanoPushed(app, event)
            bounds = 10;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x5ButtonNano
        function x5ButtonNanoPushed(app, event)
            bounds = 5;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: x15ButtonNano
        function x15ButtonNanoPushed(app, event)
            bounds = 0.75;
            updatenanoscanparams(app,bounds,bounds,bounds);
        end

        % Button pushed function: Steps5
        function Steps5ButtonPushed(app, event)
            updatenanosteps(app,6);
        end

        % Button pushed function: Steps10
        function Steps10ButtonPushed(app, event)
            updatenanosteps(app,11);
        end

        % Button pushed function: Steps15
        function Steps15ButtonPushed(app, event)
            updatenanosteps(app,16);
        end

        % Button pushed function: Steps20
        function Steps20ButtonPushed(app, event)
            updatenanosteps(app,21);
        end

        % Button pushed function: Steps30
        function Steps30ButtonPushed(app, event)
            updatenanosteps(app,31);
        end

        % Value changed function: MicroXPos
        function MicroXPosValueChanged(app, event)
            moveabs(app, 'X', app.MicroXPos.Value);
        end

        % Value changed function: MicroYPos
        function MicroYPosValueChanged(app, event)
            moveabs(app, 'Y', app.MicroYPos.Value);
        end

        % Value changed function: MicroZPos
        function MicroZPosValueChanged(app, event)
            moveabs(app, 'Z', app.MicroZPos.Value);
        end

        % Button pushed function: NanodrivetooriginButton
        function NanodrivetooriginButtonPushed(app, event)
            movenano(app,'X',0);
            movenano(app,'Y',0);
            movenano(app,'Z',0);
        end

        % Value changed function: NanoPosX
        function NanoPosXValueChanged(app, event)
            movenano(app,'X',app.NanoPosX.Value);
        end

        % Value changed function: NanoPosY
        function NanoPosYValueChanged(app, event)
            movenano(app,'Y',app.NanoPosY.Value);
        end

        % Value changed function: NanoPosZ
        function NanoPosZValueChanged(app, event)
            movenano(app,'Z',app.NanoPosZ.Value);
        end

        % Button pushed function: LoadButton_nanodrive
        function LoadButton_nanodrivePushed(app, event)
            mclLoadLibnano(app);
        end

        % Button pushed function: UnloadButton_nanodrive
        function UnloadButton_nanodrivePushed(app, event)
            mclcleanupnano(app, 0);
        end

        % Button pushed function: ScanNanoButton
        function ScanNanoButtonPushed(app, event)
            CalcIncrNanoButtonPushed(app,[]); %update increments based on specified # of steps
            if app.MCLnanoset.loadstatus == 0
                if app.UseNanoDummy.Value == 0
                    logmsg(app,'NanoDrive not loaded. Aborting scan.')
                    return;
                end
                % if UseNanoDummy is activated then proceed with "dummy
                % scan" which doesn't actually move anything but allows
                % testing of code features
                logmsg(app,'NanoDrive not loaded. Dummy mode activated for code testing.');
            end
            app.contscan = 1;
            initpos = [app.NanoPosX.Value,app.NanoPosY.Value,app.NanoPosZ.Value]; % initial positions of all three axis; useful for returning to it later after scan
            scanvec=~[app.Fix_xNano.Value,app.Fix_yNano.Value,app.Fix_zNano.Value]; % vector of which axes are to be scanned
            scanvecind = find(scanvec == 1); % find index of non-zero members of scanvec
            scanlims = [app.nanoXscan_from.Value,app.nanoXscan_to.Value,app.nanoXscan_numsteps.Value;
                app.nanoYscan_from.Value,app.nanoYscan_to.Value,app.nanoYscan_numsteps.Value;
                app.nanoZscan_from.Value,app.nanoZscan_to.Value,app.nanoZscan_numsteps.Value]; %matrix of scan limits for each axis
            stepsizes = (scanlims(:,2)-scanlims(:,1))./(scanlims(:,3)-1); %step sizes based on number of steps
            
            
            if sum(scanvec) == 1 
                %% 1D scan
                scanposvec = scanlims(scanvecind,1):stepsizes(scanvecind):scanlims(scanvecind,2); % vector of coordinates to be scanned
                scanresvec = 0*scanposvec; % result vector
                startscanprogress(app,length(scanposvec));% start scan progress bar
                app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
                for i = 1:length(scanposvec)
                    if app.contscan == 1 % contscan can be turned to 0 with the STOP button
                        movenano(app,getaxisname(app,scanvecind),scanposvec(i)); % move nanostage into position.
                        [app.dq,scanresvec(i)] = app.nidaqpool.readProcData(app.dq); %read from DAQ
                        updatescanprogress(app);
                        drawnow; % force immediate front panel update
                    end
                end
                app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                app.contscan = 0;

                plotvec = [app.ScanPlot_x,app.ScanPlot_y,app.ScanPlot_z];
                plot(plotvec(scanvecind),scanposvec,scanresvec); % plot data in appropriate 1D plot
                plotlabelvec = ['X (um)';'Y (um)';'Z (um)'];
                plotvec(scanvecind).XLabel.String = plotlabelvec(scanvecind,:);

                %write scan results into variable for saving later
                app.data.x = scanposvec;
                app.data.res = scanresvec;
                app.data.plot = plotvec(scanvecind);
                app.data.dim = 1;
                assignin('base','latestscan',app.data);

                app.meancps.Value = mean(scanresvec); %calculate averag
                app.mincps.Value = min(scanresvec); %calculate min
                app.maxcps.Value = max(scanresvec); %calculate max

                SaveSettingsButtonPushed(app,[]); %save all settings
                %% 2D scan
            elseif sum(scanvec) == 2 %2D scan
                scanposvec1 = scanlims(scanvecind(1),1):stepsizes(scanvecind(1)):scanlims(scanvecind(1),2); % 1st vector of coordinates to be scanned
                scanposvec2 = scanlims(scanvecind(2),1):stepsizes(scanvecind(2)):scanlims(scanvecind(2),2); % 2nd vector of coordinates to be scanned
                scanresmat = zeros(length(scanposvec1),length(scanposvec2)); % matrix for results
                axisname1 = getaxisname(app,scanvecind(1)); %name of first axis to be scanned (X,Y,Z)
                axisname2 = getaxisname(app,scanvecind(2)); %name of second axis to be scanned (X,Y,Z)

                direction = 1; %scan direction (relevant for zigzag scanning)

                if app.BatchModeSwitch.Value == "On" %settings specific to batch scanning mode
                    app.dq.mode = "edge_batch";
                    app.dq.npulses = min(length(scanposvec2),app.MaxCoordsPerBatch.Value);
                    app.dq.DownTime = app.NanoFixedMoveTimeBatch.Value/1000; % initial delay to wait for Nanostage before DAQ starts (ms)
                    [axisno2, dir2] = mapaxes(app,axisname2,app.axismapvecmicro); %get number of second axis to be moved based on lab-nanostage coordinate mapping
                    startscanprogress(app,length(scanposvec1));% start scan progress bar
                    movenano(app,axisname1,scanposvec1(1)); %move into first position on first coordinate
                    movenano(app,axisname2,scanposvec2(1)); %move into first position on second coordinate
                else
                    startscanprogress(app,length(scanposvec1)*length(scanposvec2));% start scan progress bar
                end

                app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input task
                for i = 1:length(scanposvec1)
                    if app.contscan == 0
                        logmsg(app,'Scan cancelled.');
                        app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                        return
                    end
                    if app.BatchModeSwitch.Value == "Off" %regular point-by-point scanning mode
                        for j = 1:length(scanposvec2)
                            if app.contscan == 1 % contscan can be turned to 0 with the STOP button
                                movenano(app,axisname1,scanposvec1(i)); %move into position on first coordinate
                                movenano(app,axisname2,scanposvec2(j)); %move into position on second coordinate
                                updatescanprogress(app); % update scan progress bar
                                [app.dq,scanresmat(i,j)] = app.nidaqpool.readProcData(app.dq); %read from DAQ
                            end
                        end
                    elseif app.BatchModeSwitch.Value == "On" %batch scanning mode
                        scanresvec = scan1Row(app,scanposvec2,axisname1,axisno2,dir2,scanposvec1,i); %scan through all coordinates in batches
                        scanresmat(i,:) = scanresvec; %insert scanresvec (result of scanning 1 row) into 2D matrix
                        updatescanprogress(app); % update scan progress bar
                    end

                    if app.zigzagscanNano.Value == 1 % only for zigzag scanning mode
                        if direction == -1
                            scanresmat(i,:) = flip(scanresmat(i,:));
                        end

                        %change direction
                        direction = -direction;
                        scanposvec2 = flip(scanposvec2);
                    end
                    drawnow; %required to immediately force update of front panel
                end
                if direction == -1 && app.zigzagscanNano.Value ==1
                    scanposvec2 = flip(scanposvec2);
                end
                % if app.BatchModeSwitch.Value == "On"
                %      calllib('Madlib','MCL_IssBindClockToAxis',app.NanoDriveClk.Value,4,axisno2,app.nanohandle); %unbind axis
                % end
                app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                app.contscan = 0;
                app.scan2dparams.scanmode = 'Nano'; %latest scan mode (useful for datatip table functions)
                app.scan2dparams.scanaxis1 = getaxisname(app,scanvecind(1));
                app.scan2dparams.scanaxis2 = getaxisname(app,scanvecind(2));
                updateDatatipTable(app); % update UITable

                %2D plotting
                myplot = app.ScanPlot_2d;
                scanresmat = transpose(scanresmat); %transpose scanresmat so that X = columns, Y = rows (instead of vice versa)
                imagesc(myplot,scanposvec1,scanposvec2,scanresmat); %Note that even if scanposvec runs from high to low, this should still be correct.

                % adjust axis labels
                myplot.XLabel.String = strcat(app.scan2dparams.scanaxis1," (um)");
                myplot.YLabel.String = strcat(app.scan2dparams.scanaxis2," (um)");

                % adjust axis limits so they exactly reflect the requested scan range.
                % if scanning from high to low, we must flip the vector
                % of the axis limits to prevent error (must always be
                % specified from low to high). This does not affect the
                % orientation of the result matrix that has already
                % been plotted; it is only to specify the axis limits.
                if scanposvec1(1) > scanposvec1(end)
                    scanposvec1 = flip(scanposvec1);
                end
                if scanposvec2(1) > scanposvec2(end)
                    scanposvec2 = flip(scanposvec2);
                end
                myplot.XLim = [scanposvec1(1) scanposvec1(end)];
                myplot.YLim = [scanposvec2(1) scanposvec2(end)];


                %write scan results into variable for saving later
                app.data.x = scanposvec1;
                app.data.y = scanposvec2;
                app.data.res = scanresmat;
                app.data.plot = app.ScanPlot_2d;
                app.data.dim = 2;
                assignin('base','latestscan',app.data);

                app.meancps.Value = mean(scanresmat,"all");%calculate average
                app.mincps.Value = min(min(scanresmat)); %calculate min
                app.maxcps.Value = max(max(scanresmat)); %calculate max

                if app.autoadjustplotlimits.Value == 1 % autoadjust 2D plot limits based on min-max
                    app.cmin.Value = app.mincps.Value;
                    app.cmax.Value = app.maxcps.Value;
                    cminValueChanged(app,[]);
                    cmaxValueChanged(app,[]);
                end

                if app.BatchModeSwitch.Value == "On" %return back to regular edge counting mode
                    app.dq.mode = "edge";
                end
                SaveSettingsButtonPushed(app,[]); %save all settings
            elseif sum(scanvec) == 3
                logmsg(app,sprintf('3D scan not supported in this mode.'));
            end
            %return to initial position before scan if desired
            if app.ReturnInitPos.Value == 1
                if scanvec(1) == 1
                    movenano(app,'X',initpos(1));
                end
                if scanvec(2) == 1
                    movenano(app,'Y',initpos(2));
                end
                if scanvec(3) == 1
                    movenano(app,'Z',initpos(3));
                end
            end
        end

        % Button pushed function: TrackZNano
        function TrackZNanoButtonPushed(app, event)
            CalcIncrNanoButtonPushed(app,[]); %update increments based on specified # of steps
            if app.MCLnanoset.loadstatus == 0
                if app.UseNanoDummy.Value == 0
                    logmsg(app,'NanoDrive not loaded. Aborting scan.')
                    return; 
                end
                % if UseNanoDummy is activated then proceed with "dummy
                % scan" which doesn't actually move anything but allows
                % testing of code features
            end
            % This is just a single axis scan along z, identify the
            % highest peak and fix the z to that position
            app.contscan = 1;
            scanlims = [app.nanoZscan_from.Value,app.nanoZscan_to.Value,app.nanoZscan_numsteps.Value]; % z scan limits
            stepsizes = (scanlims(2)-scanlims(1))/(scanlims(3)-1); %step sizes based on number of steps
            scanposvec = scanlims(1):stepsizes:scanlims(2); % vector of coordinates to be scanned
            scanresvec = 0*scanposvec; % vector for scan results
            startscanprogress(app,length(scanposvec));% start scan progress bar

            app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input
            for i=1:length(scanposvec)
                if app.contscan == 1 % contscan can be changed with the STOP button
                    movenano(app,'Z',scanposvec(i)); % move nanostage into position.
                    [app.dq,scanresvec(i)] = app.nidaqpool.readProcData(app.dq);
                    updatescanprogress(app);
                    drawnow;
                end
            end
            app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
            app.contscan = 0;

            plot(app.ScanPlot_z,scanposvec,scanresvec); % plot data in appropriate 1D plot
            app.ScanPlot_z.XLabel.String = 'Z (um)';

            %write scan results into variable for saving later
            app.data.x = scanposvec;
            app.data.res = scanresvec;
            app.data.plot = app.ScanPlot_z;
            app.data.dim = 1;
            assignin('base','latestscan',app.data);

            app.meancps.Value = mean(scanresvec); %calculate average
            app.mincps.Value = min(scanresvec); %calculate min
            app.maxcps.Value = max(scanresvec); %calculate max
            %Find maximum Z position
            [~,maxind] = max(scanresvec);
            maxzpos = scanposvec(maxind);
            logmsg(app,sprintf('Maximum signal detected at z = %0.3f mm.',maxzpos));
            if app.automoveZ_Nano.Value == 1
                movenano(app,'Z',maxzpos); % move nanostage into max position
                logmsg(app,sprintf('Moved z to maximum position.'));
            end
            app.MCLnanoset.optzpos = maxzpos; % store this optimum z value
            SaveSettingsButtonPushed(app,[]); %save all settings
        end

        % Button pushed function: SaveDataButton
        function SaveDataButtonPushed(app, event)
            %check if filepath has extra slash at end, if so, remove it
            filepath = app.Savefilepath.Value{1};
            if ~isempty(filepath) && (filepath(end) == '/' || filepath(end) == '\')
                % Remove the last character
                filepath = filepath(1:end-1);
            end
            app.Savefilepath.Value = filepath;

            filename = strcat(filepath,"\",app.FileName.Value);
            % Extract the directory path from the full file path
            [fileDir, ~, ~] = fileparts(filename);

            % Check if the directory exists, if not, create it
            if ~exist(fileDir, 'dir')
                mkdir(fileDir);
            end
            if app.data.dim == 1
                x = app.data.x;
                res = app.data.res;
                if app.FormatDropDown.Value == "MAT"
                    app.slspool.saveState(app,filename); % save all app settings
                    save(filename,"x","res",'-append');
                elseif app.FormatDropDown.Value == "TXT"
                    writematrix(x,filename);
                    writematrix(res,filename,'WriteMode','append');
                elseif app.FormatDropDown.Value == "PNG"
                    filenameimg = strcat(filename,'.png');
                    exportgraphics(app.data.plot,filenameimg,'Resolution', 300);
                end
            elseif app.data.dim == 2
                x = app.data.x;
                y = app.data.y;
                res = app.data.res;
                if app.FormatDropDown.Value == "MAT"
                    app.slspool.saveState(app,filename); % save all app settings
                    save(filename,"x","y","res",'-append');
                elseif app.FormatDropDown.Value == "TXT"
                    writematrix(x,filename);
                    writematrix(y,filename,'WriteMode','append');
                    writematrix(res,filename,'WriteMode','append');
                elseif app.FormatDropDown.Value == "PNG"
                    filenameimg = strcat(filename,'.png');
                    exportgraphics(app.data.plot,filenameimg,'Resolution', 300);
                end
            else
                logmsg(app,'No scanned data to be saved yet.');
                return;
            end
            logmsg(app,sprintf('File saved at %s.',filename));
        end

        % Button pushed function: StopscanButton
        function StopscanButtonPushed(app, event)
            app.contscan=0; %prematurely end nano scan
        end

        % Button pushed function: SetAxesMap
        function SetAxesMapButtonPushed(app, event)
            prepMapaxes(app);
        end

        % Value changed function: cmin
        function cminValueChanged(app, event)
            if app.cmin.Value ~= app.cmax.Value %handle case if both are zero or the same value
                app.colorbar2d.Limits = [app.cmin.Value app.cmax.Value];
                app.ScanPlot_2d.CLim = [app.cmin.Value app.cmax.Value]; %set colorbar limits
            end
        end

        % Value changed function: cmax
        function cmaxValueChanged(app, event)
            if app.cmin.Value ~= app.cmax.Value %handle case if both are zero or the same value
                app.colorbar2d.Limits = [app.cmin.Value app.cmax.Value];
                app.ScanPlot_2d.CLim = [app.cmin.Value app.cmax.Value]; %set colorbar limits
            end
        end

        % Value changed function: DwellTime
        function DwellTimeValueChanged(app, event)
            % recalculate dwelltime and samples per read (used in analog
            % input acquisition)
            app.dq.DwellTime = app.DwellTime.Value;
            app.TimePerRead.Value = app.DwellTime.Value;
            app.dq.SampsPerRead = round(app.dq.DwellTime * app.dq.SampRate);
        end

        % Value changed function: TimePerRead
        function TimePerReadValueChanged(app, event)
            app.DwellTime.Value = app.TimePerRead.Value;
            DwellTimeValueChanged(app,[]);
        end

        % Button pushed function: x1Button
        function x1ButtonPushed(app, event)
            updatecoarsescanparams(app,1,1,1);
        end

        % Button pushed function: x05Button
        function x05ButtonPushed(app, event)
            updatecoarsescanparams(app,0.5,0.5,0.5);
        end

        % Button pushed function: x025Button
        function x025ButtonPushed(app, event)
            updatecoarsescanparams(app,0.25,0.25,0.25);
        end

        % Button pushed function: x01Button
        function x01ButtonPushed(app, event)
            updatecoarsescanparams(app,0.1,0.1,0.1);
        end

        % Button pushed function: x005Button
        function x005ButtonPushed(app, event)
            updatecoarsescanparams(app,0.05,0.05,0.05);
        end

        % Button pushed function: x001Button
        function x001ButtonPushed(app, event)
            updatecoarsescanparams(app,0.01,0.01,0.01);
        end

        % Button pushed function: CenterScanRange
        function CenterScanRangeButtonPushed(app, event)
            % shift the center of current scan parameters to the current
            % coordinates (or the ones in the . E.g. if the X scan range is 0 to 1 mm and the
            % current X is 4 mm, this shifts the the scan range to 3.5 to
            % 4.5 mm.
            deltax=app.CoarseXscan_to.Value-app.CoarseXscan_from.Value;
            deltay=app.CoarseYscan_to.Value-app.CoarseYscan_from.Value;
            deltaz=app.CoarseZscan_to.Value-app.CoarseZscan_from.Value;
            updatecoarsescanparams(app,deltax,deltay,deltaz);
        end

        % Button pushed function: CenterScanRangeNano
        function CenterScanRangeNanoButtonPushed(app, event)
            % shift the center of current scan parameters to the current
            % coordinates (or the ones in the . E.g. if the X scan range is 0 to 1 um and the
            % current X is 4 um, this shifts the the scan range to 3.5 to
            % 4.5 um.
            deltax=app.nanoXscan_to.Value-app.nanoXscan_from.Value;
            deltay=app.nanoYscan_to.Value-app.nanoYscan_from.Value;
            deltaz=app.nanoZscan_to.Value-app.nanoZscan_from.Value;
            updatenanoscanparams(app,deltax,deltay,deltaz);
        end

        % Button pushed function: CalcIncr
        function CalcIncrButtonPushed(app, event)
            if app.Coarse_Fix_X.Value == 0
                app.IncrX.Value = roundtomicroprec(app,abs((app.CoarseXscan_to.Value - app.CoarseXscan_from.Value))/(app.CoarseXscan_numsteps.Value-1));
            end
            if app.Coarse_Fix_Y.Value == 0
                app.IncrY.Value = roundtomicroprec(app,abs((app.CoarseYscan_to.Value - app.CoarseYscan_from.Value))/(app.CoarseYscan_numsteps.Value-1));
            end
            if app.Coarse_Fix_Z.Value == 0
                app.IncrZ.Value = roundtomicroprec(app,abs((app.CoarseZscan_to.Value - app.CoarseZscan_from.Value))/(app.CoarseZscan_numsteps.Value-1));
            end
        end

        % Button pushed function: CalcIncrNano
        function CalcIncrNanoButtonPushed(app, event)
            if app.Fix_xNano.Value == 0
                app.IncrXNano.Value = roundtonanoprec(app,abs((app.nanoXscan_to.Value - app.nanoXscan_from.Value))/(app.nanoXscan_numsteps.Value-1));
            end
            if app.Fix_yNano.Value == 0
                app.IncrYNano.Value = roundtonanoprec(app,abs((app.nanoYscan_to.Value - app.nanoYscan_from.Value))/(app.nanoYscan_numsteps.Value-1));
            end
            if app.Fix_zNano.Value == 0
                app.IncrZNano.Value = roundtonanoprec(app,abs((app.nanoZscan_to.Value - app.nanoZscan_from.Value))/(app.nanoZscan_numsteps.Value-1));
            end
        end

        % Button pushed function: GenSteps
        function GenStepsButtonPushed(app, event)
            if app.Coarse_Fix_X.Value == 0
                scandist = app.CoarseXscan_to.Value - app.CoarseXscan_from.Value;
                app.CoarseXscan_numsteps.Value = round(abs(scandist/app.IncrX.Value)) + 1;
            end
            if app.Coarse_Fix_Y.Value == 0
                scandist = app.CoarseYscan_to.Value - app.CoarseYscan_from.Value;
                app.CoarseYscan_numsteps.Value = round(abs(scandist/app.IncrY.Value)) + 1;
            end
            if app.Coarse_Fix_Z.Value == 0
                scandist = app.CoarseZscan_to.Value - app.CoarseZscan_from.Value;
                app.CoarseZscan_numsteps.Value = round(abs(scandist/app.IncrZ.Value)) + 1;
            end
        end

        % Button pushed function: GenStepsNano
        function GenStepsNanoButtonPushed(app, event)
            if app.Fix_xNano.Value == 0
                scandist = app.nanoXscan_to.Value - app.nanoXscan_from.Value;
                app.nanoXscan_numsteps.Value = round(abs(scandist/app.IncrXNano.Value)) + 1;
            end
            if app.Fix_yNano.Value == 0
                scandist = app.nanoYscan_to.Value - app.nanoYscan_from.Value;
                app.nanoYscan_numsteps.Value = round(abs(scandist/app.IncrYNano.Value)) + 1;
            end
            if app.Fix_zNano.Value == 0
                scandist = app.nanoZscan_to.Value - app.nanoZscan_from.Value;
                app.nanoZscan_numsteps.Value = round(abs(scandist/app.IncrZNano.Value)) + 1;
            end
        end

        % Button pushed function: NanoXleft
        function NanoXleftButtonPushed(app, event)
            movenano(app, 'X', app.NanoPosX.Value-app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: NanoXright
        function NanoXrightButtonPushed(app, event)
            movenano(app, 'X', app.NanoPosX.Value+app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: NanoYup
        function NanoYupButtonPushed(app, event)
            movenano(app, 'Y', app.NanoPosY.Value+app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: NanoYdown
        function NanoYdownButtonPushed(app, event)
            movenano(app, 'Y', app.NanoPosY.Value-app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: NanoZup
        function NanoZupButtonPushed(app, event)
            movenano(app, 'Z', app.NanoPosZ.Value+app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: NanoZdown
        function NanoZdownButtonPushed(app, event)
            movenano(app, 'Z', app.NanoPosZ.Value-app.StepSizeUm.Value);
            if app.plotcurcps.Value == 1
                take1data(app);
            end
        end

        % Button pushed function: FlipXButton
        function FlipXButtonPushed(app, event)
            [app.CoarseXscan_from.Value,app.CoarseXscan_to.Value]=swap(app,app.CoarseXscan_from.Value,app.CoarseXscan_to.Value);
        end

        % Button pushed function: FlipYButton
        function FlipYButtonPushed(app, event)
            [app.CoarseYscan_from.Value,app.CoarseYscan_to.Value]=swap(app,app.CoarseYscan_from.Value,app.CoarseYscan_to.Value);
        end

        % Button pushed function: FlipZButton
        function FlipZButtonPushed(app, event)
            [app.CoarseZscan_from.Value,app.CoarseZscan_to.Value]=swap(app,app.CoarseZscan_from.Value,app.CoarseZscan_to.Value);
        end

        % Button pushed function: FlipXButton_Nano
        function FlipXButton_NanoPushed(app, event)
            [app.nanoXscan_from.Value,app.nanoXscan_to.Value]=swap(app,app.nanoXscan_from.Value,app.nanoXscan_to.Value);
        end

        % Button pushed function: FlipYButton_Nano
        function FlipYButton_NanoPushed(app, event)
            [app.nanoYscan_from.Value,app.nanoYscan_to.Value]=swap(app,app.nanoYscan_from.Value,app.nanoYscan_to.Value);
        end

        % Button pushed function: FlipZButton_Nano
        function FlipZButton_NanoPushed(app, event)
            [app.nanoZscan_from.Value,app.nanoZscan_to.Value]=swap(app,app.nanoZscan_from.Value,app.nanoZscan_to.Value);
        end

        % Value changed function: NanoDriveRealX
        function NanoDriveRealXValueChanged(app, event)
            movenano(app,1,app.NanoDriveRealX.Value);
        end

        % Value changed function: NanoDriveRealY
        function NanoDriveRealYValueChanged(app, event)
             movenano(app,2,app.NanoDriveRealY.Value);
        end

        % Value changed function: NanoDriveRealZ
        function NanoDriveRealZValueChanged(app, event)
             movenano(app,3,app.NanoDriveRealZ.Value);
        end

        % Button pushed function: ReadNanoPos
        function ReadNanoPosButtonPushed(app, event)
            readnano(app,'X',app.NanoNreads.Value);
            readnano(app,'Y',app.NanoNreads.Value);
            readnano(app,'Z',app.NanoNreads.Value);
        end

        % Value changed function: NanoDrivePosMonitor
        function NanoDrivePosMonitorValueChanged(app, event)
            if app.NanoDrivePosMonitor.Value == 1 && app.MCLnanoset.loadstatus == 1    
                %Note: use runTaskForever to overcome MATLAB's 8-hour limit
                %on timers. Reset timer every 4 hours
                app.MCLnanoset.monitorpostimer = runTaskForever(@(src,event) app.ReadNanoPosButtonPushed(),app.NanoDrivePosMonitorPeriod.Value,14403,'Monitor NanoDrive Position'); 
            else
                try
                    delete(app.MCLnanoset.monitorpostimer );
                catch
                end
            end
        end

        % Selection changed function: AcquisitionmodeButtonGroup
        function AcquisitionmodeButtonGroupSelectionChanged(app, event)
            if app.EdgecountButton.Value == 1
                app.dq.mode = "edge";
                app.UnitLabel.Text = 'kcps';
                app.UnitLabel_2.Text = 'kcps';
                app.UnitLabel_3.Text = 'kcps';
                app.UnitLabel_4.Text = 'kcps';
            elseif app.AnalogvoltageButton.Value == 1
                app.dq.mode = "analog";
                app.UnitLabel.Text = 'volts';
                app.UnitLabel_2.Text = 'volts';
                app.UnitLabel_3.Text = 'volts';
                app.UnitLabel_4.Text = 'volts';
            end
        end

        % Button pushed function: StreamStartStop
        function StreamStartStopButtonPushed(app, event)
            if app.dq.stream == 0
                app.dq.stream = 1;
                app.StreamStartStop.BackgroundColor = [1 0 0];
                app.dq = app.nidaqpool.setupTasks(app.dq); %setup tasks and start input

                if length(app.streambufferdaq) ~= app.MaxStreamBufferSize.Value
                    app.streambufferdaq = zeros(1,app.MaxStreamBufferSize.Value); % if buffer size has been changed, initiate new one
                else
                    app.streambufferdaq(:) = 0; %otherwise, just set the previous one's values to all zeros (saves memory preallocation time)
                end
              
                buffercounter = 1; %needed for tracking what to plot when buffer is not full
                logmsg(app,'Started streaming data.');
                while app.dq.stream == 1 
                   % tic 
                    [app,datamean,datasd] = takemultdata(app,app.ReadsPerMean.Value);
                   % toc
                    datamean = double(datamean);
                    datasd = double(datasd);
                    app.siglivegauge.Value = datamean;
                    app.CurSigMean.Value = datamean;
                    app.CurSigSD.Value = datasd;
                    % logmsg(app,sprintf('Data mean is %.2f',datamean));
                    %Plot data on chart which also shows past values
                    % %(stored in a circular buffer)
                    app.streambufferdaq = updatebuffer(app,app.streambufferdaq,datamean); %insert new value into buffer
                    
                    if buffercounter < length(app.streambufferdaq)
                        dataplotvec = app.streambufferdaq(end-buffercounter+1:end); %only select values in the buffer which have been filled with actual data
                        % assignin('base','buffercounter',buffercounter)
                    else
                        dataplotvec = app.streambufferdaq; %if buffercounter > lengtth then that means the whole buffer has been filled
                    end
                    buffercounter = buffercounter + 1;% update buffer counter

                    if length(dataplotvec) > app.StreamDispNumPoints.Value
                        dataplotvec = dataplotvec(end-app.StreamDispNumPoints.Value+1:end); %only plot number of values specified
                    end
                    
                    myplot = app.UIAxesDataStream;
                    plot(myplot,dataplotvec);
                    myplot.XLim = [1 app.StreamDispNumPoints.Value];
                    if app.DataStreamPlotAutoScale.Value == 0 && app.DataStreamPlotYMin.Value<app.DataStreamPlotYMax.Value
                        myplot.YLim = [app.DataStreamPlotYMin.Value app.DataStreamPlotYMax.Value];
                    else
                        myplot.YLimMode = 'auto'; %set autoscale
                    end
                    drawnow; % necessary to update the front panel. Also without this it will be impossible to start/stop and the app will freeze.
                end
            else
                app.dq.stream = 0;
                % clear streambuffer dataplotvec; %clear variables to free up memory
                app.nidaqpool.clearAllTasks(app.dq); %clear all tasks
                app.StreamStartStop.BackgroundColor = [0.4667 0.6745 0.1882];
                drawnow;
                logmsg(app,'Stopped streaming data.')
            end
        end

        % Value changed function: Gauge_upper_limit
        function Gauge_upper_limitValueChanged(app, event)
            value = app.Gauge_upper_limit.Value;
            app.siglivegauge.Limits = [0 value];
        end

        % Button pushed function: MeasPosErrStart
        function MeasPosErrStartButtonPushed(app, event)
            if app.MCLnanoset.loadstatus == 0 % only do stuff if nanodrives are loaded
                logmsg(app,sprintf('NanoDrive not loaded.'))
            elseif app.MCLnanoset.loadstatus == 1
                %Note: ideally this should be done with small increment
                %sizes, usually 2 um

                % Save previous program parameters and adjust to new
                % parameters optimized for pos error measurement
                prevPositionerrorthresholdButton = app.PositionerrorthresholdButton.Value;
                prevNanoFixedSettleTime = app.NanoFixedMoveTime.Value;
                prevAbsPosCorrSwitch = app.AbsPosCorrSwitch.Value;
                prevNanoSkip = app.NanoSkipifSame.Value;

                app.FixedsettlingtimeButton.Value = 1; %Used fixed settling time instead of position-error dependent
                app.NanoFixedMoveTime.Value = 500;
                app.AbsPosCorrSwitch.Value = 0; %deactivate movement correction when trying to measure for the correction!
                app.NanoSkipifSame.Value = 0; %deactivate skipping move position command if position is already close enough

                % Measure Y
                if app.MeasPosErrY.Value == 1
                    app.contscan = 1;
                    axis = 3;
                    posvecy = 0:app.PosErrScanIncr.Value:100;
                    poserrvecy = zeros(1,length(posvecy));
                    movenano(app,axis,posvecy(1));
                    pause(2);
                    startscanprogress(app,length(posvecy));
                    for i=1:length(posvecy)
                        if app.contscan == 1 %stop scan if Stop button is pressed
                            movenano(app,axis,posvecy(i));
                            poserrvecy(i) = app.MCLnanoset.poserror;
                            updatescanprogress(app);
                        end
                    end
                    movenano(app,axis,posvecy(1));
                    fitplot1dscan(app,posvecy,poserrvecy,2); % fit data and generate plots
                    app.MCLnanoset.posvecy = posvecy;
                    app.MCLnanoset.poserrvecy = poserrvecy;
                    % assignin('base','posvecy',posvecy);
                    % assignin('base','poserrvecy',poserrvecy);
                end

                % Measure X,Z
                if app.MeasPosErrXZ.Value == 1
                    app.contscan = 1;
                    posvec = 0:app.PosErrScanIncr.Value:100;
                    poserrmatX = zeros(length(posvec),length(posvec));
                    poserrmatZ = poserrmatX;
                    movenano(app,1,posvec(1));
                    movenano(app,3,posvec(1));
                    pause(2);
                    startscanprogress(app,length(posvec)^2);
                    for i = 1:length(posvec)
                        for j = 1:length(posvec)
                            if app.contscan == 1
                                movenano(app,1,posvec(j));
                                poserrmatX(i,j) = app.MCLnanoset.poserror;
                                movenano(app,3,posvec(i));
                                poserrmatZ(i,j) = app.MCLnanoset.poserror;
                                updatescanprogress(app);
                            end
                        end
                    end
                    movenano(app,1,posvec(1));
                    movenano(app,3,posvec(1));

                    % Reject points at X = 0, Z = 0 (esp. the former) as
                    % these may be affected by insufficient settling time
                    % due to long jumps
                    poserrmatX(:,1) = [];
                    poserrmatX(1,:) = [];
                    poserrmatZ(1,:) = [];
                    poserrmatZ(:,1) = [];
                    posvec(1)=[];

                    %perform fitting
                    fitplot2dscan(app,posvec,posvec,poserrmatX,1); %fit and plot X pos error
                    fitplot2dscan(app,posvec,posvec,poserrmatZ,3); %fit and plot Z pos error
                    app.MCLnanoset.posvecxz = posvec;
                    app.MCLnanoset.poserrmatX = poserrmatX;
                    app.MCLnanoset.poserrmatZ = poserrmatZ;

                    assign values to console for further analysis
                    assignin('base','posvecxz',posvec);
                    assignin('base','poserrmatX',poserrmatX);
                    assignin('base','poserrmatZ',poserrmatZ);
                end
            end
        end

        % Button pushed function: MeasPosErrStop
        function MeasPosErrStopButtonPushed(app, event)
            app.contscan = 0;
        end

        % Button pushed function: PosErrCoeffUpdate
        function PosErrCoeffUpdateButtonPushed(app, event)
            loadnanoposcorr(app); %copy app.MCLnanoset.nanoposcorr into front panel indicators, which will actually be used for position correction
        end

        % Button pushed function: SavePosErrCoeffs
        function SavePosErrCoeffsButtonPushed(app, event)
            app.MCLnanoset.nanoposcorr = [app.NanoDriveCorrXint.Value,app.NanoDriveCorrXX.Value,app.NanoDriveCorrXY.Value,app.NanoDriveCorrXZ.Value;
                app.NanoDriveCorrYint.Value,app.NanoDriveCorrYX.Value,app.NanoDriveCorrYY.Value,app.NanoDriveCorrYZ.Value;
                app.NanoDriveCorrZint.Value,app.NanoDriveCorrZX.Value,app.NanoDriveCorrZY.Value,app.NanoDriveCorrZZ.Value];
            writematrix(app.MCLnanoset.nanoposcorr,fullfile(app.appDepPath,'confocalnanocorr.csv'));
        end

        % Button pushed function: LoadNanoDriveCorr
        function LoadNanoDriveCorrButtonPushed(app, event)
            app.MCLnanoset.nanoposcorr = importdata(fullfile(app.appDepPath,'confocalnanocorr.csv'));
            loadnanoposcorr(app); %load values into panel indicators in Nanodrive settings tab
        end

        % Button pushed function: MonitorStagePosStartStop
        function MonitorStagePosStartStopButtonPushed(app, event)
             if app.MCLnanoset.stream == 0
                app.MCLnanoset.stream = 1;
                app.MCLnanoset.enableupdateposindic = 0; %disable updating of Nanostage position indicators (improve performance)
                app.MonitorStagePosStartStop.BackgroundColor = [1 0 0];
                app.MonitorStagePosStartStop.Text = 'Stop monitoring';

                app.MCLnanoset.prevNanoNreads = app.NanoNreads.Value; %save previously set value of this indicator, to be restored later
                app.NanoNreads.Value = 1; %read only 1 value at a time

                if length(app.streambuffernano) ~= app.MonitorNanoMaxStreamBufferSize.Value
                    app.streambuffernano = zeros(3,app.MonitorNanoMaxStreamBufferSize.Value); % if buffer size has been changed, initiate new one
                else
                    app.streambuffernano(:) = 0; %otherwise, just set the previous one's values to all zeros (saves memory preallocation time)
                end
                buffercounter = 1; %needed for tracking what to plot when buffer is not full

                logmsg(app,'Started streaming Nanodrive monitoring data.');
                app.allowlogmsg = 0; %suppress log messages which notify Nanodrive position
                while app.MCLnanoset.stream == 1 
                    % tic
                    [~,newvalx] = readnano(app,1,app.NanoNreads.Value);
                    [~,newvaly] = readnano(app,2,app.NanoNreads.Value);
                    [~,newvalz] = readnano(app,3,app.NanoNreads.Value);
                      % toc
                    
                    %Plot data on chart which also shows past values
                    % %(stored in a circular buffer)
                    app.streambuffernano(1,:) = updatebuffer(app,app.streambuffernano(1,:),newvalx); %insert new value into buffer
                    app.streambuffernano(2,:) = updatebuffer(app,app.streambuffernano(2,:),newvaly); %insert new value into buffer
                    app.streambuffernano(3,:) = updatebuffer(app,app.streambuffernano(3,:),newvalz); %insert new value into buffer

                    if buffercounter < length(app.streambuffernano)
                        dataplotvec = app.streambuffernano(:,end-buffercounter+1:end); %only select values in the buffer which have been filled with actual data
                        % assignin('base','buffercounter',buffercounter)
                    else
                        dataplotvec = app.streambuffernano; %if buffercounter > lengtth then that means the whole buffer has been filled
                    end
                    analyzevec = dataplotvec; %for analysis later
                    buffercounter = buffercounter + 1;% update buffer counter

                    if length(dataplotvec) > app.MonitorNanoDispNumPoints.Value
                        dataplotvec = dataplotvec(:,end-app.MonitorNanoDispNumPoints.Value+1:end); %only plot number of values specified
                    end
                    
                    myplotX = app.MonitorNanoStageXPlot;
                    myplotY = app.MonitorNanoStageYPlot;
                    myplotZ = app.MonitorNanoStageZPlot;

                    % plot X
                    plot(myplotX,dataplotvec(1,:));
                    myplotX.XLim = [1 app.MonitorNanoDispNumPoints.Value];
                    if app.MonitorNanoAutoScaleX.Value == 0 && app.NanoStageXMonPlotMin.Value<app.NanoStageXMonPlotMax.Value
                        myplotX.YLim = [app.NanoStageXMonPlotMin.Value app.NanoStageXMonPlotMax.Value];
                    else
                        myplotX.YLimMode = 'auto'; %set autoscale
                    end

                    % plot Y
                    plot(myplotY,dataplotvec(2,:));
                    myplotY.XLim = [1 app.MonitorNanoDispNumPoints.Value];
                    if app.MonitorNanoAutoScaleY.Value == 0 && app.NanoStageYMonPlotMin.Value<app.NanoStageYMonPlotMax.Value
                        myplotY.YLim = [app.NanoStageYMonPlotMin.Value app.NanoStageYMonPlotMax.Value];
                    else
                        myplotY.YLimMode = 'auto'; %set autoscale
                    end

                    % plot Z
                    plot(myplotZ,dataplotvec(3,:));
                    myplotZ.XLim = [1 app.MonitorNanoDispNumPoints.Value];
                    if app.MonitorNanoAutoScaleZ.Value == 0 && app.NanoStageZMonPlotMin.Value<app.NanoStageZMonPlotMax.Value
                        myplotZ.YLim = [app.NanoStageZMonPlotMin.Value app.NanoStageZMonPlotMax.Value];
                    else
                        myplotZ.YLimMode = 'auto'; %set autoscale
                    end

                    % calculate mean and SD
                    if length(analyzevec) > app.MonitorNanoAnalyzeNumPoints.Value
                        analyzevec = analyzevec(:,end-app.MonitorNanoAnalyzeNumPoints.Value+1:end); %only analyze number of values specified
                    end
                    assignin('base',"analyzevec",analyzevec);

                    app.NanoStageXMonMean.Value = mean(analyzevec(1,:));
                    app.NanoStageYMonMean.Value = mean(analyzevec(2,:));
                    app.NanoStageZMonMean.Value = mean(analyzevec(3,:));

                    app.NanoStageXMonSD.Value = std(analyzevec(1,:));
                    app.NanoStageYMonSD.Value = std(analyzevec(2,:));
                    app.NanoStageZMonSD.Value = std(analyzevec(3,:));

                    drawnow; % necessary to update the front panel. Also without this it will be impossible to start/stop and the app will freeze.
                   
                end
             else
                app.MCLnanoset.stream = 0;
                app.allowlogmsg = 1; %reenable messages
                app.MCLnanoset.enableupdateposindic = 1; %reenable updating of Nanostage position indicators on front panel
                % app.MonitorStagePosStartStop.BackgroundColor = [1 1 0];
                % app.MonitorStagePosStartStop.Text = 'Clearing buffer...';
                % 
                app.MonitorStagePosStartStop.BackgroundColor = [0.4667 0.6745 0.1882];
                app.MonitorStagePosStartStop.Text = 'Monitor stage positions';
                % tic
                drawnow;
                % toc
                app.NanoNreads.Value = app.MCLnanoset.prevNanoNreads;
                logmsg(app,'Stopped streaming Nanodrive stage monitoring data.')
             end
        end

        % Value changed function: BatchModeSwitch
        function BatchModeSwitchValueChanged(app, event)
            value = app.BatchModeSwitch.Value;
            if value == "On"
                app.BatchModeSettingsPanel.BackgroundColor = [0.94 0.94 0.94];
                % app.NanostagesettlingtimeButtonGroup.BackgroundColor = [0.94 0.94 0.94];
                app.StagesettlingtimeaftermovementButtonGroup.BackgroundColor = [0.5 0.5 0.5];
                app.InactiveLabelBatch.Visible= "Off";
                app.InactiveLabelNormal.Visible = "On";
            elseif value == "Off"
                app.BatchModeSettingsPanel.BackgroundColor = [0.5 0.5 0.5];
                % app.NanostagesettlingtimeButtonGroup.BackgroundColor = [0.5 0.5 0.5];
                app.StagesettlingtimeaftermovementButtonGroup.BackgroundColor = [0.94 0.94 0.94];
                app.InactiveLabelBatch.Visible= "On";
                app.InactiveLabelNormal.Visible = "Off";
            end
        end

        % Button pushed function: OpenMFFconnButton
        function OpenMFFconnButtonPushed(app, event)
            app.mff.devCLI = NET.addAssembly('C:\Program Files\Thorlabs\Kinesis\Thorlabs.MotionControl.DeviceManagerCLI.dll');
            app.mff.genCLI = NET.addAssembly('C:\Program Files\Thorlabs\Kinesis\Thorlabs.MotionControl.GenericMotorCLI.dll');
            app.mff.motCLI = NET.addAssembly('C:\Program Files\Thorlabs\Kinesis\Thorlabs.MotionControl.FilterFlipperCLI.dll');
            import Thorlabs.MotionControl.DeviceManagerCLI.*
            import Thorlabs.MotionControl.GenericMotorCLI.*
            import Thorlabs.MotionControl.FilterFlipperCLI.*

            DeviceManagerCLI.BuildDeviceList();
            DeviceManagerCLI.GetDeviceListSize();
            DeviceManagerCLI.GetDeviceList();
            if app.mff.conopen == 0
                try
                    if app.EnableColorMFF.Value == 1
                        logmsg(app,'Opening connection to color MFF101 filter flipper...');
                        app.mff.devicec = FilterFlipper.CreateFilterFlipper(app.SerialNumbercolor.Value); %;The output of this line must be suppressed
                        app.mff.devicec.Connect(app.SerialNumbercolor.Value)
                        app.mff.devicec.WaitForSettingsInitialized(2000);
                        app.mff.devicec.StartPolling(app.MFFpollperiod.Value); % start polling status from MFF101
                        pause(0.2);
                        app.mff.devicec.EnableDevice()
                        pause(0.2);
                        app.mff.conopen = 1;
                        logmsg(app,'Connection successfully opened.');

                        %Note: use runTaskForever to overcome MATLAB's 8-hour limit
                        %on timers. Reset timer every 4 hours
                        app.mff.updateindicatortimerc = runTaskForever(@(src,event) updatemffindicatorsColor(app),app.MFFpollperiod.Value/1000,14400,'Monitor MFF101 Filter Flipper Red/Green Position.');

                        app.OpenMFFconnButton.BackgroundColor = [1 0 0];
                        app.OpenMFFconnButton.Text = 'Close connection(s)';
                    end

                    if app.EnableNDMFF.Value == 1
                        logmsg(app,'Opening connection to ND MFF101 filter flipper...');
                        app.mff.devicen = FilterFlipper.CreateFilterFlipper(app.SerialNumberND.Value); %;The output of this line must be suppressed
                        app.mff.devicen.Connect(app.SerialNumberND.Value)
                        app.mff.devicen.WaitForSettingsInitialized(2000);
                        app.mff.devicen.StartPolling(app.MFFpollperiod.Value); % start polling status from MFF101
                        pause(0.2);
                        app.mff.devicen.EnableDevice()
                        pause(0.2);
                        app.mff.conopen = 1;
                        logmsg(app,'Connection successfully opened.');

                        %Note: use runTaskForever to overcome MATLAB's 8-hour limit
                        %on timers. Reset timer every 4 hours
                        app.mff.updateindicatortimern = runTaskForever(@(src,event) updatemffindicatorsND(app),app.MFFpollperiod.Value/1000,14401,'Monitor MFF101 Filter Flipper ND Position.');


                        app.OpenMFFconnButton.BackgroundColor = [1 0 0];
                        app.OpenMFFconnButton.Text = 'Close connection(s)';
                    end
                catch e
                    logmsg(app,['Error: ',e.message]);
                end
            else
                if app.EnableColorMFF.Value == 1
                    delete(app.mff.updateindicatortimerc);
                    app.mff.devicec.StopPolling();
                    app.mff.devicec.DisableDevice();
                    app.mff.devicec.Disconnect();
                    logmsg(app,'Connection to Color MFF101 filter flipper closed.');
                end
                if app.EnableNDMFF.Value == 1
                    delete(app.mff.updateindicatortimern);
                    app.mff.devicen.StopPolling();
                    app.mff.devicen.DisableDevice();
                    app.mff.devicen.Disconnect();
                    logmsg(app,'Connection to ND MFF101 filter flipper closed.');
                end

                app.mff.conopen = 0;
                app.OpenMFFconnButton.BackgroundColor = [0.4667 0.6745 0.1882];
                app.OpenMFFconnButton.Text = 'Open connection(s)';
            end
        end

        % Value changed function: MFFPositionSwitchColor
        function MFFPositionSwitchColorValueChanged(app, event)
            value = app.MFFPositionSwitchColor.Value;
            if app.mff.conopen == 1 && app.EnableColorMFF.Value == 1
                if value == "1"
                    mffnewpos = 1;
                elseif value == "2"
                    mffnewpos = 2;
                end
                try
                    app.mff.devicec.SetPosition(mffnewpos,app.MFFtimeout.Value);
                catch e
                    logmsg(app,['Error: ',e.message]);
                end

                logmsg(app,sprintf('Set color MFF101 device to position %d.',mffnewpos));
            else % if connection not open, do not do anything and revert switch position back
                if app.MFFPositionSwitchColor.Value == "1"
                    app.MFFPositionSwitchColor.Value = "2";
                elseif app.MFFPositionSwitchColor.Value == "2"
                    app.MFFPositionSwitchColor.Value = "1";
                end
                logmsg(app,'Connection with color MFF101 not open.')
            end
        end

        % Value changed function: MFFPositionSwitchND
        function MFFPositionSwitchNDValueChanged(app, event)
            value = app.MFFPositionSwitchND.Value;
            if app.mff.conopen == 1 && app.EnableNDMFF.Value == 1
                if value == "1"
                    mffnewpos = 1;
                elseif value == "2"
                    mffnewpos = 2;
                end
                try
                    app.mff.devicen.SetPosition(mffnewpos,app.MFFtimeout.Value);
                catch e
                    logmsg(app,['Error: ',e.message]);
                end
                logmsg(app,sprintf('Set ND MFF101 device to position %d.',mffnewpos));
            else % if connection not open, do not do anything and revert switch position back
                if app.MFFPositionSwitchND.Value == "1"
                    app.MFFPositionSwitchND.Value = "2";
                elseif app.MFFPositionSwitchND.Value == "2"
                    app.MFFPositionSwitchND.Value = "1";
                end
                logmsg(app,'Connection with ND MFF101 not open.')
            end

        end

        % Value changed function: ColorSwitch
        function ColorSwitchValueChanged(app, event)
            % Switch MFF101 position based on Red/Green assignment
            if app.mff.conopen == 1
                value = app.ColorSwitch.Value;
                if app.RedPos.Value == "1"
                    poscolormap = string([1,2]);
                elseif app.RedPos.Value == "2"
                    poscolormap = string([2,1]);
                end
                if value == "Red"
                    newpos = poscolormap(1);
                    app.CurrentlightLamp.Color = [1 0 0];
                elseif value == "Green"
                    newpos = poscolormap(2);
                    app.CurrentlightLamp.Color = [0 1 0];
                end
                % logmsg(app,sprintf('Newpos is %s',newpos));
                if newpos ~= app.MFFPositionSwitchColor.Value %only move if new position is not the same as what it is already
                    app.MFFPositionSwitchColor.Value = newpos;
                    MFFPositionSwitchColorValueChanged(app,[]);
                else
                    logmsg(app,'MFF101 device already at correct position');
                end
            else
                logmsg(app,'Connection with color MFF101 not open.')
            end
        end

        % Value changed function: NDSwitch
        function NDSwitchValueChanged(app, event)
            % Switch MFF101 position based on ND/none assignment
            if app.mff.conopen == 1
                value = app.NDSwitch.Value;
                if app.NDPos.Value == "1"
                    poscolormap = string([1,2]);
                elseif app.NDPos.Value == "2"
                    poscolormap = string([2,1]);
                end
                if value == "ND filter"
                    newpos = poscolormap(1);
                elseif value == "None"
                    newpos = poscolormap(2);
                end
                if newpos ~= app.MFFPositionSwitchND.Value %only move if new position is not the same as what it is already
                    app.MFFPositionSwitchND.Value = newpos;
                    MFFPositionSwitchNDValueChanged(app,[]);
                else
                    logmsg(app,'MFF101 device already at correct position');
                end
            else
                logmsg(app,'Connection with color MFF101 not open.')
            end
        end

        % Value changed function: EnableLaserPowerMonitor
        function EnableLaserPowerMonitorValueChanged(app, event)
            if app.EnableLaserPowerMonitor.Value == 1
                app.dqlaser.mode = "analog";
                % variables for analog voltage input acquisition
                app.dqlaser.loadstatus = 1;
                app.dqlaser.AIchan = strcat('/',app.DevName.Value,'/ai',num2str(app.InputChLaserMonitor.Value)); % AI input channel name
                app.dqlaser.DynRange = 10; % Dynamic range of DAQ will be +/- of this value
                app.dqlaser.SampRate = 2*10^6; % Sampling rate (max 1 MHz)
                app.dqlaser.SampsPerRead = 100; % Number of samples per read, based on dwell time
                app.dqlaser.VoltageInputArray = zeros(1,app.dqlaser.SampsPerRead); %array to store each set of reads from daq
    
                %Note: use runTaskForever to overcome MATLAB's 8-hour limit
                %on timers. Reset timer every 4 hours
                app.dqlaser.takereadtimer = runTaskForever(@(src,event) updatelasermon(app),app.LaserMonitorPeriod.Value,14402,'Laser power monitor'); 
            else
                try
                    delete(app.dqlaser.takereadtimer);
                catch
                end
            end

        end

        % Value changed function: RecordDataTips
        function RecordDataTipsValueChanged(app, event)
            if app.RecordDataTips.Value == 1
                setupDatatipListener(app);
            else
                disableDatatipListener(app);
            end
        end

        % Button pushed function: SaveSettings
        function SaveSettingsButtonPushed(app, event)
            app.slspool.saveState(app,app.SettingsFilePath.Value{1}); % save all app settings
            app.movecount = 0;
            logmsg(app,sprintf('Saved all app settings to %s.',app.SettingsFilePath.Value{1}));
        end

        % Button pushed function: ReloadSettings
        function ReloadSettingsButtonPushed(app, event)
            % settingsfilepath = fullfile(app.appDepPath,'DMconfocal_settings.mat');
            % app.slspool.loadState(app,settingsfilepath); %load all app settings
            app.slspool.loadState(app,app.SettingsFilePath.Value{1}); %load all app settings
            logmsg(app,sprintf('Loaded all app settings from %s.',app.SettingsFilePath.Value{1}));
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            colormap(app.UIFigure, 'jet');
            app.UIFigure.Position = [100 100 1626 1020];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [20 21 1588 953];

            % Create MainTab
            app.MainTab = uitab(app.TabGroup);
            app.MainTab.Title = 'Main';

            % Create MicroDrivescanningPanel
            app.MicroDrivescanningPanel = uipanel(app.MainTab);
            app.MicroDrivescanningPanel.Title = 'Coarse (MicroDrive) scanning';
            app.MicroDrivescanningPanel.Position = [26 681 927 229];

            % Create enablekeyboardMicro
            app.enablekeyboardMicro = uicheckbox(app.MicroDrivescanningPanel);
            app.enablekeyboardMicro.Text = 'Enable keyboard control';
            app.enablekeyboardMicro.Position = [519 2 188 38];

            % Create StepsizemmEditFieldLabel
            app.StepsizemmEditFieldLabel = uilabel(app.MicroDrivescanningPanel);
            app.StepsizemmEditFieldLabel.HorizontalAlignment = 'right';
            app.StepsizemmEditFieldLabel.Position = [514 176 88 22];
            app.StepsizemmEditFieldLabel.Text = 'Step size [mm]:';

            % Create StepSizemm
            app.StepSizemm = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.StepSizemm.ValueChangedFcn = createCallbackFcn(app, @StepSizemmValueChanged, true);
            app.StepSizemm.HorizontalAlignment = 'center';
            app.StepSizemm.Position = [608 176 50 22];
            app.StepSizemm.Value = 0.1;

            % Create x1Button
            app.x1Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x1Button.ButtonPushedFcn = createCallbackFcn(app, @x1ButtonPushed, true);
            app.x1Button.BackgroundColor = [0.902 0.902 0.902];
            app.x1Button.Position = [683 143 70 23];
            app.x1Button.Text = '1 x 1';

            % Create x05Button
            app.x05Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x05Button.ButtonPushedFcn = createCallbackFcn(app, @x05ButtonPushed, true);
            app.x05Button.BackgroundColor = [0.902 0.902 0.902];
            app.x05Button.Position = [757 143 68 23];
            app.x05Button.Text = '0.5 x 0.5';

            % Create x01Button
            app.x01Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x01Button.ButtonPushedFcn = createCallbackFcn(app, @x01ButtonPushed, true);
            app.x01Button.BackgroundColor = [0.902 0.902 0.902];
            app.x01Button.Position = [758 112 68 23];
            app.x01Button.Text = '0.1 x 0.1';

            % Create x025Button
            app.x025Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x025Button.ButtonPushedFcn = createCallbackFcn(app, @x025ButtonPushed, true);
            app.x025Button.BackgroundColor = [0.902 0.902 0.902];
            app.x025Button.Position = [683 112 70 23];
            app.x025Button.Text = '0.25 x 0.25';

            % Create x005Button
            app.x005Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x005Button.ButtonPushedFcn = createCallbackFcn(app, @x005ButtonPushed, true);
            app.x005Button.BackgroundColor = [0.902 0.902 0.902];
            app.x005Button.Position = [682 79 71 23];
            app.x005Button.Text = '0.05 x 0.05';

            % Create x001Button
            app.x001Button = uibutton(app.MicroDrivescanningPanel, 'push');
            app.x001Button.ButtonPushedFcn = createCallbackFcn(app, @x001ButtonPushed, true);
            app.x001Button.BackgroundColor = [0.902 0.902 0.902];
            app.x001Button.Position = [757 79 68 23];
            app.x001Button.Text = '0.01 x 0.01';

            % Create ScanrangeshortcutsmmLabel
            app.ScanrangeshortcutsmmLabel = uilabel(app.MicroDrivescanningPanel);
            app.ScanrangeshortcutsmmLabel.HorizontalAlignment = 'center';
            app.ScanrangeshortcutsmmLabel.FontWeight = 'bold';
            app.ScanrangeshortcutsmmLabel.Position = [707 175 160 22];
            app.ScanrangeshortcutsmmLabel.Text = 'Scan range shortcuts [mm]';

            % Create CenterScanRange
            app.CenterScanRange = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CenterScanRange.ButtonPushedFcn = createCallbackFcn(app, @CenterScanRangeButtonPushed, true);
            app.CenterScanRange.WordWrap = 'on';
            app.CenterScanRange.BackgroundColor = [0.8 0.8 0.8];
            app.CenterScanRange.FontSize = 13;
            app.CenterScanRange.Tooltip = {'Shifts the center of current scan parameters to either the current coordinates or the above new specified scan center coordinates. E.g. if the X scan range is 0 to 1 mm and the current X is 4 mm, this shifts the the scan range to 3.5 to 4.5 mm.'};
            app.CenterScanRange.Position = [703 26 80 40];
            app.CenterScanRange.Text = 'Center scan range';

            % Create ScanCenterPosZ
            app.ScanCenterPosZ = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.ScanCenterPosZ.Limits = [-50 50];
            app.ScanCenterPosZ.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosZ.HorizontalAlignment = 'center';
            app.ScanCenterPosZ.Position = [832 83 55 23];

            % Create ScanCenterPosY
            app.ScanCenterPosY = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.ScanCenterPosY.Limits = [-50 50];
            app.ScanCenterPosY.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosY.HorizontalAlignment = 'center';
            app.ScanCenterPosY.Position = [832 111 55 22];

            % Create ScanCenterPosX
            app.ScanCenterPosX = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.ScanCenterPosX.Limits = [-50 50];
            app.ScanCenterPosX.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosX.HorizontalAlignment = 'center';
            app.ScanCenterPosX.Position = [832 138 55 22];

            % Create UseNewScanCenter
            app.UseNewScanCenter = uicheckbox(app.MicroDrivescanningPanel);
            app.UseNewScanCenter.Text = 'Use new scan center ↑ ';
            app.UseNewScanCenter.WordWrap = 'on';
            app.UseNewScanCenter.Position = [795 26 89 61];

            % Create MicroDrivePosmmLabel
            app.MicroDrivePosmmLabel = uilabel(app.MicroDrivescanningPanel);
            app.MicroDrivePosmmLabel.HorizontalAlignment = 'center';
            app.MicroDrivePosmmLabel.WordWrap = 'on';
            app.MicroDrivePosmmLabel.FontWeight = 'bold';
            app.MicroDrivePosmmLabel.Position = [412 139 65 31];
            app.MicroDrivePosmmLabel.Text = 'MicroDrive Pos (mm)';

            % Create FixLabel_2
            app.FixLabel_2 = uilabel(app.MicroDrivescanningPanel);
            app.FixLabel_2.HorizontalAlignment = 'center';
            app.FixLabel_2.FontWeight = 'bold';
            app.FixLabel_2.Position = [354 140 75 22];
            app.FixLabel_2.Text = 'Fix';

            % Create stepsLabel_2
            app.stepsLabel_2 = uilabel(app.MicroDrivescanningPanel);
            app.stepsLabel_2.HorizontalAlignment = 'center';
            app.stepsLabel_2.FontWeight = 'bold';
            app.stepsLabel_2.Position = [265 140 61 22];
            app.stepsLabel_2.Text = '# steps';

            % Create FrommmLabel
            app.FrommmLabel = uilabel(app.MicroDrivescanningPanel);
            app.FrommmLabel.HorizontalAlignment = 'center';
            app.FrommmLabel.FontWeight = 'bold';
            app.FrommmLabel.Position = [102 140 68 22];
            app.FrommmLabel.Text = 'From [mm]';

            % Create TommLabel
            app.TommLabel = uilabel(app.MicroDrivescanningPanel);
            app.TommLabel.HorizontalAlignment = 'center';
            app.TommLabel.FontWeight = 'bold';
            app.TommLabel.Position = [165 140 61 22];
            app.TommLabel.Text = 'To [mm]';

            % Create XLabel_3
            app.XLabel_3 = uilabel(app.MicroDrivescanningPanel);
            app.XLabel_3.FontWeight = 'bold';
            app.XLabel_3.Position = [91 113 25 22];
            app.XLabel_3.Text = 'X';

            % Create YLabel_3
            app.YLabel_3 = uilabel(app.MicroDrivescanningPanel);
            app.YLabel_3.FontWeight = 'bold';
            app.YLabel_3.Position = [91 86 25 22];
            app.YLabel_3.Text = 'Y';

            % Create ZLabel_3
            app.ZLabel_3 = uilabel(app.MicroDrivescanningPanel);
            app.ZLabel_3.FontWeight = 'bold';
            app.ZLabel_3.Position = [92 59 25 22];
            app.ZLabel_3.Text = 'Z';

            % Create MicroZPos
            app.MicroZPos = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.MicroZPos.Limits = [-50 50];
            app.MicroZPos.ValueDisplayFormat = '%.4f';
            app.MicroZPos.ValueChangedFcn = createCallbackFcn(app, @MicroZPosValueChanged, true);
            app.MicroZPos.HorizontalAlignment = 'center';
            app.MicroZPos.Position = [415 58 57 23];

            % Create MicroYPos
            app.MicroYPos = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.MicroYPos.Limits = [-50 50];
            app.MicroYPos.ValueDisplayFormat = '%.4f';
            app.MicroYPos.ValueChangedFcn = createCallbackFcn(app, @MicroYPosValueChanged, true);
            app.MicroYPos.HorizontalAlignment = 'center';
            app.MicroYPos.Position = [415 86 57 22];

            % Create MicroXPos
            app.MicroXPos = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.MicroXPos.Limits = [-50 50];
            app.MicroXPos.ValueDisplayFormat = '%.4f';
            app.MicroXPos.ValueChangedFcn = createCallbackFcn(app, @MicroXPosValueChanged, true);
            app.MicroXPos.HorizontalAlignment = 'center';
            app.MicroXPos.Position = [415 113 57 22];

            % Create Coarse_Fix_Z
            app.Coarse_Fix_Z = uicheckbox(app.MicroDrivescanningPanel);
            app.Coarse_Fix_Z.Text = '';
            app.Coarse_Fix_Z.Position = [385 60 16 22];
            app.Coarse_Fix_Z.Value = true;

            % Create Coarse_Fix_Y
            app.Coarse_Fix_Y = uicheckbox(app.MicroDrivescanningPanel);
            app.Coarse_Fix_Y.Text = '';
            app.Coarse_Fix_Y.Position = [385 88 15 21];

            % Create Coarse_Fix_X
            app.Coarse_Fix_X = uicheckbox(app.MicroDrivescanningPanel);
            app.Coarse_Fix_X.Text = '';
            app.Coarse_Fix_X.Position = [385 115 15 21];

            % Create FlipZButton
            app.FlipZButton = uibutton(app.MicroDrivescanningPanel, 'push');
            app.FlipZButton.ButtonPushedFcn = createCallbackFcn(app, @FlipZButtonPushed, true);
            app.FlipZButton.BackgroundColor = [0.8 0.8 0.8];
            app.FlipZButton.Position = [227 60 42 20];
            app.FlipZButton.Text = 'Flip Z';

            % Create FlipYButton
            app.FlipYButton = uibutton(app.MicroDrivescanningPanel, 'push');
            app.FlipYButton.ButtonPushedFcn = createCallbackFcn(app, @FlipYButtonPushed, true);
            app.FlipYButton.BackgroundColor = [0.8 0.8 0.8];
            app.FlipYButton.Position = [227 87 42 20];
            app.FlipYButton.Text = 'Flip Y';

            % Create FlipXButton
            app.FlipXButton = uibutton(app.MicroDrivescanningPanel, 'push');
            app.FlipXButton.ButtonPushedFcn = createCallbackFcn(app, @FlipXButtonPushed, true);
            app.FlipXButton.BackgroundColor = [0.8 0.8 0.8];
            app.FlipXButton.Position = [227 114 42 20];
            app.FlipXButton.Text = 'Flip X';

            % Create CoarseZscan_numsteps
            app.CoarseZscan_numsteps = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseZscan_numsteps.Limits = [0 Inf];
            app.CoarseZscan_numsteps.HorizontalAlignment = 'center';
            app.CoarseZscan_numsteps.Position = [281 59 34 22];
            app.CoarseZscan_numsteps.Value = 5;

            % Create CoarseYscan_numsteps
            app.CoarseYscan_numsteps = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseYscan_numsteps.Limits = [0 Inf];
            app.CoarseYscan_numsteps.HorizontalAlignment = 'center';
            app.CoarseYscan_numsteps.Position = [281 86 34 22];
            app.CoarseYscan_numsteps.Value = 5;

            % Create CoarseXscan_numsteps
            app.CoarseXscan_numsteps = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseXscan_numsteps.Limits = [0 Inf];
            app.CoarseXscan_numsteps.HorizontalAlignment = 'center';
            app.CoarseXscan_numsteps.Position = [281 113 34 22];
            app.CoarseXscan_numsteps.Value = 5;

            % Create CoarseZscan_to
            app.CoarseZscan_to = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseZscan_to.Limits = [-20 20];
            app.CoarseZscan_to.HorizontalAlignment = 'center';
            app.CoarseZscan_to.Position = [171 59 50 22];
            app.CoarseZscan_to.Value = 1;

            % Create CoarseYscan_to
            app.CoarseYscan_to = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseYscan_to.Limits = [-20 20];
            app.CoarseYscan_to.HorizontalAlignment = 'center';
            app.CoarseYscan_to.Position = [171 86 50 22];
            app.CoarseYscan_to.Value = 1;

            % Create CoarseXscan_to
            app.CoarseXscan_to = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseXscan_to.Limits = [-20 20];
            app.CoarseXscan_to.HorizontalAlignment = 'center';
            app.CoarseXscan_to.Position = [171 113 50 22];
            app.CoarseXscan_to.Value = 1;

            % Create CoarseZscan_from
            app.CoarseZscan_from = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseZscan_from.Limits = [-20 20];
            app.CoarseZscan_from.HorizontalAlignment = 'center';
            app.CoarseZscan_from.Position = [112 59 50 22];

            % Create CoarseYscan_from
            app.CoarseYscan_from = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseYscan_from.Limits = [-20 20];
            app.CoarseYscan_from.HorizontalAlignment = 'center';
            app.CoarseYscan_from.Position = [112 86 50 22];

            % Create CoarseXscan_from
            app.CoarseXscan_from = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.CoarseXscan_from.Limits = [-20 20];
            app.CoarseXscan_from.HorizontalAlignment = 'center';
            app.CoarseXscan_from.Position = [112 113 50 22];

            % Create automoveZ
            app.automoveZ = uicheckbox(app.MicroDrivescanningPanel);
            app.automoveZ.Text = 'Auto move to optimum Z';
            app.automoveZ.Position = [15 26 153 38];

            % Create enableincrmovt
            app.enableincrmovt = uicheckbox(app.MicroDrivescanningPanel);
            app.enableincrmovt.Text = 'Enable incremented movement';
            app.enableincrmovt.Position = [15 -1 188 38];
            app.enableincrmovt.Value = true;

            % Create TrackZMicro
            app.TrackZMicro = uibutton(app.MicroDrivescanningPanel, 'push');
            app.TrackZMicro.ButtonPushedFcn = createCallbackFcn(app, @TrackZMicroPushed, true);
            app.TrackZMicro.BackgroundColor = [0.9294 0.6941 0.1255];
            app.TrackZMicro.FontSize = 13;
            app.TrackZMicro.FontWeight = 'bold';
            app.TrackZMicro.Position = [10 61 73 29];
            app.TrackZMicro.Text = 'Track Z';

            % Create ScanMicro
            app.ScanMicro = uibutton(app.MicroDrivescanningPanel, 'push');
            app.ScanMicro.ButtonPushedFcn = createCallbackFcn(app, @ScanMicroButtonPushed, true);
            app.ScanMicro.BackgroundColor = [0.4667 0.6745 0.1882];
            app.ScanMicro.FontSize = 13;
            app.ScanMicro.FontWeight = 'bold';
            app.ScanMicro.Position = [10 97 73 40];
            app.ScanMicro.Text = {'Scan'; 'Micro'};

            % Create ResetEncoders
            app.ResetEncoders = uibutton(app.MicroDrivescanningPanel, 'push');
            app.ResetEncoders.ButtonPushedFcn = createCallbackFcn(app, @ResetEncodersPushed, true);
            app.ResetEncoders.BackgroundColor = [0 1 1];
            app.ResetEncoders.FontWeight = 'bold';
            app.ResetEncoders.Position = [207 173 100 25];
            app.ResetEncoders.Text = 'Zero encoders';

            % Create MovetooriginButton
            app.MovetooriginButton = uibutton(app.MicroDrivescanningPanel, 'push');
            app.MovetooriginButton.ButtonPushedFcn = createCallbackFcn(app, @MovetooriginButtonPushed, true);
            app.MovetooriginButton.BackgroundColor = [0.8 0.8 0.8];
            app.MovetooriginButton.Position = [96 173 100 25];
            app.MovetooriginButton.Text = 'Move to origin';

            % Create UnloadButton_microdrive
            app.UnloadButton_microdrive = uibutton(app.MicroDrivescanningPanel, 'push');
            app.UnloadButton_microdrive.ButtonPushedFcn = createCallbackFcn(app, @UnloadButton_microdrivePushed, true);
            app.UnloadButton_microdrive.BackgroundColor = [0.8 0.8 0.8];
            app.UnloadButton_microdrive.Position = [8 145 73 25];
            app.UnloadButton_microdrive.Text = 'Unload';

            % Create LoadButton_microdrive
            app.LoadButton_microdrive = uibutton(app.MicroDrivescanningPanel, 'push');
            app.LoadButton_microdrive.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_microdrivePushed, true);
            app.LoadButton_microdrive.BackgroundColor = [0.8 0.8 0.8];
            app.LoadButton_microdrive.Position = [7 178 73 25];
            app.LoadButton_microdrive.Text = 'Load';

            % Create CalcIncr
            app.CalcIncr = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CalcIncr.ButtonPushedFcn = createCallbackFcn(app, @CalcIncrButtonPushed, true);
            app.CalcIncr.WordWrap = 'on';
            app.CalcIncr.BackgroundColor = [0.8 0.8 0.8];
            app.CalcIncr.FontSize = 13;
            app.CalcIncr.Tooltip = {''};
            app.CalcIncr.Position = [387 9 80 40];
            app.CalcIncr.Text = 'Calc incr from steps';

            % Create GenSteps
            app.GenSteps = uibutton(app.MicroDrivescanningPanel, 'push');
            app.GenSteps.ButtonPushedFcn = createCallbackFcn(app, @GenStepsButtonPushed, true);
            app.GenSteps.WordWrap = 'on';
            app.GenSteps.BackgroundColor = [0.8 0.8 0.8];
            app.GenSteps.FontSize = 13;
            app.GenSteps.Tooltip = {''};
            app.GenSteps.Position = [301 9 80 40];
            app.GenSteps.Text = 'Calc steps from incr';

            % Create IncrmmLabel
            app.IncrmmLabel = uilabel(app.MicroDrivescanningPanel);
            app.IncrmmLabel.HorizontalAlignment = 'center';
            app.IncrmmLabel.FontWeight = 'bold';
            app.IncrmmLabel.Position = [318 140 61 22];
            app.IncrmmLabel.Text = 'Incr (mm)';

            % Create IncrZ
            app.IncrZ = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.IncrZ.Limits = [0 Inf];
            app.IncrZ.HorizontalAlignment = 'center';
            app.IncrZ.Position = [329 59 45 22];
            app.IncrZ.Value = 0.1;

            % Create IncrY
            app.IncrY = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.IncrY.Limits = [0 Inf];
            app.IncrY.HorizontalAlignment = 'center';
            app.IncrY.Position = [329 86 45 22];
            app.IncrY.Value = 0.1;

            % Create IncrX
            app.IncrX = uieditfield(app.MicroDrivescanningPanel, 'numeric');
            app.IncrX.Limits = [0 Inf];
            app.IncrX.HorizontalAlignment = 'center';
            app.IncrX.Position = [329 113 45 22];
            app.IncrX.Value = 0.1;

            % Create CalculatestepsorincrementLabel
            app.CalculatestepsorincrementLabel = uilabel(app.MicroDrivescanningPanel);
            app.CalculatestepsorincrementLabel.HorizontalAlignment = 'right';
            app.CalculatestepsorincrementLabel.WordWrap = 'on';
            app.CalculatestepsorincrementLabel.Position = [208 13 85 34];
            app.CalculatestepsorincrementLabel.Text = 'Calculate steps or increment';

            % Create WLabel
            app.WLabel = uilabel(app.MicroDrivescanningPanel);
            app.WLabel.HorizontalAlignment = 'center';
            app.WLabel.Position = [552 150 25 22];
            app.WLabel.Text = 'W';

            % Create ALabel
            app.ALabel = uilabel(app.MicroDrivescanningPanel);
            app.ALabel.HorizontalAlignment = 'center';
            app.ALabel.Position = [514 121 25 22];
            app.ALabel.Text = 'A';

            % Create DLabel
            app.DLabel = uilabel(app.MicroDrivescanningPanel);
            app.DLabel.HorizontalAlignment = 'center';
            app.DLabel.Position = [592 121 25 22];
            app.DLabel.Text = 'D';

            % Create SLabel
            app.SLabel = uilabel(app.MicroDrivescanningPanel);
            app.SLabel.HorizontalAlignment = 'center';
            app.SLabel.Position = [552 34 25 22];
            app.SLabel.Text = 'S';

            % Create GLabel
            app.GLabel = uilabel(app.MicroDrivescanningPanel);
            app.GLabel.HorizontalAlignment = 'center';
            app.GLabel.Position = [634 33 25 22];
            app.GLabel.Text = 'G';

            % Create TLabel
            app.TLabel = uilabel(app.MicroDrivescanningPanel);
            app.TLabel.HorizontalAlignment = 'center';
            app.TLabel.Position = [634 150 25 22];
            app.TLabel.Text = 'T';

            % Create CoarseXleft
            app.CoarseXleft = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseXleft.ButtonPushedFcn = createCallbackFcn(app, @CoarseXleftButtonPushed, true);
            app.CoarseXleft.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseXleft.FontSize = 15;
            app.CoarseXleft.FontWeight = 'bold';
            app.CoarseXleft.Position = [510 85 34 35];
            app.CoarseXleft.Text = '←';

            % Create CoarseXright
            app.CoarseXright = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseXright.ButtonPushedFcn = createCallbackFcn(app, @CoarseXrightButtonPushed, true);
            app.CoarseXright.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseXright.FontSize = 15;
            app.CoarseXright.FontWeight = 'bold';
            app.CoarseXright.Position = [588 86 34 35];
            app.CoarseXright.Text = '→';

            % Create CoarseYup
            app.CoarseYup = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseYup.ButtonPushedFcn = createCallbackFcn(app, @CoarseYupButtonPushed, true);
            app.CoarseYup.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseYup.FontSize = 15;
            app.CoarseYup.FontWeight = 'bold';
            app.CoarseYup.Position = [548 117 34 35];
            app.CoarseYup.Text = '↑';

            % Create CoarseYdown
            app.CoarseYdown = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseYdown.ButtonPushedFcn = createCallbackFcn(app, @CoarseYdownButtonPushed, true);
            app.CoarseYdown.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseYdown.FontSize = 15;
            app.CoarseYdown.FontWeight = 'bold';
            app.CoarseYdown.Position = [548 57 34 35];
            app.CoarseYdown.Text = '↓';

            % Create CoarseZup
            app.CoarseZup = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseZup.ButtonPushedFcn = createCallbackFcn(app, @CoarseZupButtonPushed, true);
            app.CoarseZup.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseZup.FontSize = 15;
            app.CoarseZup.FontWeight = 'bold';
            app.CoarseZup.Position = [630 117 34 35];
            app.CoarseZup.Text = '↑';

            % Create CoarseZdown
            app.CoarseZdown = uibutton(app.MicroDrivescanningPanel, 'push');
            app.CoarseZdown.ButtonPushedFcn = createCallbackFcn(app, @CoarseZdownButtonPushed, true);
            app.CoarseZdown.BackgroundColor = [0.902 0.902 0.902];
            app.CoarseZdown.FontSize = 15;
            app.CoarseZdown.FontWeight = 'bold';
            app.CoarseZdown.Position = [630 57 34 35];
            app.CoarseZdown.Text = '↓';

            % Create ReadMicroPos
            app.ReadMicroPos = uibutton(app.MicroDrivescanningPanel, 'push');
            app.ReadMicroPos.ButtonPushedFcn = createCallbackFcn(app, @ReadMicroPosButtonPushed, true);
            app.ReadMicroPos.BackgroundColor = [0.302 0.7451 0.9333];
            app.ReadMicroPos.FontSize = 13;
            app.ReadMicroPos.FontWeight = 'bold';
            app.ReadMicroPos.Position = [322 173 111 25];
            app.ReadMicroPos.Text = 'Read stage pos';

            % Create NanoDrivescanningPanel
            app.NanoDrivescanningPanel = uipanel(app.MainTab);
            app.NanoDrivescanningPanel.Title = 'NanoDrive scanning';
            app.NanoDrivescanningPanel.Position = [23 78 501 413];

            % Create ScanNanoButton
            app.ScanNanoButton = uibutton(app.NanoDrivescanningPanel, 'push');
            app.ScanNanoButton.ButtonPushedFcn = createCallbackFcn(app, @ScanNanoButtonPushed, true);
            app.ScanNanoButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.ScanNanoButton.FontSize = 13;
            app.ScanNanoButton.FontWeight = 'bold';
            app.ScanNanoButton.Position = [321 196 73 40];
            app.ScanNanoButton.Text = {'Scan'; 'Nano'};

            % Create FixLabel
            app.FixLabel = uilabel(app.NanoDrivescanningPanel);
            app.FixLabel.HorizontalAlignment = 'center';
            app.FixLabel.FontWeight = 'bold';
            app.FixLabel.Position = [372 332 75 22];
            app.FixLabel.Text = 'Fix';

            % Create nanoXscan_numsteps
            app.nanoXscan_numsteps = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoXscan_numsteps.Limits = [0 Inf];
            app.nanoXscan_numsteps.HorizontalAlignment = 'center';
            app.nanoXscan_numsteps.Position = [284 305 39 22];
            app.nanoXscan_numsteps.Value = 10;

            % Create nanoXscan_to
            app.nanoXscan_to = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoXscan_to.Limits = [-100 100];
            app.nanoXscan_to.HorizontalAlignment = 'center';
            app.nanoXscan_to.Position = [180 305 45 22];
            app.nanoXscan_to.Value = 100;

            % Create nanoXscan_from
            app.nanoXscan_from = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoXscan_from.Limits = [-100 100];
            app.nanoXscan_from.HorizontalAlignment = 'center';
            app.nanoXscan_from.Position = [126 305 45 22];
            app.nanoXscan_from.Value = -100;

            % Create nanoYscan_numsteps
            app.nanoYscan_numsteps = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoYscan_numsteps.Limits = [0 Inf];
            app.nanoYscan_numsteps.HorizontalAlignment = 'center';
            app.nanoYscan_numsteps.Position = [284 277 39 22];
            app.nanoYscan_numsteps.Value = 10;

            % Create nanoYscan_to
            app.nanoYscan_to = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoYscan_to.Limits = [-100 100];
            app.nanoYscan_to.HorizontalAlignment = 'center';
            app.nanoYscan_to.Position = [180 277 45 22];
            app.nanoYscan_to.Value = 100;

            % Create nanoYscan_from
            app.nanoYscan_from = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoYscan_from.Limits = [-100 100];
            app.nanoYscan_from.HorizontalAlignment = 'center';
            app.nanoYscan_from.Position = [126 277 45 22];
            app.nanoYscan_from.Value = -100;

            % Create nanoZscan_numsteps
            app.nanoZscan_numsteps = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoZscan_numsteps.Limits = [0 Inf];
            app.nanoZscan_numsteps.HorizontalAlignment = 'center';
            app.nanoZscan_numsteps.Position = [284 249 39 22];
            app.nanoZscan_numsteps.Value = 10;

            % Create nanoZscan_to
            app.nanoZscan_to = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoZscan_to.Limits = [-100 100];
            app.nanoZscan_to.HorizontalAlignment = 'center';
            app.nanoZscan_to.Position = [180 249 45 22];
            app.nanoZscan_to.Value = 100;

            % Create nanoZscan_from
            app.nanoZscan_from = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.nanoZscan_from.Limits = [-100 100];
            app.nanoZscan_from.HorizontalAlignment = 'center';
            app.nanoZscan_from.Position = [126 249 45 22];
            app.nanoZscan_from.Value = -100;

            % Create stepsLabel
            app.stepsLabel = uilabel(app.NanoDrivescanningPanel);
            app.stepsLabel.HorizontalAlignment = 'center';
            app.stepsLabel.FontWeight = 'bold';
            app.stepsLabel.Position = [272 332 61 22];
            app.stepsLabel.Text = '# steps';

            % Create FromumLabel
            app.FromumLabel = uilabel(app.NanoDrivescanningPanel);
            app.FromumLabel.HorizontalAlignment = 'center';
            app.FromumLabel.FontWeight = 'bold';
            app.FromumLabel.Position = [114 332 65 22];
            app.FromumLabel.Text = 'From [um]';

            % Create ToumLabel
            app.ToumLabel = uilabel(app.NanoDrivescanningPanel);
            app.ToumLabel.HorizontalAlignment = 'center';
            app.ToumLabel.FontWeight = 'bold';
            app.ToumLabel.Position = [174 332 61 22];
            app.ToumLabel.Text = 'To [um]';

            % Create Fix_zNano
            app.Fix_zNano = uicheckbox(app.NanoDrivescanningPanel);
            app.Fix_zNano.Text = '';
            app.Fix_zNano.Position = [401 250 15 21];

            % Create Fix_yNano
            app.Fix_yNano = uicheckbox(app.NanoDrivescanningPanel);
            app.Fix_yNano.Text = '';
            app.Fix_yNano.Position = [401 278 15 21];

            % Create Fix_xNano
            app.Fix_xNano = uicheckbox(app.NanoDrivescanningPanel);
            app.Fix_xNano.Text = '';
            app.Fix_xNano.Position = [401 306 15 21];

            % Create x200ButtonNano
            app.x200ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x200ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x200ButtonNanoPushed, true);
            app.x200ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x200ButtonNano.Position = [13 305 81 22];
            app.x200ButtonNano.Text = '200 x 200';

            % Create x100ButtonNano
            app.x100ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x100ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x100ButtonNanoPushed, true);
            app.x100ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x100ButtonNano.Position = [13 277 81 22];
            app.x100ButtonNano.Text = '100 x 100';

            % Create x50ButtonNano
            app.x50ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x50ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x50ButtonNanoPushed, true);
            app.x50ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x50ButtonNano.Position = [13 249 81 22];
            app.x50ButtonNano.Text = '50 x 50';

            % Create x25ButtonNano
            app.x25ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x25ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x25ButtonNanoPushed, true);
            app.x25ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x25ButtonNano.Position = [13 220 81 23];
            app.x25ButtonNano.Text = '25 x 25';

            % Create x10ButtonNano
            app.x10ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x10ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x10ButtonNanoPushed, true);
            app.x10ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x10ButtonNano.Position = [13 191 81 23];
            app.x10ButtonNano.Text = '10 x 10';

            % Create x5ButtonNano
            app.x5ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x5ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x5ButtonNanoPushed, true);
            app.x5ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x5ButtonNano.Position = [13 163 81 22];
            app.x5ButtonNano.Text = '5 x 5';

            % Create x15ButtonNano
            app.x15ButtonNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.x15ButtonNano.ButtonPushedFcn = createCallbackFcn(app, @x15ButtonNanoPushed, true);
            app.x15ButtonNano.BackgroundColor = [0.902 0.902 0.902];
            app.x15ButtonNano.Position = [13 134 81 23];
            app.x15ButtonNano.Text = '0.75 x 0.75';

            % Create ScanrangeumLabel
            app.ScanrangeumLabel = uilabel(app.NanoDrivescanningPanel);
            app.ScanrangeumLabel.HorizontalAlignment = 'center';
            app.ScanrangeumLabel.FontWeight = 'bold';
            app.ScanrangeumLabel.Position = [6 332 100 22];
            app.ScanrangeumLabel.Text = 'Scan range [um]';

            % Create PosumLabel
            app.PosumLabel = uilabel(app.NanoDrivescanningPanel);
            app.PosumLabel.HorizontalAlignment = 'center';
            app.PosumLabel.FontWeight = 'bold';
            app.PosumLabel.Position = [432 332 56 22];
            app.PosumLabel.Text = 'Pos (um)';

            % Create LoadButton_nanodrive
            app.LoadButton_nanodrive = uibutton(app.NanoDrivescanningPanel, 'push');
            app.LoadButton_nanodrive.ButtonPushedFcn = createCallbackFcn(app, @LoadButton_nanodrivePushed, true);
            app.LoadButton_nanodrive.BackgroundColor = [0.8 0.8 0.8];
            app.LoadButton_nanodrive.Position = [9 360 100 25];
            app.LoadButton_nanodrive.Text = 'Load';

            % Create UnloadButton_nanodrive
            app.UnloadButton_nanodrive = uibutton(app.NanoDrivescanningPanel, 'push');
            app.UnloadButton_nanodrive.ButtonPushedFcn = createCallbackFcn(app, @UnloadButton_nanodrivePushed, true);
            app.UnloadButton_nanodrive.BackgroundColor = [0.8 0.8 0.8];
            app.UnloadButton_nanodrive.Position = [120 360 100 25];
            app.UnloadButton_nanodrive.Text = 'Unload';

            % Create XLabel
            app.XLabel = uilabel(app.NanoDrivescanningPanel);
            app.XLabel.FontWeight = 'bold';
            app.XLabel.Position = [105 305 25 22];
            app.XLabel.Text = 'X';

            % Create YLabel
            app.YLabel = uilabel(app.NanoDrivescanningPanel);
            app.YLabel.FontWeight = 'bold';
            app.YLabel.Position = [105 278 25 22];
            app.YLabel.Text = 'Y';

            % Create ZLabel
            app.ZLabel = uilabel(app.NanoDrivescanningPanel);
            app.ZLabel.FontWeight = 'bold';
            app.ZLabel.Position = [106 250 25 22];
            app.ZLabel.Text = 'Z';

            % Create TrackZNano
            app.TrackZNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.TrackZNano.ButtonPushedFcn = createCallbackFcn(app, @TrackZNanoButtonPushed, true);
            app.TrackZNano.BackgroundColor = [0.9294 0.6941 0.1255];
            app.TrackZNano.FontSize = 13;
            app.TrackZNano.FontWeight = 'bold';
            app.TrackZNano.Position = [403 197 73 40];
            app.TrackZNano.Text = 'Track Z';

            % Create NanoPosZ
            app.NanoPosZ = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.NanoPosZ.Limits = [-100 100];
            app.NanoPosZ.ValueDisplayFormat = '%11.5g';
            app.NanoPosZ.ValueChangedFcn = createCallbackFcn(app, @NanoPosZValueChanged, true);
            app.NanoPosZ.HorizontalAlignment = 'center';
            app.NanoPosZ.Position = [426 249 63 22];

            % Create NanoPosY
            app.NanoPosY = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.NanoPosY.Limits = [-100 100];
            app.NanoPosY.ValueDisplayFormat = '%11.5g';
            app.NanoPosY.ValueChangedFcn = createCallbackFcn(app, @NanoPosYValueChanged, true);
            app.NanoPosY.HorizontalAlignment = 'center';
            app.NanoPosY.Position = [426 277 63 22];

            % Create NanoPosX
            app.NanoPosX = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.NanoPosX.Limits = [-100 100];
            app.NanoPosX.ValueDisplayFormat = '%11.5g';
            app.NanoPosX.ValueChangedFcn = createCallbackFcn(app, @NanoPosXValueChanged, true);
            app.NanoPosX.HorizontalAlignment = 'center';
            app.NanoPosX.Position = [426 305 63 22];

            % Create StepsLabel
            app.StepsLabel = uilabel(app.NanoDrivescanningPanel);
            app.StepsLabel.HorizontalAlignment = 'center';
            app.StepsLabel.FontWeight = 'bold';
            app.StepsLabel.Position = [100 213 51 22];
            app.StepsLabel.Text = 'Steps';

            % Create Steps30
            app.Steps30 = uibutton(app.NanoDrivescanningPanel, 'push');
            app.Steps30.ButtonPushedFcn = createCallbackFcn(app, @Steps30ButtonPushed, true);
            app.Steps30.BackgroundColor = [0.902 0.902 0.902];
            app.Steps30.Position = [274 211 28 23];
            app.Steps30.Text = '31';

            % Create Steps20
            app.Steps20 = uibutton(app.NanoDrivescanningPanel, 'push');
            app.Steps20.ButtonPushedFcn = createCallbackFcn(app, @Steps20ButtonPushed, true);
            app.Steps20.BackgroundColor = [0.902 0.902 0.902];
            app.Steps20.Position = [243 211 28 23];
            app.Steps20.Text = '21';

            % Create Steps15
            app.Steps15 = uibutton(app.NanoDrivescanningPanel, 'push');
            app.Steps15.ButtonPushedFcn = createCallbackFcn(app, @Steps15ButtonPushed, true);
            app.Steps15.BackgroundColor = [0.902 0.902 0.902];
            app.Steps15.Position = [211 211 28 23];
            app.Steps15.Text = '16';

            % Create Steps10
            app.Steps10 = uibutton(app.NanoDrivescanningPanel, 'push');
            app.Steps10.ButtonPushedFcn = createCallbackFcn(app, @Steps10ButtonPushed, true);
            app.Steps10.BackgroundColor = [0.902 0.902 0.902];
            app.Steps10.Position = [180 211 27 23];
            app.Steps10.Text = '11';

            % Create Steps5
            app.Steps5 = uibutton(app.NanoDrivescanningPanel, 'push');
            app.Steps5.ButtonPushedFcn = createCallbackFcn(app, @Steps5ButtonPushed, true);
            app.Steps5.BackgroundColor = [0.902 0.902 0.902];
            app.Steps5.Position = [149 211 26 23];
            app.Steps5.Text = '6';

            % Create NanoZdown
            app.NanoZdown = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoZdown.ButtonPushedFcn = createCallbackFcn(app, @NanoZdownButtonPushed, true);
            app.NanoZdown.BackgroundColor = [0.902 0.902 0.902];
            app.NanoZdown.FontSize = 15;
            app.NanoZdown.FontWeight = 'bold';
            app.NanoZdown.Position = [334 19 34 35];
            app.NanoZdown.Text = '↓';

            % Create NanoZup
            app.NanoZup = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoZup.ButtonPushedFcn = createCallbackFcn(app, @NanoZupButtonPushed, true);
            app.NanoZup.BackgroundColor = [0.902 0.902 0.902];
            app.NanoZup.FontSize = 15;
            app.NanoZup.FontWeight = 'bold';
            app.NanoZup.Position = [335 76 34 35];
            app.NanoZup.Text = '↑';

            % Create NanoYdown
            app.NanoYdown = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoYdown.ButtonPushedFcn = createCallbackFcn(app, @NanoYdownButtonPushed, true);
            app.NanoYdown.BackgroundColor = [0.902 0.902 0.902];
            app.NanoYdown.FontSize = 15;
            app.NanoYdown.FontWeight = 'bold';
            app.NanoYdown.Position = [246 18 34 35];
            app.NanoYdown.Text = '↓';

            % Create NanoYup
            app.NanoYup = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoYup.ButtonPushedFcn = createCallbackFcn(app, @NanoYupButtonPushed, true);
            app.NanoYup.BackgroundColor = [0.902 0.902 0.902];
            app.NanoYup.FontSize = 15;
            app.NanoYup.FontWeight = 'bold';
            app.NanoYup.Position = [246 72 34 35];
            app.NanoYup.Text = '↑';

            % Create NanoXright
            app.NanoXright = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoXright.ButtonPushedFcn = createCallbackFcn(app, @NanoXrightButtonPushed, true);
            app.NanoXright.BackgroundColor = [0.902 0.902 0.902];
            app.NanoXright.FontSize = 15;
            app.NanoXright.FontWeight = 'bold';
            app.NanoXright.Position = [287 45 34 35];
            app.NanoXright.Text = '→';

            % Create NanoXleft
            app.NanoXleft = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanoXleft.ButtonPushedFcn = createCallbackFcn(app, @NanoXleftButtonPushed, true);
            app.NanoXleft.BackgroundColor = [0.902 0.902 0.902];
            app.NanoXleft.FontSize = 15;
            app.NanoXleft.FontWeight = 'bold';
            app.NanoXleft.Position = [206 44 34 35];
            app.NanoXleft.Text = '←';

            % Create StepsizeumLabel
            app.StepsizeumLabel = uilabel(app.NanoDrivescanningPanel);
            app.StepsizeumLabel.HorizontalAlignment = 'right';
            app.StepsizeumLabel.Position = [392 41 84 22];
            app.StepsizeumLabel.Text = 'Step size [um]:';

            % Create StepSizeUm
            app.StepSizeUm = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.StepSizeUm.HorizontalAlignment = 'center';
            app.StepSizeUm.Position = [411 15 50 22];
            app.StepSizeUm.Value = 0.1;

            % Create FlipZButton_Nano
            app.FlipZButton_Nano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.FlipZButton_Nano.ButtonPushedFcn = createCallbackFcn(app, @FlipZButton_NanoPushed, true);
            app.FlipZButton_Nano.BackgroundColor = [0.8 0.8 0.8];
            app.FlipZButton_Nano.Position = [232 250 42 20];
            app.FlipZButton_Nano.Text = 'Flip Z';

            % Create FlipYButton_Nano
            app.FlipYButton_Nano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.FlipYButton_Nano.ButtonPushedFcn = createCallbackFcn(app, @FlipYButton_NanoPushed, true);
            app.FlipYButton_Nano.BackgroundColor = [0.8 0.8 0.8];
            app.FlipYButton_Nano.Position = [232 278 42 20];
            app.FlipYButton_Nano.Text = 'Flip Y';

            % Create FlipXButton_Nano
            app.FlipXButton_Nano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.FlipXButton_Nano.ButtonPushedFcn = createCallbackFcn(app, @FlipXButton_NanoPushed, true);
            app.FlipXButton_Nano.BackgroundColor = [0.8 0.8 0.8];
            app.FlipXButton_Nano.Position = [232 306 42 20];
            app.FlipXButton_Nano.Text = 'Flip X';

            % Create automoveZ_Nano
            app.automoveZ_Nano = uicheckbox(app.NanoDrivescanningPanel);
            app.automoveZ_Nano.Text = 'Auto move to optimum Z';
            app.automoveZ_Nano.WordWrap = 'on';
            app.automoveZ_Nano.Position = [396 146 96 38];

            % Create ReadNanoPos
            app.ReadNanoPos = uibutton(app.NanoDrivescanningPanel, 'push');
            app.ReadNanoPos.ButtonPushedFcn = createCallbackFcn(app, @ReadNanoPosButtonPushed, true);
            app.ReadNanoPos.BackgroundColor = [0.302 0.7451 0.9333];
            app.ReadNanoPos.FontSize = 13;
            app.ReadNanoPos.FontWeight = 'bold';
            app.ReadNanoPos.Position = [242 361 158 25];
            app.ReadNanoPos.Text = 'Update stage positions';

            % Create readsLabel
            app.readsLabel = uilabel(app.NanoDrivescanningPanel);
            app.readsLabel.HorizontalAlignment = 'right';
            app.readsLabel.Position = [403 362 45 22];
            app.readsLabel.Text = '# reads';

            % Create NanoNreads
            app.NanoNreads = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.NanoNreads.HorizontalAlignment = 'center';
            app.NanoNreads.Position = [454 362 36 22];
            app.NanoNreads.Value = 10;

            % Create NanodrivetooriginButton
            app.NanodrivetooriginButton = uibutton(app.NanoDrivescanningPanel, 'push');
            app.NanodrivetooriginButton.ButtonPushedFcn = createCallbackFcn(app, @NanodrivetooriginButtonPushed, true);
            app.NanodrivetooriginButton.BackgroundColor = [0.8 0.8 0.8];
            app.NanodrivetooriginButton.FontWeight = 'bold';
            app.NanodrivetooriginButton.Position = [394 75 81 40];
            app.NanodrivetooriginButton.Text = {'Nanodrive'; 'to origin'};

            % Create CenterScanRangeNano
            app.CenterScanRangeNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.CenterScanRangeNano.ButtonPushedFcn = createCallbackFcn(app, @CenterScanRangeNanoButtonPushed, true);
            app.CenterScanRangeNano.WordWrap = 'on';
            app.CenterScanRangeNano.BackgroundColor = [0.8 0.8 0.8];
            app.CenterScanRangeNano.FontSize = 13;
            app.CenterScanRangeNano.FontWeight = 'bold';
            app.CenterScanRangeNano.Tooltip = {'Shifts the center of current scan parameters to either the current coordinates or the above new specified scan center coordinates. E.g. if the X scan range is 0 to 1 mm and the current X is 4 mm, this shifts the the scan range to 3.5 to 4.5 mm.'};
            app.CenterScanRangeNano.Position = [16 17 80 40];
            app.CenterScanRangeNano.Text = 'Center scan range';

            % Create ScanCenterPosZNano
            app.ScanCenterPosZNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.ScanCenterPosZNano.Limits = [-100 100];
            app.ScanCenterPosZNano.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosZNano.HorizontalAlignment = 'center';
            app.ScanCenterPosZNano.Position = [106 21 62 23];

            % Create ScanCenterPosYNano
            app.ScanCenterPosYNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.ScanCenterPosYNano.Limits = [-100 100];
            app.ScanCenterPosYNano.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosYNano.HorizontalAlignment = 'center';
            app.ScanCenterPosYNano.Position = [106 49 62 22];

            % Create ScanCenterPosXNano
            app.ScanCenterPosXNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.ScanCenterPosXNano.Limits = [-100 100];
            app.ScanCenterPosXNano.ValueDisplayFormat = '%.4f';
            app.ScanCenterPosXNano.HorizontalAlignment = 'center';
            app.ScanCenterPosXNano.Position = [106 76 62 22];

            % Create UseNewScanCenterNano
            app.UseNewScanCenterNano = uicheckbox(app.NanoDrivescanningPanel);
            app.UseNewScanCenterNano.Text = 'Use new scan center →';
            app.UseNewScanCenterNano.WordWrap = 'on';
            app.UseNewScanCenterNano.Position = [9 52 99 61];

            % Create CalcIncrNano
            app.CalcIncrNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.CalcIncrNano.ButtonPushedFcn = createCallbackFcn(app, @CalcIncrNanoButtonPushed, true);
            app.CalcIncrNano.WordWrap = 'on';
            app.CalcIncrNano.BackgroundColor = [0.8 0.8 0.8];
            app.CalcIncrNano.FontSize = 13;
            app.CalcIncrNano.Tooltip = {''};
            app.CalcIncrNano.Position = [220 125 80 40];
            app.CalcIncrNano.Text = 'Calc incr from steps';

            % Create GenStepsNano
            app.GenStepsNano = uibutton(app.NanoDrivescanningPanel, 'push');
            app.GenStepsNano.ButtonPushedFcn = createCallbackFcn(app, @GenStepsNanoButtonPushed, true);
            app.GenStepsNano.WordWrap = 'on';
            app.GenStepsNano.BackgroundColor = [0.8 0.8 0.8];
            app.GenStepsNano.FontSize = 13;
            app.GenStepsNano.Tooltip = {''};
            app.GenStepsNano.Position = [131 125 80 40];
            app.GenStepsNano.Text = 'Calc steps from incr';

            % Create IncrZNano
            app.IncrZNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.IncrZNano.Limits = [0 Inf];
            app.IncrZNano.HorizontalAlignment = 'center';
            app.IncrZNano.Position = [341 249 45 22];
            app.IncrZNano.Value = 0.1;

            % Create IncrYNano
            app.IncrYNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.IncrYNano.Limits = [0 Inf];
            app.IncrYNano.HorizontalAlignment = 'center';
            app.IncrYNano.Position = [341 277 45 22];
            app.IncrYNano.Value = 0.1;

            % Create IncrXNano
            app.IncrXNano = uieditfield(app.NanoDrivescanningPanel, 'numeric');
            app.IncrXNano.Limits = [0 Inf];
            app.IncrXNano.HorizontalAlignment = 'center';
            app.IncrXNano.Position = [341 305 45 22];
            app.IncrXNano.Value = 0.1;

            % Create IncrumLabel
            app.IncrumLabel = uilabel(app.NanoDrivescanningPanel);
            app.IncrumLabel.HorizontalAlignment = 'center';
            app.IncrumLabel.FontWeight = 'bold';
            app.IncrumLabel.Position = [332 331 61 22];
            app.IncrumLabel.Text = 'Incr (um)';

            % Create CalculatestepsorincrementLabel_2
            app.CalculatestepsorincrementLabel_2 = uilabel(app.NanoDrivescanningPanel);
            app.CalculatestepsorincrementLabel_2.HorizontalAlignment = 'center';
            app.CalculatestepsorincrementLabel_2.Position = [136 172 157 22];
            app.CalculatestepsorincrementLabel_2.Text = 'Calculate steps or increment';

            % Create SavesettingsPanel
            app.SavesettingsPanel = uipanel(app.MainTab);
            app.SavesettingsPanel.Title = 'Save settings';
            app.SavesettingsPanel.Position = [967 678 317 146];

            % Create FilepathLabel
            app.FilepathLabel = uilabel(app.SavesettingsPanel);
            app.FilepathLabel.HorizontalAlignment = 'right';
            app.FilepathLabel.Position = [9 90 52 22];
            app.FilepathLabel.Text = 'File path';

            % Create Savefilepath
            app.Savefilepath = uitextarea(app.SavesettingsPanel);
            app.Savefilepath.Position = [79 80 212 36];
            app.Savefilepath.Value = {'G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Data'};

            % Create FilenameLabel
            app.FilenameLabel = uilabel(app.SavesettingsPanel);
            app.FilenameLabel.HorizontalAlignment = 'right';
            app.FilenameLabel.Position = [6 48 58 22];
            app.FilenameLabel.Text = 'File name';

            % Create FileName
            app.FileName = uieditfield(app.SavesettingsPanel, 'text');
            app.FileName.Position = [79 48 100 22];
            app.FileName.Value = 'TestScan';

            % Create FormatDropDownLabel
            app.FormatDropDownLabel = uilabel(app.SavesettingsPanel);
            app.FormatDropDownLabel.HorizontalAlignment = 'right';
            app.FormatDropDownLabel.Position = [24 11 44 22];
            app.FormatDropDownLabel.Text = 'Format';

            % Create FormatDropDown
            app.FormatDropDown = uidropdown(app.SavesettingsPanel);
            app.FormatDropDown.Items = {'MAT', 'TXT', 'PNG'};
            app.FormatDropDown.Position = [78 11 67 22];
            app.FormatDropDown.Value = 'MAT';

            % Create SaveDataButton
            app.SaveDataButton = uibutton(app.SavesettingsPanel, 'push');
            app.SaveDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButtonPushed, true);
            app.SaveDataButton.BackgroundColor = [0.302 0.7451 0.9333];
            app.SaveDataButton.FontSize = 13;
            app.SaveDataButton.FontWeight = 'bold';
            app.SaveDataButton.Position = [194 46 71 27];
            app.SaveDataButton.Text = 'Save';

            % Create NoteonlyMATformatincludesallappsettingsLabel
            app.NoteonlyMATformatincludesallappsettingsLabel = uilabel(app.SavesettingsPanel);
            app.NoteonlyMATformatincludesallappsettingsLabel.WordWrap = 'on';
            app.NoteonlyMATformatincludesallappsettingsLabel.Position = [155 0 136 44];
            app.NoteonlyMATformatincludesallappsettingsLabel.Text = 'Note: only MAT format includes all app settings';

            % Create LogTextAreaLabel
            app.LogTextAreaLabel = uilabel(app.MainTab);
            app.LogTextAreaLabel.HorizontalAlignment = 'right';
            app.LogTextAreaLabel.Position = [934 906 54 28];
            app.LogTextAreaLabel.Text = 'Log';

            % Create LogTextArea
            app.LogTextArea = uitextarea(app.MainTab);
            app.LogTextArea.Position = [967 832 316 77];

            % Create DscanplotPanel
            app.DscanplotPanel = uipanel(app.MainTab);
            app.DscanplotPanel.Title = '2D scan plot';
            app.DscanplotPanel.Position = [532 38 420 456];

            % Create ScanPlot_2d
            app.ScanPlot_2d = uiaxes(app.DscanplotPanel);
            title(app.ScanPlot_2d, 'Signal')
            xlabel(app.ScanPlot_2d, 'X [um]')
            ylabel(app.ScanPlot_2d, 'Y [um]')
            app.ScanPlot_2d.Box = 'on';
            colormap(app.ScanPlot_2d, 'jet')
            app.ScanPlot_2d.Position = [18 13 373 347];

            % Create ColorbarlimitsLabel
            app.ColorbarlimitsLabel = uilabel(app.DscanplotPanel);
            app.ColorbarlimitsLabel.Position = [51 401 82 22];
            app.ColorbarlimitsLabel.Text = 'Colorbar limits';

            % Create cmax
            app.cmax = uieditfield(app.DscanplotPanel, 'numeric');
            app.cmax.ValueChangedFcn = createCallbackFcn(app, @cmaxValueChanged, true);
            app.cmax.Position = [224 402 64 22];
            app.cmax.Value = 500;

            % Create cmin
            app.cmin = uieditfield(app.DscanplotPanel, 'numeric');
            app.cmin.Limits = [0 Inf];
            app.cmin.ValueChangedFcn = createCallbackFcn(app, @cminValueChanged, true);
            app.cmin.Position = [143 402 64 22];

            % Create autoadjustplotlimits
            app.autoadjustplotlimits = uicheckbox(app.DscanplotPanel);
            app.autoadjustplotlimits.Text = 'Auto adjust limits after each scan';
            app.autoadjustplotlimits.Position = [71 365 199 38];
            app.autoadjustplotlimits.Value = true;

            % Create UnitLabel_3
            app.UnitLabel_3 = uilabel(app.DscanplotPanel);
            app.UnitLabel_3.Position = [297 403 30 22];
            app.UnitLabel_3.Text = 'kcps';

            % Create UnitLabel_4
            app.UnitLabel_4 = uilabel(app.DscanplotPanel);
            app.UnitLabel_4.FontSize = 24;
            app.UnitLabel_4.FontWeight = 'bold';
            app.UnitLabel_4.Position = [343 357 60 32];
            app.UnitLabel_4.Text = 'kcps';

            % Create DscanplotsPanel
            app.DscanplotsPanel = uipanel(app.MainTab);
            app.DscanplotsPanel.Title = '1D scan plots';
            app.DscanplotsPanel.Position = [967 103 317 561];

            % Create ScanPlot_z
            app.ScanPlot_z = uiaxes(app.DscanplotsPanel);
            xlabel(app.ScanPlot_z, 'Z [um]')
            ylabel(app.ScanPlot_z, 'kcps')
            app.ScanPlot_z.Box = 'on';
            colormap(app.ScanPlot_z, 'jet')
            app.ScanPlot_z.Position = [14 48 294 151];

            % Create ScanPlot_y
            app.ScanPlot_y = uiaxes(app.DscanplotsPanel);
            xlabel(app.ScanPlot_y, 'Y [um]')
            ylabel(app.ScanPlot_y, 'kcps')
            app.ScanPlot_y.Box = 'on';
            colormap(app.ScanPlot_y, 'jet')
            app.ScanPlot_y.Position = [14 214 294 151];

            % Create ScanPlot_x
            app.ScanPlot_x = uiaxes(app.DscanplotsPanel);
            xlabel(app.ScanPlot_x, 'X [um]')
            ylabel(app.ScanPlot_x, 'kcps')
            app.ScanPlot_x.Box = 'on';
            colormap(app.ScanPlot_x, 'jet')
            app.ScanPlot_x.Position = [12 384 294 151];

            % Create GeneralPanel
            app.GeneralPanel = uipanel(app.MainTab);
            app.GeneralPanel.Title = 'General';
            app.GeneralPanel.Position = [27 507 926 160];

            % Create currentcpsLabel
            app.currentcpsLabel = uilabel(app.GeneralPanel);
            app.currentcpsLabel.HorizontalAlignment = 'right';
            app.currentcpsLabel.Position = [136 110 77 22];
            app.currentcpsLabel.Text = 'current signal';

            % Create cursignal
            app.cursignal = uieditfield(app.GeneralPanel, 'numeric');
            app.cursignal.ValueDisplayFormat = '%0.4e';
            app.cursignal.Position = [216 110 87 22];

            % Create TakeDataTest
            app.TakeDataTest = uibutton(app.GeneralPanel, 'push');
            app.TakeDataTest.ButtonPushedFcn = createCallbackFcn(app, @TakeDataTestButtonPushed, true);
            app.TakeDataTest.BackgroundColor = [0.302 0.7451 0.9333];
            app.TakeDataTest.FontSize = 13;
            app.TakeDataTest.FontWeight = 'bold';
            app.TakeDataTest.Position = [342 110 55 22];
            app.TakeDataTest.Text = 'Update';

            % Create plotcurcps
            app.plotcurcps = uicheckbox(app.GeneralPanel);
            app.plotcurcps.Text = {'display signal reading '; 'after shifting position'};
            app.plotcurcps.Position = [92 21 149 38];
            app.plotcurcps.Value = true;

            % Create ReturnInitPos
            app.ReturnInitPos = uicheckbox(app.GeneralPanel);
            app.ReturnInitPos.Text = {'Return to initial'; 'position after scan'};
            app.ReturnInitPos.Position = [93 57 126 38];

            % Create SamplerateLabel_2
            app.SamplerateLabel_2 = uilabel(app.GeneralPanel);
            app.SamplerateLabel_2.HorizontalAlignment = 'right';
            app.SamplerateLabel_2.Position = [8 110 78 22];
            app.SamplerateLabel_2.Text = 'Dwell time (s)';

            % Create DwellTime
            app.DwellTime = uieditfield(app.GeneralPanel, 'numeric');
            app.DwellTime.ValueChangedFcn = createCallbackFcn(app, @DwellTimeValueChanged, true);
            app.DwellTime.Position = [88 110 42 22];
            app.DwellTime.Value = 0.04;

            % Create StopscanButton
            app.StopscanButton = uibutton(app.GeneralPanel, 'push');
            app.StopscanButton.ButtonPushedFcn = createCallbackFcn(app, @StopscanButtonPushed, true);
            app.StopscanButton.BackgroundColor = [0.851 0.3255 0.098];
            app.StopscanButton.FontSize = 13;
            app.StopscanButton.FontWeight = 'bold';
            app.StopscanButton.Position = [7 45 76 33];
            app.StopscanButton.Text = 'Stop scan';

            % Create UnitLabel
            app.UnitLabel = uilabel(app.GeneralPanel);
            app.UnitLabel.Position = [307 110 30 22];
            app.UnitLabel.Text = 'kcps';

            % Create EsttimelefthhmmssLabel
            app.EsttimelefthhmmssLabel = uilabel(app.GeneralPanel);
            app.EsttimelefthhmmssLabel.HorizontalAlignment = 'center';
            app.EsttimelefthhmmssLabel.WordWrap = 'on';
            app.EsttimelefthhmmssLabel.Position = [750 27 106 38];
            app.EsttimelefthhmmssLabel.Text = 'Est time left (hh:mm:ss)';

            % Create EstTimeLeft
            app.EstTimeLeft = uieditfield(app.GeneralPanel, 'text');
            app.EstTimeLeft.Position = [841 35 65 22];

            % Create ElapsedtimehhmmssEditFieldLabel
            app.ElapsedtimehhmmssEditFieldLabel = uilabel(app.GeneralPanel);
            app.ElapsedtimehhmmssEditFieldLabel.HorizontalAlignment = 'center';
            app.ElapsedtimehhmmssEditFieldLabel.Position = [837 71 74 30];
            app.ElapsedtimehhmmssEditFieldLabel.Text = {'Elapsed time'; '(hh:mm:ss)'};

            % Create ElapsedTime
            app.ElapsedTime = uieditfield(app.GeneralPanel, 'text');
            app.ElapsedTime.HorizontalAlignment = 'center';
            app.ElapsedTime.Position = [842 106 65 22];

            % Create ScanprogressLabel
            app.ScanprogressLabel = uilabel(app.GeneralPanel);
            app.ScanprogressLabel.HorizontalAlignment = 'center';
            app.ScanprogressLabel.Position = [713 65 104 22];
            app.ScanprogressLabel.Text = 'Scan progress (%)';

            % Create ScanprogressGauge
            app.ScanprogressGauge = uigauge(app.GeneralPanel, 'linear');
            app.ScanprogressGauge.Position = [702 90 119 41];

            % Create maxcpsLabel_2
            app.maxcpsLabel_2 = uilabel(app.GeneralPanel);
            app.maxcpsLabel_2.HorizontalAlignment = 'right';
            app.maxcpsLabel_2.Position = [560 105 43 22];
            app.maxcpsLabel_2.Text = 'min sig';

            % Create mincps
            app.mincps = uieditfield(app.GeneralPanel, 'numeric');
            app.mincps.Position = [609 105 69 22];

            % Create maxcpsLabel
            app.maxcpsLabel = uilabel(app.GeneralPanel);
            app.maxcpsLabel.HorizontalAlignment = 'right';
            app.maxcpsLabel.Position = [558 75 46 22];
            app.maxcpsLabel.Text = 'max sig';

            % Create maxcps
            app.maxcps = uieditfield(app.GeneralPanel, 'numeric');
            app.maxcps.Position = [609 75 69 22];

            % Create meansigLabel
            app.meansigLabel = uilabel(app.GeneralPanel);
            app.meansigLabel.HorizontalAlignment = 'right';
            app.meansigLabel.Position = [546 46 58 22];
            app.meansigLabel.Text = 'mean sig';

            % Create meancps
            app.meancps = uieditfield(app.GeneralPanel, 'numeric');
            app.meancps.Position = [610 44 68 22];

            % Create ColorSwitch
            app.ColorSwitch = uiswitch(app.GeneralPanel, 'slider');
            app.ColorSwitch.Items = {'Red', 'Green'};
            app.ColorSwitch.ValueChangedFcn = createCallbackFcn(app, @ColorSwitchValueChanged, true);
            app.ColorSwitch.Position = [452 75 45 20];
            app.ColorSwitch.Value = 'Red';

            % Create CurrentlightLampLabel
            app.CurrentlightLampLabel = uilabel(app.GeneralPanel);
            app.CurrentlightLampLabel.HorizontalAlignment = 'right';
            app.CurrentlightLampLabel.Position = [422 103 70 22];
            app.CurrentlightLampLabel.Text = 'Current light';

            % Create CurrentlightLamp
            app.CurrentlightLamp = uilamp(app.GeneralPanel);
            app.CurrentlightLamp.Position = [507 103 20 20];
            app.CurrentlightLamp.Color = [1 0 0];

            % Create NDSwitch
            app.NDSwitch = uiswitch(app.GeneralPanel, 'slider');
            app.NDSwitch.Items = {'ND filter', 'None'};
            app.NDSwitch.ValueChangedFcn = createCallbackFcn(app, @NDSwitchValueChanged, true);
            app.NDSwitch.Position = [452 44 45 20];
            app.NDSwitch.Value = 'ND filter';

            % Create GlobalpositionmmLabel
            app.GlobalpositionmmLabel = uilabel(app.GeneralPanel);
            app.GlobalpositionmmLabel.HorizontalAlignment = 'center';
            app.GlobalpositionmmLabel.WordWrap = 'on';
            app.GlobalpositionmmLabel.FontSize = 18;
            app.GlobalpositionmmLabel.FontWeight = 'bold';
            app.GlobalpositionmmLabel.Position = [215 23 102 66];
            app.GlobalpositionmmLabel.Text = {'Global position'; '(mm)'};

            % Create GlobalZPosmm
            app.GlobalZPosmm = uieditfield(app.GeneralPanel, 'numeric');
            app.GlobalZPosmm.Limits = [-50 50];
            app.GlobalZPosmm.ValueDisplayFormat = '%.4f';
            app.GlobalZPosmm.HorizontalAlignment = 'center';
            app.GlobalZPosmm.Position = [325 15 57 23];

            % Create GlobalYPosmm
            app.GlobalYPosmm = uieditfield(app.GeneralPanel, 'numeric');
            app.GlobalYPosmm.Limits = [-50 50];
            app.GlobalYPosmm.ValueDisplayFormat = '%.4f';
            app.GlobalYPosmm.HorizontalAlignment = 'center';
            app.GlobalYPosmm.Position = [325 43 57 22];

            % Create GlobalXPosmm
            app.GlobalXPosmm = uieditfield(app.GeneralPanel, 'numeric');
            app.GlobalXPosmm.Limits = [-50 50];
            app.GlobalXPosmm.ValueDisplayFormat = '%.4f';
            app.GlobalXPosmm.HorizontalAlignment = 'center';
            app.GlobalXPosmm.Position = [325 70 57 22];

            % Create XLabel_4
            app.XLabel_4 = uilabel(app.GeneralPanel);
            app.XLabel_4.FontWeight = 'bold';
            app.XLabel_4.Position = [309 70 25 22];
            app.XLabel_4.Text = 'X';

            % Create YLabel_4
            app.YLabel_4 = uilabel(app.GeneralPanel);
            app.YLabel_4.FontWeight = 'bold';
            app.YLabel_4.Position = [309 43 25 22];
            app.YLabel_4.Text = 'Y';

            % Create ZLabel_4
            app.ZLabel_4 = uilabel(app.GeneralPanel);
            app.ZLabel_4.FontWeight = 'bold';
            app.ZLabel_4.Position = [310 16 25 22];
            app.ZLabel_4.Text = 'Z';

            % Create DatatipsPanel
            app.DatatipsPanel = uipanel(app.MainTab);
            app.DatatipsPanel.Title = 'Datatips';
            app.DatatipsPanel.Position = [1298 347 282 370];

            % Create UITable
            app.UITable = uitable(app.DatatipsPanel);
            app.UITable.ColumnName = {'X'; 'Y'; 'Value'; 'Label'};
            app.UITable.RowName = {};
            app.UITable.Position = [13 43 255 244];

            % Create RecordDataTips
            app.RecordDataTips = uicheckbox(app.DatatipsPanel);
            app.RecordDataTips.ValueChangedFcn = createCallbackFcn(app, @RecordDataTipsValueChanged, true);
            app.RecordDataTips.Text = 'Record datatips';
            app.RecordDataTips.Position = [23 298 188 38];
            app.RecordDataTips.Value = true;

            % Create ScanmodeEditFieldLabel
            app.ScanmodeEditFieldLabel = uilabel(app.DatatipsPanel);
            app.ScanmodeEditFieldLabel.HorizontalAlignment = 'right';
            app.ScanmodeEditFieldLabel.Position = [74 11 66 22];
            app.ScanmodeEditFieldLabel.Text = 'Scan mode';

            % Create ScanmodeEditField
            app.ScanmodeEditField = uieditfield(app.DatatipsPanel, 'text');
            app.ScanmodeEditField.Position = [155 11 56 22];

            % Create LaserpowerPanel
            app.LaserpowerPanel = uipanel(app.MainTab);
            app.LaserpowerPanel.Title = 'Laser power';
            app.LaserpowerPanel.Position = [1298 730 282 176];

            % Create LaserpowermWLabel
            app.LaserpowermWLabel = uilabel(app.LaserpowerPanel);
            app.LaserpowermWLabel.HorizontalAlignment = 'center';
            app.LaserpowermWLabel.FontSize = 18;
            app.LaserpowermWLabel.FontWeight = 'bold';
            app.LaserpowermWLabel.Position = [61 43 161 23];
            app.LaserpowermWLabel.Text = 'Laser power (mW)';

            % Create LaserPowerIndicator
            app.LaserPowerIndicator = uieditfield(app.LaserpowerPanel, 'numeric');
            app.LaserPowerIndicator.ValueDisplayFormat = '%.3f';
            app.LaserPowerIndicator.HorizontalAlignment = 'center';
            app.LaserPowerIndicator.FontSize = 24;
            app.LaserPowerIndicator.Position = [90 76 103 32];
            app.LaserPowerIndicator.Value = 0.1;

            % Create EnableLaserPowerMonitor
            app.EnableLaserPowerMonitor = uicheckbox(app.LaserpowerPanel);
            app.EnableLaserPowerMonitor.ValueChangedFcn = createCallbackFcn(app, @EnableLaserPowerMonitorValueChanged, true);
            app.EnableLaserPowerMonitor.Text = 'Monitor laser power with PD';
            app.EnableLaserPowerMonitor.Position = [48 110 188 38];

            % Create RawvoltagereadVLabel
            app.RawvoltagereadVLabel = uilabel(app.LaserpowerPanel);
            app.RawvoltagereadVLabel.HorizontalAlignment = 'right';
            app.RawvoltagereadVLabel.Position = [48 13 118 22];
            app.RawvoltagereadVLabel.Text = 'Raw voltage read (V)';

            % Create LaserPowerVoltage
            app.LaserPowerVoltage = uieditfield(app.LaserpowerPanel, 'numeric');
            app.LaserPowerVoltage.HorizontalAlignment = 'center';
            app.LaserPowerVoltage.Position = [172 13 50 22];
            app.LaserPowerVoltage.Value = 0.1;

            % Create DatastreamingmodeTab
            app.DatastreamingmodeTab = uitab(app.TabGroup);
            app.DatastreamingmodeTab.Title = 'Data streaming mode';

            % Create UIAxesDataStream
            app.UIAxesDataStream = uiaxes(app.DatastreamingmodeTab);
            title(app.UIAxesDataStream, 'Averaged signal chart')
            xlabel(app.UIAxesDataStream, 'Data point #')
            ylabel(app.UIAxesDataStream, 'Signal')
            zlabel(app.UIAxesDataStream, 'Z')
            app.UIAxesDataStream.Position = [695 575 490 284];

            % Create SignalkcpsLabel
            app.SignalkcpsLabel = uilabel(app.DatastreamingmodeTab);
            app.SignalkcpsLabel.HorizontalAlignment = 'center';
            app.SignalkcpsLabel.FontSize = 32;
            app.SignalkcpsLabel.Position = [159 722 183 41];
            app.SignalkcpsLabel.Text = 'Signal Mean';

            % Create siglivegauge
            app.siglivegauge = uigauge(app.DatastreamingmodeTab, 'semicircular');
            app.siglivegauge.Limits = [0 50];
            app.siglivegauge.FontSize = 18;
            app.siglivegauge.Position = [29 476 435 235];

            % Create SamplerateLabel_3
            app.SamplerateLabel_3 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_3.HorizontalAlignment = 'right';
            app.SamplerateLabel_3.Position = [486 493 100 22];
            app.SamplerateLabel_3.Text = 'Gauge upper limit';

            % Create StreamStartStop
            app.StreamStartStop = uibutton(app.DatastreamingmodeTab, 'push');
            app.StreamStartStop.ButtonPushedFcn = createCallbackFcn(app, @StreamStartStopButtonPushed, true);
            app.StreamStartStop.BackgroundColor = [0.4667 0.6745 0.1882];
            app.StreamStartStop.FontSize = 13;
            app.StreamStartStop.FontWeight = 'bold';
            app.StreamStartStop.Position = [443 819 157 40];
            app.StreamStartStop.Text = 'Start/stop streaming';

            % Create Gauge_upper_limit
            app.Gauge_upper_limit = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.Gauge_upper_limit.ValueChangedFcn = createCallbackFcn(app, @Gauge_upper_limitValueChanged, true);
            app.Gauge_upper_limit.Position = [597 490 70 22];
            app.Gauge_upper_limit.Value = 50;

            % Create WilldisableregularscanningmodeLabel
            app.WilldisableregularscanningmodeLabel = uilabel(app.DatastreamingmodeTab);
            app.WilldisableregularscanningmodeLabel.Position = [426 870 192 22];
            app.WilldisableregularscanningmodeLabel.Text = 'Will disable regular scanning mode';

            % Create TimePerRead
            app.TimePerRead = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.TimePerRead.ValueChangedFcn = createCallbackFcn(app, @TimePerReadValueChanged, true);
            app.TimePerRead.Tooltip = {'Same as dwell time on main panel. Do not change this while streaming.'};
            app.TimePerRead.Position = [552 739 45 22];
            app.TimePerRead.Value = 0.01;

            % Create SamplerateLabel_4
            app.SamplerateLabel_4 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_4.HorizontalAlignment = 'right';
            app.SamplerateLabel_4.Position = [434 770 112 22];
            app.SamplerateLabel_4.Text = '# reads per average';

            % Create ReadsPerMean
            app.ReadsPerMean = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.ReadsPerMean.Position = [554 769 45 22];
            app.ReadsPerMean.Value = 1;

            % Create UnitLabel_2
            app.UnitLabel_2 = uilabel(app.DatastreamingmodeTab);
            app.UnitLabel_2.FontSize = 24;
            app.UnitLabel_2.Position = [361 816 54 32];
            app.UnitLabel_2.Text = 'kcps';

            % Create SamplerateLabel_6
            app.SamplerateLabel_6 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_6.HorizontalAlignment = 'right';
            app.SamplerateLabel_6.Position = [857 540 141 22];
            app.SamplerateLabel_6.Text = '# of data points to display';

            % Create StreamDispNumPoints
            app.StreamDispNumPoints = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.StreamDispNumPoints.Limits = [0 100000];
            app.StreamDispNumPoints.Tooltip = {'Maximum is 10000'};
            app.StreamDispNumPoints.Position = [1009 537 70 22];
            app.StreamDispNumPoints.Value = 100;

            % Create currentcpsLabel_3
            app.currentcpsLabel_3 = uilabel(app.DatastreamingmodeTab);
            app.currentcpsLabel_3.HorizontalAlignment = 'right';
            app.currentcpsLabel_3.FontSize = 24;
            app.currentcpsLabel_3.Position = [118 790 112 32];
            app.currentcpsLabel_3.Text = 'Signal SD';

            % Create CurSigSD
            app.CurSigSD = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.CurSigSD.ValueDisplayFormat = '%.3f';
            app.CurSigSD.FontSize = 24;
            app.CurSigSD.Position = [239 790 110 32];

            % Create currentcpsLabel_2
            app.currentcpsLabel_2 = uilabel(app.DatastreamingmodeTab);
            app.currentcpsLabel_2.HorizontalAlignment = 'right';
            app.currentcpsLabel_2.FontSize = 24;
            app.currentcpsLabel_2.Position = [92 831 138 32];
            app.currentcpsLabel_2.Text = 'Signal Mean';

            % Create CurSigMean
            app.CurSigMean = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.CurSigMean.ValueDisplayFormat = '%.3f';
            app.CurSigMean.FontSize = 24;
            app.CurSigMean.Position = [239 831 110 32];

            % Create SamplerateLabel_7
            app.SamplerateLabel_7 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_7.HorizontalAlignment = 'right';
            app.SamplerateLabel_7.Position = [447 740 97 22];
            app.SamplerateLabel_7.Text = 'Time per read (s)';

            % Create SamplerateLabel_8
            app.SamplerateLabel_8 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_8.HorizontalAlignment = 'right';
            app.SamplerateLabel_8.Position = [923 464 86 22];
            app.SamplerateLabel_8.Text = 'Max buffer size';

            % Create MaxStreamBufferSize
            app.MaxStreamBufferSize = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.MaxStreamBufferSize.Limits = [0 100000];
            app.MaxStreamBufferSize.Tooltip = {'Maximum is 10000'};
            app.MaxStreamBufferSize.Position = [1020 461 70 22];
            app.MaxStreamBufferSize.Value = 1000;

            % Create SamplerateLabel_16
            app.SamplerateLabel_16 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_16.HorizontalAlignment = 'right';
            app.SamplerateLabel_16.Position = [564 633 63 22];
            app.SamplerateLabel_16.Text = 'Plot Y max';

            % Create DataStreamPlotYMax
            app.DataStreamPlotYMax = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.DataStreamPlotYMax.Position = [637 633 41 22];
            app.DataStreamPlotYMax.Value = 10;

            % Create SamplerateLabel_17
            app.SamplerateLabel_17 = uilabel(app.DatastreamingmodeTab);
            app.SamplerateLabel_17.HorizontalAlignment = 'right';
            app.SamplerateLabel_17.Position = [567 604 59 22];
            app.SamplerateLabel_17.Text = 'Plot Y min';

            % Create DataStreamPlotYMin
            app.DataStreamPlotYMin = uieditfield(app.DatastreamingmodeTab, 'numeric');
            app.DataStreamPlotYMin.Position = [637 601 41 22];

            % Create DataStreamPlotAutoScale
            app.DataStreamPlotAutoScale = uicheckbox(app.DatastreamingmodeTab);
            app.DataStreamPlotAutoScale.Text = 'Auto scale';
            app.DataStreamPlotAutoScale.Position = [602 659 88 38];

            % Create GeneralsettingsTab
            app.GeneralsettingsTab = uitab(app.TabGroup);
            app.GeneralsettingsTab.Title = 'General settings';

            % Create GeneralstartupPanel
            app.GeneralstartupPanel = uipanel(app.GeneralsettingsTab);
            app.GeneralstartupPanel.Title = 'General & startup';
            app.GeneralstartupPanel.Position = [12 720 831 197];

            % Create startupLoadMicro
            app.startupLoadMicro = uicheckbox(app.GeneralstartupPanel);
            app.startupLoadMicro.Text = 'Load MicroDrive';
            app.startupLoadMicro.Position = [12 141 153 38];

            % Create startupLoadNano
            app.startupLoadNano = uicheckbox(app.GeneralstartupPanel);
            app.startupLoadNano.Text = 'Load NanoDrive';
            app.startupLoadNano.Position = [128 141 149 38];

            % Create startupLoadDAQ
            app.startupLoadDAQ = uicheckbox(app.GeneralstartupPanel);
            app.startupLoadDAQ.Text = 'Load DAQ';
            app.startupLoadDAQ.Position = [245 140 153 38];

            % Create MCLlibrarypathaddbackslashatendTextAreaLabel
            app.MCLlibrarypathaddbackslashatendTextAreaLabel = uilabel(app.GeneralstartupPanel);
            app.MCLlibrarypathaddbackslashatendTextAreaLabel.HorizontalAlignment = 'right';
            app.MCLlibrarypathaddbackslashatendTextAreaLabel.Position = [445 110 93 42];
            app.MCLlibrarypathaddbackslashatendTextAreaLabel.Text = {'MCL library path'; '(add backslash'; 'at end)'};

            % Create MCLLibPath
            app.MCLLibPath = uitextarea(app.GeneralstartupPanel);
            app.MCLLibPath.Position = [547 97 275 67];
            app.MCLLibPath.Value = {'.\Mad City Labs\MATLAB\MCL Library\'};

            % Create MinpeakheightVLabel_5
            app.MinpeakheightVLabel_5 = uilabel(app.GeneralstartupPanel);
            app.MinpeakheightVLabel_5.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_5.WordWrap = 'on';
            app.MinpeakheightVLabel_5.Position = [351 74 87 42];
            app.MinpeakheightVLabel_5.Text = 'Max messages in log area';

            % Create LogMsgLimit
            app.LogMsgLimit = uieditfield(app.GeneralstartupPanel, 'numeric');
            app.LogMsgLimit.Limits = [0 Inf];
            app.LogMsgLimit.Position = [443 83 40 22];
            app.LogMsgLimit.Value = 50;

            % Create MinpeakheightVLabel_9
            app.MinpeakheightVLabel_9 = uilabel(app.GeneralstartupPanel);
            app.MinpeakheightVLabel_9.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_9.Position = [12 88 146 44];
            app.MinpeakheightVLabel_9.Text = {'Number of stage moves'; 'before stage positions are '; 'automatically saved'};

            % Create movecountlim
            app.movecountlim = uieditfield(app.GeneralstartupPanel, 'numeric');
            app.movecountlim.Limits = [0 Inf];
            app.movecountlim.Position = [168 102 36 22];
            app.movecountlim.Value = 50;

            % Create SettingsFilePath
            app.SettingsFilePath = uitextarea(app.GeneralstartupPanel);
            app.SettingsFilePath.Position = [545 13 275 67];
            app.SettingsFilePath.Value = {'.\Dependencies\DMconfocal_settings.mat'};

            % Create ReloadSettings
            app.ReloadSettings = uibutton(app.GeneralstartupPanel, 'push');
            app.ReloadSettings.ButtonPushedFcn = createCallbackFcn(app, @ReloadSettingsButtonPushed, true);
            app.ReloadSettings.WordWrap = 'on';
            app.ReloadSettings.BackgroundColor = [0 1 1];
            app.ReloadSettings.FontSize = 13;
            app.ReloadSettings.FontWeight = 'bold';
            app.ReloadSettings.Position = [128 24 98 40];
            app.ReloadSettings.Text = 'Reload saved settings';

            % Create SaveSettings
            app.SaveSettings = uibutton(app.GeneralstartupPanel, 'push');
            app.SaveSettings.ButtonPushedFcn = createCallbackFcn(app, @SaveSettingsButtonPushed, true);
            app.SaveSettings.WordWrap = 'on';
            app.SaveSettings.BackgroundColor = [0.7216 0.2706 1];
            app.SaveSettings.FontSize = 13;
            app.SaveSettings.FontWeight = 'bold';
            app.SaveSettings.Position = [16 24 98 40];
            app.SaveSettings.Text = 'Save all settings';

            % Create SettingsfilepathLabel
            app.SettingsfilepathLabel = uilabel(app.GeneralstartupPanel);
            app.SettingsfilepathLabel.HorizontalAlignment = 'right';
            app.SettingsfilepathLabel.Position = [440 26 96 42];
            app.SettingsfilepathLabel.Text = {'General settings '; 'file path'};

            % Create SaveSettingsExit
            app.SaveSettingsExit = uicheckbox(app.GeneralstartupPanel);
            app.SaveSettingsExit.Text = {'Save settings'; 'upon exit'};
            app.SaveSettingsExit.Position = [242 26 98 42];
            app.SaveSettingsExit.Value = true;

            % Create DisableStagePosSave
            app.DisableStagePosSave = uicheckbox(app.GeneralstartupPanel);
            app.DisableStagePosSave.Text = {'Disable saving '; 'stage pos in scans'};
            app.DisableStagePosSave.Position = [222 94 155 42];
            app.DisableStagePosSave.Value = true;

            % Create AxismappingPanel
            app.AxismappingPanel = uipanel(app.GeneralsettingsTab);
            app.AxismappingPanel.Title = 'Axis mapping';
            app.AxismappingPanel.Position = [11 524 149 179];

            % Create NanoaxesLabel
            app.NanoaxesLabel = uilabel(app.AxismappingPanel);
            app.NanoaxesLabel.HorizontalAlignment = 'center';
            app.NanoaxesLabel.Position = [91 121 44 36];
            app.NanoaxesLabel.Text = {'Nano '; 'axes'};

            % Create NanoAxisZ
            app.NanoAxisZ = uieditfield(app.AxismappingPanel, 'text');
            app.NanoAxisZ.Position = [100 40 30 22];
            app.NanoAxisZ.Value = 'X';

            % Create NanoAxisY
            app.NanoAxisY = uieditfield(app.AxismappingPanel, 'text');
            app.NanoAxisY.Position = [100 71 30 22];
            app.NanoAxisY.Value = 'Y';

            % Create NanoAxisX
            app.NanoAxisX = uieditfield(app.AxismappingPanel, 'text');
            app.NanoAxisX.Position = [100 99 30 22];
            app.NanoAxisX.Value = '-Z';

            % Create LabXLabel
            app.LabXLabel = uilabel(app.AxismappingPanel);
            app.LabXLabel.FontWeight = 'bold';
            app.LabXLabel.Position = [21 98 38 22];
            app.LabXLabel.Text = 'Lab X';

            % Create LabYLabel
            app.LabYLabel = uilabel(app.AxismappingPanel);
            app.LabYLabel.FontWeight = 'bold';
            app.LabYLabel.Position = [21 70 38 22];
            app.LabYLabel.Text = 'Lab Y';

            % Create LabZLabel
            app.LabZLabel = uilabel(app.AxismappingPanel);
            app.LabZLabel.FontWeight = 'bold';
            app.LabZLabel.Position = [21 39 37 22];
            app.LabZLabel.Text = 'Lab Z';

            % Create MicroAxisZ
            app.MicroAxisZ = uieditfield(app.AxismappingPanel, 'text');
            app.MicroAxisZ.Position = [64 40 30 22];
            app.MicroAxisZ.Value = '-Z';

            % Create MicroAxisY
            app.MicroAxisY = uieditfield(app.AxismappingPanel, 'text');
            app.MicroAxisY.Position = [64 71 30 22];
            app.MicroAxisY.Value = 'Y';

            % Create MicroAxisX
            app.MicroAxisX = uieditfield(app.AxismappingPanel, 'text');
            app.MicroAxisX.Position = [64 99 30 22];
            app.MicroAxisX.Value = 'X';

            % Create MicroaxesLabel
            app.MicroaxesLabel = uilabel(app.AxismappingPanel);
            app.MicroaxesLabel.HorizontalAlignment = 'center';
            app.MicroaxesLabel.Position = [55 121 44 36];
            app.MicroaxesLabel.Text = {'Micro '; 'axes'};

            % Create SetAxesMap
            app.SetAxesMap = uibutton(app.AxismappingPanel, 'push');
            app.SetAxesMap.ButtonPushedFcn = createCallbackFcn(app, @SetAxesMapButtonPushed, true);
            app.SetAxesMap.Position = [25 9 100 22];
            app.SetAxesMap.Text = 'Set';

            % Create DAQPanel
            app.DAQPanel = uipanel(app.GeneralsettingsTab);
            app.DAQPanel.Title = 'DAQ';
            app.DAQPanel.Position = [858 426 295 484];

            % Create DevicenameLabel
            app.DevicenameLabel = uilabel(app.DAQPanel);
            app.DevicenameLabel.HorizontalAlignment = 'right';
            app.DevicenameLabel.Position = [5 430 76 22];
            app.DevicenameLabel.Text = 'Device name';

            % Create DevName
            app.DevName = uieditfield(app.DAQPanel, 'text');
            app.DevName.Position = [88 429 45 22];
            app.DevName.Value = 'Dev1';

            % Create ReinitializeDAQ
            app.ReinitializeDAQ = uibutton(app.DAQPanel, 'push');
            app.ReinitializeDAQ.ButtonPushedFcn = createCallbackFcn(app, @ReinitializeDAQButtonPushed, true);
            app.ReinitializeDAQ.BackgroundColor = [0.8 0.8 0.8];
            app.ReinitializeDAQ.Tooltip = {'Must reinitialize after updating DAQ settings.'; '# of samples determined by dwell time (front panel)'};
            app.ReinitializeDAQ.Position = [12 389 86 27];
            app.ReinitializeDAQ.Text = 'Reinitialize';

            % Create AcquisitionmodeButtonGroup
            app.AcquisitionmodeButtonGroup = uibuttongroup(app.DAQPanel);
            app.AcquisitionmodeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @AcquisitionmodeButtonGroupSelectionChanged, true);
            app.AcquisitionmodeButtonGroup.Tooltip = {'If in analog voltage mode, units are in volts (V).'};
            app.AcquisitionmodeButtonGroup.Title = 'Acquisition mode';
            app.AcquisitionmodeButtonGroup.Position = [157 385 119 70];

            % Create AnalogvoltageButton
            app.AnalogvoltageButton = uiradiobutton(app.AcquisitionmodeButtonGroup);
            app.AnalogvoltageButton.Text = 'Analog voltage';
            app.AnalogvoltageButton.Position = [11 2 101 22];

            % Create EdgecountButton
            app.EdgecountButton = uiradiobutton(app.AcquisitionmodeButtonGroup);
            app.EdgecountButton.Text = 'Edge count';
            app.EdgecountButton.Position = [11 24 83 22];
            app.EdgecountButton.Value = true;

            % Create EdgecountingPanel
            app.EdgecountingPanel = uipanel(app.DAQPanel);
            app.EdgecountingPanel.Title = 'Edge counting';
            app.EdgecountingPanel.Position = [9 245 280 127];

            % Create CounteroutputLabel
            app.CounteroutputLabel = uilabel(app.EdgecountingPanel);
            app.CounteroutputLabel.HorizontalAlignment = 'right';
            app.CounteroutputLabel.Position = [149 69 85 22];
            app.CounteroutputLabel.Text = 'Counter output';

            % Create CtrOut
            app.CtrOut = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrOut.Position = [248 71 24 22];
            app.CtrOut.Value = 1;

            % Create MinpeakheightVLabel
            app.MinpeakheightVLabel = uilabel(app.EdgecountingPanel);
            app.MinpeakheightVLabel.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel.Position = [25 64 78 30];
            app.MinpeakheightVLabel.Text = 'Counter input';

            % Create CtrIn
            app.CtrIn = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrIn.Position = [109 68 24 22];

            % Create InputPFILabel
            app.InputPFILabel = uilabel(app.EdgecountingPanel);
            app.InputPFILabel.HorizontalAlignment = 'right';
            app.InputPFILabel.Position = [3 39 99 22];
            app.InputPFILabel.Text = 'Signal Input PFI#';

            % Create CtrInTerm
            app.CtrInTerm = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrInTerm.Position = [109 39 24 22];

            % Create InputPFILabel_2
            app.InputPFILabel_2 = uilabel(app.EdgecountingPanel);
            app.InputPFILabel_2.HorizontalAlignment = 'right';
            app.InputPFILabel_2.Position = [138 41 102 22];
            app.InputPFILabel_2.Text = 'Output pulse PFI#';

            % Create CtrOutTerm
            app.CtrOutTerm = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrOutTerm.Position = [248 41 24 22];
            app.CtrOutTerm.Value = 1;

            % Create SamplerateLabel
            app.SamplerateLabel = uilabel(app.EdgecountingPanel);
            app.SamplerateLabel.HorizontalAlignment = 'right';
            app.SamplerateLabel.Position = [6 9 96 22];
            app.SamplerateLabel.Text = 'Input trigger PFI#';

            % Create CtrInTrig
            app.CtrInTrig = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrInTrig.Position = [109 9 24 22];
            app.CtrInTrig.Value = 13;

            % Create SamplerateLabel_27
            app.SamplerateLabel_27 = uilabel(app.EdgecountingPanel);
            app.SamplerateLabel_27.HorizontalAlignment = 'right';
            app.SamplerateLabel_27.Position = [134 11 107 22];
            app.SamplerateLabel_27.Text = 'Output trigger PFI#';

            % Create CtrOutTermTrig
            app.CtrOutTermTrig = uieditfield(app.EdgecountingPanel, 'numeric');
            app.CtrOutTermTrig.Tooltip = {'Output trigger only used in batch scanning mode'};
            app.CtrOutTermTrig.Position = [248 11 24 22];
            app.CtrOutTermTrig.Value = 7;

            % Create AnaloginputPanel
            app.AnaloginputPanel = uipanel(app.DAQPanel);
            app.AnaloginputPanel.Title = 'Analog input';
            app.AnaloginputPanel.Position = [9 146 280 90];

            % Create MinpeakheightVLabel_6
            app.MinpeakheightVLabel_6 = uilabel(app.AnaloginputPanel);
            app.MinpeakheightVLabel_6.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_6.Position = [2 7 83 30];
            app.MinpeakheightVLabel_6.Text = 'Dyn. range (V)';

            % Create DynRange
            app.DynRange = uieditfield(app.AnaloginputPanel, 'numeric');
            app.DynRange.Position = [91 11 32 22];
            app.DynRange.Value = 10;

            % Create MinpeakheightVLabel_7
            app.MinpeakheightVLabel_7 = uilabel(app.AnaloginputPanel);
            app.MinpeakheightVLabel_7.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_7.Position = [133 35 83 30];
            app.MinpeakheightVLabel_7.Text = 'Sample Rate';

            % Create SampRate
            app.SampRate = uieditfield(app.AnaloginputPanel, 'numeric');
            app.SampRate.Position = [222 39 48 22];
            app.SampRate.Value = 2000000;

            % Create MinpeakheightVLabel_8
            app.MinpeakheightVLabel_8 = uilabel(app.AnaloginputPanel);
            app.MinpeakheightVLabel_8.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_8.Position = [2 37 83 30];
            app.MinpeakheightVLabel_8.Text = 'Input Ch. AI#';

            % Create InputCh
            app.InputCh = uieditfield(app.AnaloginputPanel, 'numeric');
            app.InputCh.Position = [91 41 32 22];

            % Create LaserpowerPDmonitorPanel
            app.LaserpowerPDmonitorPanel = uipanel(app.DAQPanel);
            app.LaserpowerPDmonitorPanel.Title = 'Laser power PD monitor';
            app.LaserpowerPDmonitorPanel.Position = [11 9 280 128];

            % Create MinpeakheightVLabel_14
            app.MinpeakheightVLabel_14 = uilabel(app.LaserpowerPDmonitorPanel);
            app.MinpeakheightVLabel_14.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_14.Position = [-6 66 83 30];
            app.MinpeakheightVLabel_14.Text = 'Input Ch. AI#';

            % Create LaserMonitorConvSlope
            app.LaserMonitorConvSlope = uieditfield(app.LaserpowerPDmonitorPanel, 'numeric');
            app.LaserMonitorConvSlope.Position = [55 13 35 22];
            app.LaserMonitorConvSlope.Value = 4.3985;

            % Create LaserMonitorConvOffset
            app.LaserMonitorConvOffset = uieditfield(app.LaserpowerPDmonitorPanel, 'numeric');
            app.LaserMonitorConvOffset.Position = [143 13 42 22];
            app.LaserMonitorConvOffset.Value = -0.092;

            % Create InputChLaserMonitor
            app.InputChLaserMonitor = uieditfield(app.LaserpowerPDmonitorPanel, 'numeric');
            app.InputChLaserMonitor.Position = [83 70 32 22];
            app.InputChLaserMonitor.Value = 3;

            % Create MinpeakheightVLabel_15
            app.MinpeakheightVLabel_15 = uilabel(app.LaserpowerPDmonitorPanel);
            app.MinpeakheightVLabel_15.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_15.Position = [119 67 99 30];
            app.MinpeakheightVLabel_15.Text = 'Monitor period (s)';

            % Create LaserMonitorPeriod
            app.LaserMonitorPeriod = uieditfield(app.LaserpowerPDmonitorPanel, 'numeric');
            app.LaserMonitorPeriod.Position = [224 71 37 22];
            app.LaserMonitorPeriod.Value = 0.5;

            % Create MinpeakheightVLabel_16
            app.MinpeakheightVLabel_16 = uilabel(app.LaserpowerPDmonitorPanel);
            app.MinpeakheightVLabel_16.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_16.Position = [6 8 42 30];
            app.MinpeakheightVLabel_16.Text = 'Slope';

            % Create MinpeakheightVLabel_17
            app.MinpeakheightVLabel_17 = uilabel(app.LaserpowerPDmonitorPanel);
            app.MinpeakheightVLabel_17.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_17.Position = [94 8 42 30];
            app.MinpeakheightVLabel_17.Text = 'Offset';

            % Create VoltagepowerconversioncoeffsLabel
            app.VoltagepowerconversioncoeffsLabel = uilabel(app.LaserpowerPDmonitorPanel);
            app.VoltagepowerconversioncoeffsLabel.Position = [7 39 178 22];
            app.VoltagepowerconversioncoeffsLabel.Text = 'Voltage-power conversion coeffs';

            % Create MicroDriveGlobalPositionPanel
            app.MicroDriveGlobalPositionPanel = uipanel(app.GeneralsettingsTab);
            app.MicroDriveGlobalPositionPanel.Title = 'MicroDrive & Global Position';
            app.MicroDriveGlobalPositionPanel.Position = [181 410 629 294];

            % Create MinpeakheightVLabel_2
            app.MinpeakheightVLabel_2 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinpeakheightVLabel_2.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_2.Position = [24 73 78 30];
            app.MinpeakheightVLabel_2.Text = {'Move time '; 'multiplier'};

            % Create SafetylimitsmmLabel
            app.SafetylimitsmmLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.SafetylimitsmmLabel.Position = [39 227 101 22];
            app.SafetylimitsmmLabel.Text = 'Safety limits (mm)';

            % Create zigzagscan
            app.zigzagscan = uicheckbox(app.MicroDriveGlobalPositionPanel);
            app.zigzagscan.Tooltip = {'Saves about 15% in scanning time.'};
            app.zigzagscan.Text = 'zigzag scanning';
            app.zigzagscan.WordWrap = 'on';
            app.zigzagscan.Position = [23 37 107 38];
            app.zigzagscan.Value = true;

            % Create MovelargerdistancesinincrementsLabel
            app.MovelargerdistancesinincrementsLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MovelargerdistancesinincrementsLabel.Position = [423 78 198 22];
            app.MovelargerdistancesinincrementsLabel.Text = 'Move larger distances in increments';

            % Create MinpeakheightVLabel_4
            app.MinpeakheightVLabel_4 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinpeakheightVLabel_4.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_4.Position = [169 69 86 30];
            app.MinpeakheightVLabel_4.Text = {'Regular move'; 'velocity (mm/s)'};

            % Create Zmoveincr
            app.Zmoveincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zmoveincr.Position = [542 115 40 22];
            app.Zmoveincr.Value = 0.001;

            % Create Ymoveincr
            app.Ymoveincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Ymoveincr.Position = [542 145 40 22];
            app.Ymoveincr.Value = 0.01;

            % Create Xmoveincr
            app.Xmoveincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xmoveincr.Position = [542 175 40 22];
            app.Xmoveincr.Value = 0.01;

            % Create IncrementsmmLabel
            app.IncrementsmmLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.IncrementsmmLabel.HorizontalAlignment = 'center';
            app.IncrementsmmLabel.WordWrap = 'on';
            app.IncrementsmmLabel.FontWeight = 'bold';
            app.IncrementsmmLabel.Position = [530 201 65 30];
            app.IncrementsmmLabel.Text = 'Increments (mm)';

            % Create Zdistlimincr
            app.Zdistlimincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zdistlimincr.Position = [464 115 40 22];
            app.Zdistlimincr.Value = 0.01;

            % Create Ydistlimincr
            app.Ydistlimincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Ydistlimincr.Position = [464 145 40 22];
            app.Ydistlimincr.Value = 100;

            % Create Xdistlimincr
            app.Xdistlimincr = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xdistlimincr.Position = [464 175 40 22];
            app.Xdistlimincr.Value = 100;

            % Create MovestepthresholdmmLabel_2
            app.MovestepthresholdmmLabel_2 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MovestepthresholdmmLabel_2.HorizontalAlignment = 'center';
            app.MovestepthresholdmmLabel_2.WordWrap = 'on';
            app.MovestepthresholdmmLabel_2.FontWeight = 'bold';
            app.MovestepthresholdmmLabel_2.Position = [433 194 102 44];
            app.MovestepthresholdmmLabel_2.Text = 'Move step threshold (mm)';

            % Create ZeroNanodriveZ
            app.ZeroNanodriveZ = uicheckbox(app.MicroDriveGlobalPositionPanel);
            app.ZeroNanodriveZ.Text = '';
            app.ZeroNanodriveZ.Position = [356 115 16 22];
            app.ZeroNanodriveZ.Value = true;

            % Create ZeroNanodriveY
            app.ZeroNanodriveY = uicheckbox(app.MicroDriveGlobalPositionPanel);
            app.ZeroNanodriveY.Text = '';
            app.ZeroNanodriveY.Position = [356 146 15 21];
            app.ZeroNanodriveY.Value = true;

            % Create ZeroNanodriveX
            app.ZeroNanodriveX = uicheckbox(app.MicroDriveGlobalPositionPanel);
            app.ZeroNanodriveX.Text = '';
            app.ZeroNanodriveX.Position = [356 176 15 21];
            app.ZeroNanodriveX.Value = true;

            % Create ZeroNanodriveaxisbeforemovingglobalpositionLabel
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel.HorizontalAlignment = 'center';
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel.WordWrap = 'on';
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel.FontWeight = 'bold';
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel.Position = [306 198 122 46];
            app.ZeroNanodriveaxisbeforemovingglobalpositionLabel.Text = 'Zero Nanodrive axis before moving global position';

            % Create MicroDrivePrecision
            app.MicroDrivePrecision = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.MicroDrivePrecision.Limits = [0 Inf];
            app.MicroDrivePrecision.Tooltip = {'Round MicroDrive movements (typically 100 nm = 0.0001 mm). Ignore any move length below this. '};
            app.MicroDrivePrecision.Position = [256 29 64 22];
            app.MicroDrivePrecision.Value = 0.0001;

            % Create regmovevel
            app.regmovevel = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.regmovevel.Limits = [0 Inf];
            app.regmovevel.Tooltip = {'When moving small distances, the stage will move at the "regular move velocity." When moving distances larger than the value in "Move dist limit", the stage will move at "max vel" instead. This is useful to prevent "jerking" of the sample mount if the sample is fragile or not rigidly fixed.'};
            app.regmovevel.Position = [265 73 29 22];
            app.regmovevel.Value = 2;

            % Create Zmovedistlim
            app.Zmovedistlim = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zmovedistlim.Tooltip = {''};
            app.Zmovedistlim.Position = [169 115 40 22];
            app.Zmovedistlim.Value = 0.1;

            % Create Ymovedistlim
            app.Ymovedistlim = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Ymovedistlim.Tooltip = {''};
            app.Ymovedistlim.Position = [169 145 40 22];
            app.Ymovedistlim.Value = 0.1;

            % Create Xmovedistlim
            app.Xmovedistlim = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xmovedistlim.Tooltip = {''};
            app.Xmovedistlim.Position = [170 175 40 22];
            app.Xmovedistlim.Value = 0.1;

            % Create Zfarmovevel
            app.Zfarmovevel = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zfarmovevel.Tooltip = {''};
            app.Zfarmovevel.Position = [241 115 40 22];
            app.Zfarmovevel.Value = 0.5;

            % Create Yfarmovevel
            app.Yfarmovevel = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Yfarmovevel.Tooltip = {''};
            app.Yfarmovevel.Position = [241 145 40 22];
            app.Yfarmovevel.Value = 0.5;

            % Create Xfarmovevel
            app.Xfarmovevel = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xfarmovevel.Tooltip = {''};
            app.Xfarmovevel.Position = [241 175 40 22];
            app.Xfarmovevel.Value = 0.5;

            % Create MinpeakheightVLabel_10
            app.MinpeakheightVLabel_10 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinpeakheightVLabel_10.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_10.WordWrap = 'on';
            app.MinpeakheightVLabel_10.Position = [157 16 89 44];
            app.MinpeakheightVLabel_10.Text = 'MicroDrive movement precision (mm)';

            % Create MovevelocitylimitsLabel
            app.MovevelocitylimitsLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MovevelocitylimitsLabel.Position = [172 236 108 22];
            app.MovevelocitylimitsLabel.Text = 'Move velocity limits';

            % Create MovestepthresholdmmLabel
            app.MovestepthresholdmmLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MovestepthresholdmmLabel.HorizontalAlignment = 'center';
            app.MovestepthresholdmmLabel.WordWrap = 'on';
            app.MovestepthresholdmmLabel.FontWeight = 'bold';
            app.MovestepthresholdmmLabel.Position = [146 194 90 44];
            app.MovestepthresholdmmLabel.Text = 'Move step threshold (mm)';

            % Create VelocitymmsLabel
            app.VelocitymmsLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.VelocitymmsLabel.HorizontalAlignment = 'center';
            app.VelocitymmsLabel.WordWrap = 'on';
            app.VelocitymmsLabel.FontWeight = 'bold';
            app.VelocitymmsLabel.Position = [233 201 62 30];
            app.VelocitymmsLabel.Text = 'Velocity (mm/s)';

            % Create Zmin
            app.Zmin = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zmin.Position = [44 115 40 22];
            app.Zmin.Value = -5;

            % Create Ymin
            app.Ymin = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Ymin.Position = [44 145 40 22];
            app.Ymin.Value = -50;

            % Create Xmin
            app.Xmin = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xmin.Position = [44 175 40 22];
            app.Xmin.Value = -50;

            % Create XLabel_2
            app.XLabel_2 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.XLabel_2.FontWeight = 'bold';
            app.XLabel_2.Position = [26 176 25 22];
            app.XLabel_2.Text = 'X';

            % Create YLabel_2
            app.YLabel_2 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.YLabel_2.FontWeight = 'bold';
            app.YLabel_2.Position = [26 147 25 22];
            app.YLabel_2.Text = 'Y';

            % Create ZLabel_2
            app.ZLabel_2 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.ZLabel_2.FontWeight = 'bold';
            app.ZLabel_2.Position = [27 116 25 22];
            app.ZLabel_2.Text = 'Z';

            % Create Zmax
            app.Zmax = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Zmax.Position = [94 115 40 22];
            app.Zmax.Value = 5;

            % Create Ymax
            app.Ymax = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Ymax.Position = [94 145 40 22];
            app.Ymax.Value = 50;

            % Create Xmax
            app.Xmax = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.Xmax.Position = [94 175 40 22];
            app.Xmax.Value = 50;

            % Create MinLabel
            app.MinLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinLabel.FontWeight = 'bold';
            app.MinLabel.Position = [51 205 26 22];
            app.MinLabel.Text = 'Min';

            % Create MaxLabel
            app.MaxLabel = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MaxLabel.FontWeight = 'bold';
            app.MaxLabel.Position = [102 205 29 22];
            app.MaxLabel.Text = 'Max';

            % Create MoveTimeMult
            app.MoveTimeMult = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.MoveTimeMult.Limits = [0 Inf];
            app.MoveTimeMult.Tooltip = {'Sets the wait time for the MicroDrive stage to move after sending a command. The shorter the dwell time, the longer this needs to be to prevent errors.'};
            app.MoveTimeMult.Position = [112 77 29 22];
            app.MoveTimeMult.Value = 1.2;

            % Create MinpeakheightVLabel_25
            app.MinpeakheightVLabel_25 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinpeakheightVLabel_25.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_25.Position = [468 18 56 22];
            app.MinpeakheightVLabel_25.Text = 'Serial # Z';

            % Create MicroSerialZ
            app.MicroSerialZ = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.MicroSerialZ.Limits = [0 Inf];
            app.MicroSerialZ.Position = [530 17 36 22];
            app.MicroSerialZ.Value = 2851;

            % Create MinpeakheightVLabel_24
            app.MinpeakheightVLabel_24 = uilabel(app.MicroDriveGlobalPositionPanel);
            app.MinpeakheightVLabel_24.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_24.Position = [459 50 65 22];
            app.MinpeakheightVLabel_24.Text = 'Serial # XY';

            % Create MicroSerialXY
            app.MicroSerialXY = uieditfield(app.MicroDriveGlobalPositionPanel, 'numeric');
            app.MicroSerialXY.Limits = [0 Inf];
            app.MicroSerialXY.Position = [530 49 36 22];
            app.MicroSerialXY.Value = 2850;

            % Create MFF101Panel
            app.MFF101Panel = uipanel(app.GeneralsettingsTab);
            app.MFF101Panel.Tooltip = {'For MFF101 functionality to work, Thorlabs Kinesis drivers must be present in folder C:\Program Files\Thorlabs\Kinesis. Use the Thorlabs-provided Kinesis program to obtain serial number and set the transit time (typically 500 ms). Stage movement timeout must be longer than transit time.'};
            app.MFF101Panel.Title = 'MFF101';
            app.MFF101Panel.Position = [1176 585 295 325];

            % Create SerialNumbercolorEditFieldLabel
            app.SerialNumbercolorEditFieldLabel = uilabel(app.MFF101Panel);
            app.SerialNumbercolorEditFieldLabel.HorizontalAlignment = 'right';
            app.SerialNumbercolorEditFieldLabel.Position = [12 202 116 22];
            app.SerialNumbercolorEditFieldLabel.Text = 'SerialNumber (color)';

            % Create RedgreenflipperLabel
            app.RedgreenflipperLabel = uilabel(app.MFF101Panel);
            app.RedgreenflipperLabel.HorizontalAlignment = 'center';
            app.RedgreenflipperLabel.Position = [44 63 70 22];
            app.RedgreenflipperLabel.Text = 'Color switch';

            % Create NDPos
            app.NDPos = uidropdown(app.MFF101Panel);
            app.NDPos.Items = {'1', '2'};
            app.NDPos.Position = [232 28 55 22];
            app.NDPos.Value = '2';

            % Create RedpositionDropDownLabel
            app.RedpositionDropDownLabel = uilabel(app.MFF101Panel);
            app.RedpositionDropDownLabel.HorizontalAlignment = 'right';
            app.RedpositionDropDownLabel.Position = [12 25 72 22];
            app.RedpositionDropDownLabel.Text = 'Red position';

            % Create RedPos
            app.RedPos = uidropdown(app.MFF101Panel);
            app.RedPos.Items = {'1', '2'};
            app.RedPos.Position = [91 25 55 22];
            app.RedPos.Value = '2';

            % Create MFFPositionSwitchColor
            app.MFFPositionSwitchColor = uiswitch(app.MFF101Panel, 'slider');
            app.MFFPositionSwitchColor.Items = {'1', '2'};
            app.MFFPositionSwitchColor.ValueChangedFcn = createCallbackFcn(app, @MFFPositionSwitchColorValueChanged, true);
            app.MFFPositionSwitchColor.Position = [55 91 45 20];
            app.MFFPositionSwitchColor.Value = '1';

            % Create MFFPositionSwitchND
            app.MFFPositionSwitchND = uiswitch(app.MFF101Panel, 'slider');
            app.MFFPositionSwitchND.Items = {'1', '2'};
            app.MFFPositionSwitchND.ValueChangedFcn = createCallbackFcn(app, @MFFPositionSwitchNDValueChanged, true);
            app.MFFPositionSwitchND.Position = [205 91 45 20];
            app.MFFPositionSwitchND.Value = '1';

            % Create PollperiodmsEditFieldLabel
            app.PollperiodmsEditFieldLabel = uilabel(app.MFF101Panel);
            app.PollperiodmsEditFieldLabel.HorizontalAlignment = 'right';
            app.PollperiodmsEditFieldLabel.Position = [53 270 89 22];
            app.PollperiodmsEditFieldLabel.Text = 'Poll period (ms)';

            % Create MovementTimeoutmsLabel
            app.MovementTimeoutmsLabel = uilabel(app.MFF101Panel);
            app.MovementTimeoutmsLabel.HorizontalAlignment = 'right';
            app.MovementTimeoutmsLabel.Position = [8 238 134 22];
            app.MovementTimeoutmsLabel.Text = 'Movement Timeout (ms)';

            % Create RedgreenflipperLabel_2
            app.RedgreenflipperLabel_2 = uilabel(app.MFF101Panel);
            app.RedgreenflipperLabel_2.HorizontalAlignment = 'center';
            app.RedgreenflipperLabel_2.Position = [200 63 59 22];
            app.RedgreenflipperLabel_2.Text = 'ND switch';

            % Create OpenMFFconnButton
            app.OpenMFFconnButton = uibutton(app.MFF101Panel, 'push');
            app.OpenMFFconnButton.ButtonPushedFcn = createCallbackFcn(app, @OpenMFFconnButtonPushed, true);
            app.OpenMFFconnButton.BackgroundColor = [0.4706 0.6706 0.1882];
            app.OpenMFFconnButton.FontWeight = 'bold';
            app.OpenMFFconnButton.Position = [92 129 128 23];
            app.OpenMFFconnButton.Text = 'Open connection(s)';

            % Create SerialNumberNDEditFieldLabel
            app.SerialNumberNDEditFieldLabel = uilabel(app.MFF101Panel);
            app.SerialNumberNDEditFieldLabel.HorizontalAlignment = 'right';
            app.SerialNumberNDEditFieldLabel.Position = [19 169 107 22];
            app.SerialNumberNDEditFieldLabel.Text = 'SerialNumber (ND)';

            % Create EnableNDMFF
            app.EnableNDMFF = uicheckbox(app.MFF101Panel);
            app.EnableNDMFF.Tooltip = {'Do not change this if connection is open.'};
            app.EnableNDMFF.Text = '';
            app.EnableNDMFF.Position = [251 169 15 21];
            app.EnableNDMFF.Value = true;

            % Create EnableColorMFF
            app.EnableColorMFF = uicheckbox(app.MFF101Panel);
            app.EnableColorMFF.Tooltip = {'Do not change this if connection is open.'};
            app.EnableColorMFF.Text = '';
            app.EnableColorMFF.Position = [251 204 15 21];
            app.EnableColorMFF.Value = true;

            % Create EnableLabel
            app.EnableLabel = uilabel(app.MFF101Panel);
            app.EnableLabel.Position = [234 237 49 22];
            app.EnableLabel.Text = 'Enable?';

            % Create SerialNumbercolor
            app.SerialNumbercolor = uieditfield(app.MFF101Panel, 'text');
            app.SerialNumbercolor.Position = [139 202 88 22];
            app.SerialNumbercolor.Value = '37007952';

            % Create SerialNumberND
            app.SerialNumberND = uieditfield(app.MFF101Panel, 'text');
            app.SerialNumberND.Position = [137 169 88 22];
            app.SerialNumberND.Value = '37007998';

            % Create MFFpollperiod
            app.MFFpollperiod = uieditfield(app.MFF101Panel, 'numeric');
            app.MFFpollperiod.Limits = [0 Inf];
            app.MFFpollperiod.Position = [148 270 38 22];
            app.MFFpollperiod.Value = 250;

            % Create MFFtimeout
            app.MFFtimeout = uieditfield(app.MFF101Panel, 'numeric');
            app.MFFtimeout.Limits = [0 Inf];
            app.MFFtimeout.Position = [148 238 38 22];
            app.MFFtimeout.Value = 700;

            % Create NDonpositionLabel
            app.NDonpositionLabel = uilabel(app.MFF101Panel);
            app.NDonpositionLabel.HorizontalAlignment = 'right';
            app.NDonpositionLabel.WordWrap = 'on';
            app.NDonpositionLabel.Position = [152 21 73 34];
            app.NDonpositionLabel.Text = 'ND position';

            % Create DummydevicesPanel
            app.DummydevicesPanel = uipanel(app.GeneralsettingsTab);
            app.DummydevicesPanel.Title = 'Dummy devices';
            app.DummydevicesPanel.Position = [1174 357 214 210];

            % Create IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel
            app.IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel = uilabel(app.DummydevicesPanel);
            app.IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel.WordWrap = 'on';
            app.IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel.Position = [15 116 176 59];
            app.IfdevicesarenotloadedusedummiestostillallowprogramtorunLabel.Text = 'If devices are not loaded, use dummies to still allow program to run. Useful for code development or troubleshooting.';

            % Create UseDAQDummy
            app.UseDAQDummy = uicheckbox(app.DummydevicesPanel);
            app.UseDAQDummy.ValueChangedFcn = createCallbackFcn(app, @UseDAQDummyValueChanged, true);
            app.UseDAQDummy.Text = 'DAQ';
            app.UseDAQDummy.Position = [10 19 153 38];
            app.UseDAQDummy.Value = true;

            % Create UseNanoDummy
            app.UseNanoDummy = uicheckbox(app.DummydevicesPanel);
            app.UseNanoDummy.Text = 'NanoDrive';
            app.UseNanoDummy.Position = [10 49 153 38];
            app.UseNanoDummy.Value = true;

            % Create UseMicroDummy
            app.UseMicroDummy = uicheckbox(app.DummydevicesPanel);
            app.UseMicroDummy.Text = 'MicroDrive';
            app.UseMicroDummy.Position = [10 77 153 38];
            app.UseMicroDummy.Value = true;

            % Create NanoDrivesettingsTab
            app.NanoDrivesettingsTab = uitab(app.TabGroup);
            app.NanoDrivesettingsTab.Title = 'NanoDrive settings';

            % Create MonitorlivestagepositionPanel
            app.MonitorlivestagepositionPanel = uipanel(app.NanoDrivesettingsTab);
            app.MonitorlivestagepositionPanel.Title = 'Monitor live stage position';
            app.MonitorlivestagepositionPanel.Position = [602 212 624 692];

            % Create MonitorNanoStageZPlot
            app.MonitorNanoStageZPlot = uiaxes(app.MonitorlivestagepositionPanel);
            title(app.MonitorNanoStageZPlot, 'Stage Z')
            xlabel(app.MonitorNanoStageZPlot, 'Data point #')
            ylabel(app.MonitorNanoStageZPlot, 'Position (um)')
            zlabel(app.MonitorNanoStageZPlot, 'Z')
            app.MonitorNanoStageZPlot.Position = [256 16 363 200];

            % Create MonitorNanoStageYPlot
            app.MonitorNanoStageYPlot = uiaxes(app.MonitorlivestagepositionPanel);
            title(app.MonitorNanoStageYPlot, 'Stage Y')
            xlabel(app.MonitorNanoStageYPlot, 'Data point #')
            ylabel(app.MonitorNanoStageYPlot, 'Position (um)')
            zlabel(app.MonitorNanoStageYPlot, 'Z')
            app.MonitorNanoStageYPlot.Position = [256 235 363 200];

            % Create MonitorNanoStageXPlot
            app.MonitorNanoStageXPlot = uiaxes(app.MonitorlivestagepositionPanel);
            title(app.MonitorNanoStageXPlot, 'Stage X')
            xlabel(app.MonitorNanoStageXPlot, 'Data point #')
            ylabel(app.MonitorNanoStageXPlot, 'Position (um)')
            zlabel(app.MonitorNanoStageXPlot, 'Z')
            app.MonitorNanoStageXPlot.Position = [254 459 363 200];

            % Create MonitorStagePosStartStop
            app.MonitorStagePosStartStop = uibutton(app.MonitorlivestagepositionPanel, 'push');
            app.MonitorStagePosStartStop.ButtonPushedFcn = createCallbackFcn(app, @MonitorStagePosStartStopButtonPushed, true);
            app.MonitorStagePosStartStop.WordWrap = 'on';
            app.MonitorStagePosStartStop.BackgroundColor = [0.4706 0.6706 0.1882];
            app.MonitorStagePosStartStop.FontSize = 13;
            app.MonitorStagePosStartStop.FontWeight = 'bold';
            app.MonitorStagePosStartStop.Tooltip = {''};
            app.MonitorStagePosStartStop.Position = [19 607 111 46];
            app.MonitorStagePosStartStop.Text = 'Monitor stage positions';

            % Create SamplerateLabel_15
            app.SamplerateLabel_15 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_15.HorizontalAlignment = 'center';
            app.SamplerateLabel_15.WordWrap = 'on';
            app.SamplerateLabel_15.Position = [27 374 90 33];
            app.SamplerateLabel_15.Text = '# of data points to analyze';

            % Create MonitorNanoAnalyzeNumPoints
            app.MonitorNanoAnalyzeNumPoints = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.MonitorNanoAnalyzeNumPoints.Limits = [0 100000];
            app.MonitorNanoAnalyzeNumPoints.HorizontalAlignment = 'center';
            app.MonitorNanoAnalyzeNumPoints.Tooltip = {'Maximum is 10000'};
            app.MonitorNanoAnalyzeNumPoints.Position = [54 343 42 22];
            app.MonitorNanoAnalyzeNumPoints.Value = 100;

            % Create SamplerateLabel_9
            app.SamplerateLabel_9 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_9.HorizontalAlignment = 'center';
            app.SamplerateLabel_9.WordWrap = 'on';
            app.SamplerateLabel_9.Position = [25 520 92 34];
            app.SamplerateLabel_9.Text = '# of data points to display';

            % Create MonitorNanoDispNumPoints
            app.MonitorNanoDispNumPoints = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.MonitorNanoDispNumPoints.Limits = [0 100000];
            app.MonitorNanoDispNumPoints.Tooltip = {'Maximum is 10000'};
            app.MonitorNanoDispNumPoints.Position = [51 490 45 22];
            app.MonitorNanoDispNumPoints.Value = 100;

            % Create MonitorNanoAutoScaleZ
            app.MonitorNanoAutoScaleZ = uicheckbox(app.MonitorlivestagepositionPanel);
            app.MonitorNanoAutoScaleZ.Text = 'Auto scale';
            app.MonitorNanoAutoScaleZ.Position = [161 80 88 38];

            % Create MonitorNanoAutoScaleY
            app.MonitorNanoAutoScaleY = uicheckbox(app.MonitorlivestagepositionPanel);
            app.MonitorNanoAutoScaleY.Text = 'Auto scale';
            app.MonitorNanoAutoScaleY.Position = [161 302 88 38];

            % Create MonitorNanoAutoScaleX
            app.MonitorNanoAutoScaleX = uicheckbox(app.MonitorlivestagepositionPanel);
            app.MonitorNanoAutoScaleX.Text = 'Auto scale';
            app.MonitorNanoAutoScaleX.Position = [157 522 88 38];

            % Create NanoStageZMonPlotMin
            app.NanoStageZMonPlotMin = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageZMonPlotMin.Limits = [0 200];
            app.NanoStageZMonPlotMin.Tooltip = {'Maximum is 10000'};
            app.NanoStageZMonPlotMin.Position = [217 23 32 22];

            % Create NanoStageZMonPlotMax
            app.NanoStageZMonPlotMax = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageZMonPlotMax.Limits = [0 200];
            app.NanoStageZMonPlotMax.Tooltip = {'Maximum is 10000'};
            app.NanoStageZMonPlotMax.Position = [217 54 32 22];

            % Create NanoStageZMonSD
            app.NanoStageZMonSD = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageZMonSD.Limits = [0 100000];
            app.NanoStageZMonSD.ValueDisplayFormat = '%.4f';
            app.NanoStageZMonSD.Tooltip = {'Maximum is 10000'};
            app.NanoStageZMonSD.Position = [189 151 60 22];

            % Create NanoStageZMonMean
            app.NanoStageZMonMean = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageZMonMean.Limits = [0 100000];
            app.NanoStageZMonMean.ValueDisplayFormat = '%.4f';
            app.NanoStageZMonMean.Tooltip = {'Maximum is 10000'};
            app.NanoStageZMonMean.Position = [189 181 60 22];

            % Create NanoStageYMonPlotMin
            app.NanoStageYMonPlotMin = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageYMonPlotMin.Limits = [0 200];
            app.NanoStageYMonPlotMin.Tooltip = {'Maximum is 10000'};
            app.NanoStageYMonPlotMin.Position = [217 245 32 22];

            % Create NanoStageYMonPlotMax
            app.NanoStageYMonPlotMax = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageYMonPlotMax.Limits = [0 200];
            app.NanoStageYMonPlotMax.Tooltip = {'Maximum is 10000'};
            app.NanoStageYMonPlotMax.Position = [217 276 32 22];

            % Create NanoStageYMonSD
            app.NanoStageYMonSD = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageYMonSD.Limits = [0 100000];
            app.NanoStageYMonSD.ValueDisplayFormat = '%.4f';
            app.NanoStageYMonSD.Tooltip = {'Maximum is 10000'};
            app.NanoStageYMonSD.Position = [189 373 60 22];

            % Create NanoStageYMonMean
            app.NanoStageYMonMean = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageYMonMean.Limits = [0 100000];
            app.NanoStageYMonMean.ValueDisplayFormat = '%.4f';
            app.NanoStageYMonMean.Tooltip = {'Maximum is 10000'};
            app.NanoStageYMonMean.Position = [189 403 60 22];

            % Create SamplerateLabel_11
            app.SamplerateLabel_11 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_11.HorizontalAlignment = 'right';
            app.SamplerateLabel_11.Position = [158 471 48 22];
            app.SamplerateLabel_11.Text = 'Plot min';

            % Create NanoStageXMonPlotMin
            app.NanoStageXMonPlotMin = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageXMonPlotMin.Limits = [0 200];
            app.NanoStageXMonPlotMin.Tooltip = {'Maximum is 10000'};
            app.NanoStageXMonPlotMin.Position = [213 468 32 22];

            % Create SamplerateLabel_12
            app.SamplerateLabel_12 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_12.HorizontalAlignment = 'right';
            app.SamplerateLabel_12.Position = [156 502 52 22];
            app.SamplerateLabel_12.Text = 'Plot max';

            % Create NanoStageXMonPlotMax
            app.NanoStageXMonPlotMax = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageXMonPlotMax.Limits = [0 200];
            app.NanoStageXMonPlotMax.Tooltip = {'Maximum is 10000'};
            app.NanoStageXMonPlotMax.Position = [213 499 32 22];

            % Create NanoStageXMonSD
            app.NanoStageXMonSD = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageXMonSD.Limits = [0 100000];
            app.NanoStageXMonSD.ValueDisplayFormat = '%.4f';
            app.NanoStageXMonSD.Tooltip = {'Maximum is 10000'};
            app.NanoStageXMonSD.Position = [185 596 60 22];

            % Create SamplerateLabel_13
            app.SamplerateLabel_13 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_13.HorizontalAlignment = 'right';
            app.SamplerateLabel_13.Position = [141 629 35 22];
            app.SamplerateLabel_13.Text = 'Mean';

            % Create NanoStageXMonMean
            app.NanoStageXMonMean = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.NanoStageXMonMean.Limits = [0 100000];
            app.NanoStageXMonMean.ValueDisplayFormat = '%.4f';
            app.NanoStageXMonMean.Tooltip = {'Maximum is 10000'};
            app.NanoStageXMonMean.Position = [185 626 60 22];

            % Create SamplerateLabel_14
            app.SamplerateLabel_14 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_14.HorizontalAlignment = 'right';
            app.SamplerateLabel_14.Position = [148 598 25 22];
            app.SamplerateLabel_14.Text = 'SD';

            % Create SamplerateLabel_18
            app.SamplerateLabel_18 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_18.HorizontalAlignment = 'right';
            app.SamplerateLabel_18.Position = [30 148 86 22];
            app.SamplerateLabel_18.Text = 'Max buffer size';

            % Create MonitorNanoMaxStreamBufferSize
            app.MonitorNanoMaxStreamBufferSize = uieditfield(app.MonitorlivestagepositionPanel, 'numeric');
            app.MonitorNanoMaxStreamBufferSize.Limits = [0 100000];
            app.MonitorNanoMaxStreamBufferSize.Tooltip = {'Maximum is 10000'};
            app.MonitorNanoMaxStreamBufferSize.Position = [50 126 51 22];
            app.MonitorNanoMaxStreamBufferSize.Value = 1000;

            % Create SamplerateLabel_19
            app.SamplerateLabel_19 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_19.HorizontalAlignment = 'right';
            app.SamplerateLabel_19.Position = [162 248 48 22];
            app.SamplerateLabel_19.Text = 'Plot min';

            % Create SamplerateLabel_20
            app.SamplerateLabel_20 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_20.HorizontalAlignment = 'right';
            app.SamplerateLabel_20.Position = [160 279 52 22];
            app.SamplerateLabel_20.Text = 'Plot max';

            % Create SamplerateLabel_21
            app.SamplerateLabel_21 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_21.HorizontalAlignment = 'right';
            app.SamplerateLabel_21.Position = [145 406 35 22];
            app.SamplerateLabel_21.Text = 'Mean';

            % Create SamplerateLabel_22
            app.SamplerateLabel_22 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_22.HorizontalAlignment = 'right';
            app.SamplerateLabel_22.Position = [152 375 25 22];
            app.SamplerateLabel_22.Text = 'SD';

            % Create SamplerateLabel_23
            app.SamplerateLabel_23 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_23.HorizontalAlignment = 'right';
            app.SamplerateLabel_23.Position = [162 26 48 22];
            app.SamplerateLabel_23.Text = 'Plot min';

            % Create SamplerateLabel_24
            app.SamplerateLabel_24 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_24.HorizontalAlignment = 'right';
            app.SamplerateLabel_24.Position = [160 57 52 22];
            app.SamplerateLabel_24.Text = 'Plot max';

            % Create SamplerateLabel_25
            app.SamplerateLabel_25 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_25.HorizontalAlignment = 'right';
            app.SamplerateLabel_25.Position = [145 184 35 22];
            app.SamplerateLabel_25.Text = 'Mean';

            % Create SamplerateLabel_26
            app.SamplerateLabel_26 = uilabel(app.MonitorlivestagepositionPanel);
            app.SamplerateLabel_26.HorizontalAlignment = 'right';
            app.SamplerateLabel_26.Position = [152 153 25 22];
            app.SamplerateLabel_26.Text = 'SD';

            % Create StagesettlingtimeaftermovementButtonGroup
            app.StagesettlingtimeaftermovementButtonGroup = uibuttongroup(app.NanoDrivesettingsTab);
            app.StagesettlingtimeaftermovementButtonGroup.Title = 'Stage settling time after movement';
            app.StagesettlingtimeaftermovementButtonGroup.Position = [35 339 420 191];

            % Create FixedsettlingtimeButton
            app.FixedsettlingtimeButton = uiradiobutton(app.StagesettlingtimeaftermovementButtonGroup);
            app.FixedsettlingtimeButton.Text = 'Fixed settling time';
            app.FixedsettlingtimeButton.Position = [11 145 119 22];

            % Create PositionerrorthresholdButton
            app.PositionerrorthresholdButton = uiradiobutton(app.StagesettlingtimeaftermovementButtonGroup);
            app.PositionerrorthresholdButton.Text = 'Position error threshold';
            app.PositionerrorthresholdButton.Position = [11 123 146 22];
            app.PositionerrorthresholdButton.Value = true;

            % Create unitlabel_ms
            app.unitlabel_ms = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.unitlabel_ms.WordWrap = 'on';
            app.unitlabel_ms.Position = [209 144 43 22];
            app.unitlabel_ms.Text = 'ms';

            % Create NanoDispPosError
            app.NanoDispPosError = uicheckbox(app.StagesettlingtimeaftermovementButtonGroup);
            app.NanoDispPosError.Text = 'Log movement parameters in message error';
            app.NanoDispPosError.Position = [13 87 306 38];
            app.NanoDispPosError.Value = true;

            % Create NanoMoveTimeout
            app.NanoMoveTimeout = uieditfield(app.StagesettlingtimeaftermovementButtonGroup, 'numeric');
            app.NanoMoveTimeout.Limits = [0 Inf];
            app.NanoMoveTimeout.Position = [372 93 36 22];
            app.NanoMoveTimeout.Value = 500;

            % Create NanoMinSettleTime
            app.NanoMinSettleTime = uieditfield(app.StagesettlingtimeaftermovementButtonGroup, 'numeric');
            app.NanoMinSettleTime.Limits = [0 Inf];
            app.NanoMinSettleTime.Position = [371 120 36 22];

            % Create NanoPosErrThreshold
            app.NanoPosErrThreshold = uieditfield(app.StagesettlingtimeaftermovementButtonGroup, 'numeric');
            app.NanoPosErrThreshold.Position = [161 123 45 22];
            app.NanoPosErrThreshold.Value = 20;

            % Create NanoFixedMoveTime
            app.NanoFixedMoveTime = uieditfield(app.StagesettlingtimeaftermovementButtonGroup, 'numeric');
            app.NanoFixedMoveTime.Position = [161 145 45 22];
            app.NanoFixedMoveTime.Value = 100;

            % Create unitlabel_nm
            app.unitlabel_nm = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.unitlabel_nm.WordWrap = 'on';
            app.unitlabel_nm.Position = [209 122 43 22];
            app.unitlabel_nm.Text = 'nm';

            % Create MinpeakheightVLabel_12
            app.MinpeakheightVLabel_12 = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.MinpeakheightVLabel_12.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_12.Position = [290 92 75 22];
            app.MinpeakheightVLabel_12.Text = 'Timeout (ms)';

            % Create MinpeakheightVLabel_13
            app.MinpeakheightVLabel_13 = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.MinpeakheightVLabel_13.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_13.Position = [254 119 110 22];
            app.MinpeakheightVLabel_13.Text = 'Min settle time (ms)';

            % Create FilepathLabel_3
            app.FilepathLabel_3 = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.FilepathLabel_3.HorizontalAlignment = 'right';
            app.FilepathLabel_3.Position = [16 21 52 22];
            app.FilepathLabel_3.Text = 'File path';

            % Create NanoSaveFilePath
            app.NanoSaveFilePath = uitextarea(app.StagesettlingtimeaftermovementButtonGroup);
            app.NanoSaveFilePath.Position = [86 11 326 36];
            app.NanoSaveFilePath.Value = {'G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Data\Nanostage monitoring\5-2-24 Nanostage movt params.csv'};

            % Create NanoSaveParams
            app.NanoSaveParams = uicheckbox(app.StagesettlingtimeaftermovementButtonGroup);
            app.NanoSaveParams.Text = {'Save position error and settling time'; '(only for second option above)'};
            app.NanoSaveParams.Position = [13 55 233 38];

            % Create InactiveLabelNormal
            app.InactiveLabelNormal = uilabel(app.StagesettlingtimeaftermovementButtonGroup);
            app.InactiveLabelNormal.FontSize = 48;
            app.InactiveLabelNormal.FontWeight = 'bold';
            app.InactiveLabelNormal.Position = [89 66 231 63];
            app.InactiveLabelNormal.Text = 'INACTIVE';

            % Create NanoDriveRealPos
            app.NanoDriveRealPos = uilabel(app.NanoDrivesettingsTab);
            app.NanoDriveRealPos.HorizontalAlignment = 'center';
            app.NanoDriveRealPos.WordWrap = 'on';
            app.NanoDriveRealPos.Position = [-6 847 225 59];
            app.NanoDriveRealPos.Text = {'Actual NanoDrive positions'; '(original axes, in um)'};

            % Create NanoDriveRealZ
            app.NanoDriveRealZ = uieditfield(app.NanoDrivesettingsTab, 'numeric');
            app.NanoDriveRealZ.ValueDisplayFormat = '%.4f';
            app.NanoDriveRealZ.ValueChangedFcn = createCallbackFcn(app, @NanoDriveRealZValueChanged, true);
            app.NanoDriveRealZ.Position = [123 771 65 22];

            % Create NanoDriveRealY
            app.NanoDriveRealY = uieditfield(app.NanoDrivesettingsTab, 'numeric');
            app.NanoDriveRealY.ValueDisplayFormat = '%.4f';
            app.NanoDriveRealY.ValueChangedFcn = createCallbackFcn(app, @NanoDriveRealYValueChanged, true);
            app.NanoDriveRealY.Position = [123 800 65 22];

            % Create NanoDriveRealX
            app.NanoDriveRealX = uieditfield(app.NanoDrivesettingsTab, 'numeric');
            app.NanoDriveRealX.ValueDisplayFormat = '%.4f';
            app.NanoDriveRealX.ValueChangedFcn = createCallbackFcn(app, @NanoDriveRealXValueChanged, true);
            app.NanoDriveRealX.Position = [123 828 65 22];

            % Create XLabel_Ori
            app.XLabel_Ori = uilabel(app.NanoDrivesettingsTab);
            app.XLabel_Ori.FontWeight = 'bold';
            app.XLabel_Ori.Position = [51 829 62 22];
            app.XLabel_Ori.Text = 'Original X';

            % Create YLabel_Ori
            app.YLabel_Ori = uilabel(app.NanoDrivesettingsTab);
            app.YLabel_Ori.FontWeight = 'bold';
            app.YLabel_Ori.Position = [51 800 61 22];
            app.YLabel_Ori.Text = 'Original Y';

            % Create ZLabel_Ori
            app.ZLabel_Ori = uilabel(app.NanoDrivesettingsTab);
            app.ZLabel_Ori.FontWeight = 'bold';
            app.ZLabel_Ori.Position = [51 771 61 22];
            app.ZLabel_Ori.Text = 'Original Z';

            % Create MinpeakheightVLabel_11
            app.MinpeakheightVLabel_11 = uilabel(app.NanoDrivesettingsTab);
            app.MinpeakheightVLabel_11.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_11.WordWrap = 'on';
            app.MinpeakheightVLabel_11.Position = [26 712 89 44];
            app.MinpeakheightVLabel_11.Text = 'NanoDrive minimum precision (um)';

            % Create NanoDrivePrecision
            app.NanoDrivePrecision = uieditfield(app.NanoDrivesettingsTab, 'numeric');
            app.NanoDrivePrecision.Limits = [0 Inf];
            app.NanoDrivePrecision.Position = [125 725 46 22];
            app.NanoDrivePrecision.Value = 0.001;

            % Create NanoPositionError
            app.NanoPositionError = uipanel(app.NanoDrivesettingsTab);
            app.NanoPositionError.Title = 'Commanded vs. actual settled position error';
            app.NanoPositionError.Position = [69 85 539 229];

            % Create MeasPosErrY
            app.MeasPosErrY = uicheckbox(app.NanoPositionError);
            app.MeasPosErrY.Text = 'Measure Y';
            app.MeasPosErrY.Position = [411 69 97 38];

            % Create MeasPosErrXZ
            app.MeasPosErrXZ = uicheckbox(app.NanoPositionError);
            app.MeasPosErrXZ.Text = 'Measure X, Z';
            app.MeasPosErrXZ.Position = [411 97 97 38];
            app.MeasPosErrXZ.Value = true;

            % Create PosErrScanIncr
            app.PosErrScanIncr = uieditfield(app.NanoPositionError, 'numeric');
            app.PosErrScanIncr.HorizontalAlignment = 'center';
            app.PosErrScanIncr.Position = [437 146 50 22];
            app.PosErrScanIncr.Value = 25;

            % Create LoadNanoDriveCorr
            app.LoadNanoDriveCorr = uibutton(app.NanoPositionError, 'push');
            app.LoadNanoDriveCorr.ButtonPushedFcn = createCallbackFcn(app, @LoadNanoDriveCorrButtonPushed, true);
            app.LoadNanoDriveCorr.BackgroundColor = [0 1 1];
            app.LoadNanoDriveCorr.FontSize = 13;
            app.LoadNanoDriveCorr.FontWeight = 'bold';
            app.LoadNanoDriveCorr.Position = [291 14 100 40];
            app.LoadNanoDriveCorr.Text = {'Load coeffs. '; 'from csv file'};

            % Create SavePosErrCoeffs
            app.SavePosErrCoeffs = uibutton(app.NanoPositionError, 'push');
            app.SavePosErrCoeffs.ButtonPushedFcn = createCallbackFcn(app, @SavePosErrCoeffsButtonPushed, true);
            app.SavePosErrCoeffs.BackgroundColor = [0.7216 0.2706 1];
            app.SavePosErrCoeffs.FontSize = 13;
            app.SavePosErrCoeffs.FontWeight = 'bold';
            app.SavePosErrCoeffs.Position = [291 66 100 24];
            app.SavePosErrCoeffs.Text = 'Save coeffs.';

            % Create ElapsedtimesLabel_2
            app.ElapsedtimesLabel_2 = uilabel(app.NanoPositionError);
            app.ElapsedtimesLabel_2.HorizontalAlignment = 'right';
            app.ElapsedtimesLabel_2.Position = [401 171 122 22];
            app.ElapsedtimesLabel_2.Text = 'Scan increments (um)';

            % Create PosErrCoeffUpdate
            app.PosErrCoeffUpdate = uibutton(app.NanoPositionError, 'push');
            app.PosErrCoeffUpdate.ButtonPushedFcn = createCallbackFcn(app, @PosErrCoeffUpdateButtonPushed, true);
            app.PosErrCoeffUpdate.BackgroundColor = [0.302 0.7451 0.9333];
            app.PosErrCoeffUpdate.FontSize = 13;
            app.PosErrCoeffUpdate.FontWeight = 'bold';
            app.PosErrCoeffUpdate.Position = [291 101 100 24];
            app.PosErrCoeffUpdate.Text = 'Update coeffs.';

            % Create MeasPosErrStop
            app.MeasPosErrStop = uibutton(app.NanoPositionError, 'push');
            app.MeasPosErrStop.ButtonPushedFcn = createCallbackFcn(app, @MeasPosErrStopButtonPushed, true);
            app.MeasPosErrStop.BackgroundColor = [0.851 0.3255 0.098];
            app.MeasPosErrStop.FontSize = 13;
            app.MeasPosErrStop.FontWeight = 'bold';
            app.MeasPosErrStop.Position = [291 135 100 24];
            app.MeasPosErrStop.Text = 'Stop';

            % Create MeasPosErrStart
            app.MeasPosErrStart = uibutton(app.NanoPositionError, 'push');
            app.MeasPosErrStart.ButtonPushedFcn = createCallbackFcn(app, @MeasPosErrStartButtonPushed, true);
            app.MeasPosErrStart.BackgroundColor = [0.4706 0.6706 0.1882];
            app.MeasPosErrStart.FontSize = 13;
            app.MeasPosErrStart.FontWeight = 'bold';
            app.MeasPosErrStart.Tooltip = {'During the measurement, each axis will be scanned in steps from 0 to 200 um. Each step will be performed with a fixed settling time of 500 ms. (Previous settings will be restored by default at the end of the measurement.) Monitor progress of the measurement on the main tab.'};
            app.MeasPosErrStart.Position = [291 169 100 24];
            app.MeasPosErrStart.Text = 'Measure';

            % Create NanoDriveCorrLabel
            app.NanoDriveCorrLabel = uilabel(app.NanoPositionError);
            app.NanoDriveCorrLabel.HorizontalAlignment = 'center';
            app.NanoDriveCorrLabel.WordWrap = 'on';
            app.NanoDriveCorrLabel.Position = [80 114 201 59];
            app.NanoDriveCorrLabel.Text = 'Nanodrive absolute position error correction efficients (original axes)';

            % Create NanoDriveCorrZZ
            app.NanoDriveCorrZZ = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrZZ.Position = [234 44 45 22];
            app.NanoDriveCorrZZ.Value = -0.16;

            % Create NanoDriveCorrYZ
            app.NanoDriveCorrYZ = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrYZ.Position = [234 73 45 22];

            % Create NanoDriveCorrXZ
            app.NanoDriveCorrXZ = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrXZ.Position = [234 101 45 22];
            app.NanoDriveCorrXZ.Value = 0.28;

            % Create NanoDriveCorrZY
            app.NanoDriveCorrZY = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrZY.Position = [182 44 45 22];

            % Create NanoDriveCorrYY
            app.NanoDriveCorrYY = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrYY.Position = [182 73 45 22];
            app.NanoDriveCorrYY.Value = 0.38;

            % Create NanoDriveCorrXY
            app.NanoDriveCorrXY = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrXY.Position = [182 101 45 22];

            % Create NanoDriveCorrZX
            app.NanoDriveCorrZX = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrZX.Position = [130 44 45 22];
            app.NanoDriveCorrZX.Value = 0.15;

            % Create NanoDriveCorrYX
            app.NanoDriveCorrYX = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrYX.Position = [130 73 45 22];

            % Create NanoDriveCorrXX
            app.NanoDriveCorrXX = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrXX.Position = [130 101 45 22];
            app.NanoDriveCorrXX.Value = -0.29;

            % Create NanoDriveCorrZint
            app.NanoDriveCorrZint = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrZint.Position = [81 44 45 22];
            app.NanoDriveCorrZint.Value = 4.2;

            % Create NanoDriveCorrYint
            app.NanoDriveCorrYint = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrYint.Position = [81 73 45 22];
            app.NanoDriveCorrYint.Value = -12.5;

            % Create NanoDriveCorrXint
            app.NanoDriveCorrXint = uieditfield(app.NanoPositionError, 'numeric');
            app.NanoDriveCorrXint.Position = [81 101 45 22];
            app.NanoDriveCorrXint.Value = 12.93;

            % Create AbsPosCorrSwitch
            app.AbsPosCorrSwitch = uicheckbox(app.NanoPositionError);
            app.AbsPosCorrSwitch.Text = 'Use absolute position correction';
            app.AbsPosCorrSwitch.Position = [15 170 199 38];
            app.AbsPosCorrSwitch.Value = true;

            % Create XLabel_Ori_2
            app.XLabel_Ori_2 = uilabel(app.NanoPositionError);
            app.XLabel_Ori_2.FontWeight = 'bold';
            app.XLabel_Ori_2.Position = [13 102 62 22];
            app.XLabel_Ori_2.Text = 'Original X';

            % Create YLabel_Ori_2
            app.YLabel_Ori_2 = uilabel(app.NanoPositionError);
            app.YLabel_Ori_2.FontWeight = 'bold';
            app.YLabel_Ori_2.Position = [13 73 61 22];
            app.YLabel_Ori_2.Text = 'Original Y';

            % Create ZLabel_Ori_2
            app.ZLabel_Ori_2 = uilabel(app.NanoPositionError);
            app.ZLabel_Ori_2.FontWeight = 'bold';
            app.ZLabel_Ori_2.Position = [13 44 61 22];
            app.ZLabel_Ori_2.Text = 'Original Z';

            % Create NanoSkipifSame
            app.NanoSkipifSame = uicheckbox(app.NanoDrivesettingsTab);
            app.NanoSkipifSame.Tooltip = {'Beware that when scanning X or Z over large distances, this can result in <60 nm inaccuracies due to the correlation of the two axes.'};
            app.NanoSkipifSame.Text = 'When scanning, do not move if previous position is the same (can save ~15% time)';
            app.NanoSkipifSame.WordWrap = 'on';
            app.NanoSkipifSame.Position = [208 848 187 44];
            app.NanoSkipifSame.Value = true;

            % Create zigzagscanNano
            app.zigzagscanNano = uicheckbox(app.NanoDrivesettingsTab);
            app.zigzagscanNano.Tooltip = {'Saves about 15% in scanning time.'};
            app.zigzagscanNano.Text = 'Zigzag scanning';
            app.zigzagscanNano.WordWrap = 'on';
            app.zigzagscanNano.Position = [208 758 107 38];
            app.zigzagscanNano.Value = true;

            % Create NanoUpdateEachStep
            app.NanoUpdateEachStep = uicheckbox(app.NanoDrivesettingsTab);
            app.NanoUpdateEachStep.Tooltip = {'Beware that when scanning X or Z over large distances, this can result in <60 nm inaccuracies due to the correlation of the two axes.'};
            app.NanoUpdateEachStep.Text = 'Suppress updating front panel with each movement step (can save ~15-20% time)';
            app.NanoUpdateEachStep.WordWrap = 'on';
            app.NanoUpdateEachStep.Position = [208 797 187 44];
            app.NanoUpdateEachStep.Value = true;

            % Create NanoDrivePosMonitor
            app.NanoDrivePosMonitor = uicheckbox(app.NanoDrivesettingsTab);
            app.NanoDrivePosMonitor.ValueChangedFcn = createCallbackFcn(app, @NanoDrivePosMonitorValueChanged, true);
            app.NanoDrivePosMonitor.Tooltip = {'Saves about 15% in scanning time.'};
            app.NanoDrivePosMonitor.Text = {'Continuously'; 'monitor Nanodrive pos.'};
            app.NanoDrivePosMonitor.WordWrap = 'on';
            app.NanoDrivePosMonitor.Position = [210 708 107 44];
            app.NanoDrivePosMonitor.Value = true;

            % Create MinpeakheightVLabel_18
            app.MinpeakheightVLabel_18 = uilabel(app.NanoDrivesettingsTab);
            app.MinpeakheightVLabel_18.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_18.WordWrap = 'on';
            app.MinpeakheightVLabel_18.Position = [279 720 89 22];
            app.MinpeakheightVLabel_18.Text = 'Period (s)';

            % Create NanoDrivePosMonitorPeriod
            app.NanoDrivePosMonitorPeriod = uieditfield(app.NanoDrivesettingsTab, 'numeric');
            app.NanoDrivePosMonitorPeriod.Limits = [0 Inf];
            app.NanoDrivePosMonitorPeriod.Position = [373 720 27 22];
            app.NanoDrivePosMonitorPeriod.Value = 5;

            % Create DbatchscanningmodeSwitchLabel
            app.DbatchscanningmodeSwitchLabel = uilabel(app.NanoDrivesettingsTab);
            app.DbatchscanningmodeSwitchLabel.HorizontalAlignment = 'center';
            app.DbatchscanningmodeSwitchLabel.FontSize = 18;
            app.DbatchscanningmodeSwitchLabel.FontWeight = 'bold';
            app.DbatchscanningmodeSwitchLabel.Position = [401 624 137 44];
            app.DbatchscanningmodeSwitchLabel.Text = {'2D batch '; 'scanning mode'};

            % Create BatchModeSwitch
            app.BatchModeSwitch = uiswitch(app.NanoDrivesettingsTab, 'slider');
            app.BatchModeSwitch.ValueChangedFcn = createCallbackFcn(app, @BatchModeSwitchValueChanged, true);
            app.BatchModeSwitch.FontSize = 18;
            app.BatchModeSwitch.FontWeight = 'bold';
            app.BatchModeSwitch.Position = [444 592 45 20];

            % Create BatchModeSettingsPanel
            app.BatchModeSettingsPanel = uipanel(app.NanoDrivesettingsTab);
            app.BatchModeSettingsPanel.Title = '2D batch scanning mode settings';
            app.BatchModeSettingsPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.BatchModeSettingsPanel.Position = [36 557 331 137];

            % Create MinpeakheightVLabel_19
            app.MinpeakheightVLabel_19 = uilabel(app.BatchModeSettingsPanel);
            app.MinpeakheightVLabel_19.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_19.WordWrap = 'on';
            app.MinpeakheightVLabel_19.Position = [177 41 89 30];
            app.MinpeakheightVLabel_19.Text = {'Max # of coords'; 'per batch'};

            % Create WaitFinishRead
            app.WaitFinishRead = uieditfield(app.BatchModeSettingsPanel, 'numeric');
            app.WaitFinishRead.Limits = [0 Inf];
            app.WaitFinishRead.Position = [122 14 35 22];
            app.WaitFinishRead.Value = 100;

            % Create WfmWriteRate
            app.WfmWriteRate = uieditfield(app.BatchModeSettingsPanel, 'numeric');
            app.WfmWriteRate.Limits = [0 Inf];
            app.WfmWriteRate.Position = [123 50 34 22];
            app.WfmWriteRate.Value = 4;

            % Create MinpeakheightVLabel_21
            app.MinpeakheightVLabel_21 = uilabel(app.BatchModeSettingsPanel);
            app.MinpeakheightVLabel_21.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_21.WordWrap = 'on';
            app.MinpeakheightVLabel_21.Position = [12 46 101 30];
            app.MinpeakheightVLabel_21.Text = 'Waveform write rate (ms)';

            % Create NanoDriveClk
            app.NanoDriveClk = uieditfield(app.BatchModeSettingsPanel, 'numeric');
            app.NanoDriveClk.Limits = [0 Inf];
            app.NanoDriveClk.Position = [288 78 26 22];
            app.NanoDriveClk.Value = 3;

            % Create MinpeakheightVLabel_20
            app.MinpeakheightVLabel_20 = uilabel(app.BatchModeSettingsPanel);
            app.MinpeakheightVLabel_20.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_20.WordWrap = 'on';
            app.MinpeakheightVLabel_20.Position = [168 74 101 30];
            app.MinpeakheightVLabel_20.Text = 'Nanostage clock #';

            % Create MaxCoordsPerBatch
            app.MaxCoordsPerBatch = uieditfield(app.BatchModeSettingsPanel, 'numeric');
            app.MaxCoordsPerBatch.Limits = [0 Inf];
            app.MaxCoordsPerBatch.Position = [274 45 37 22];
            app.MaxCoordsPerBatch.Value = 51;

            % Create MinpeakheightVLabel_22
            app.MinpeakheightVLabel_22 = uilabel(app.BatchModeSettingsPanel);
            app.MinpeakheightVLabel_22.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_22.WordWrap = 'on';
            app.MinpeakheightVLabel_22.Position = [11 10 101 30];
            app.MinpeakheightVLabel_22.Text = {'Wait to finish '; 'read (ms)'};

            % Create NanoFixedMoveTimeBatch
            app.NanoFixedMoveTimeBatch = uieditfield(app.BatchModeSettingsPanel, 'numeric');
            app.NanoFixedMoveTimeBatch.Limits = [0 Inf];
            app.NanoFixedMoveTimeBatch.Position = [123 82 34 22];
            app.NanoFixedMoveTimeBatch.Value = 56;

            % Create MinpeakheightVLabel_23
            app.MinpeakheightVLabel_23 = uilabel(app.BatchModeSettingsPanel);
            app.MinpeakheightVLabel_23.HorizontalAlignment = 'right';
            app.MinpeakheightVLabel_23.WordWrap = 'on';
            app.MinpeakheightVLabel_23.Position = [14 76 101 30];
            app.MinpeakheightVLabel_23.Text = 'Stage settling time (ms)';

            % Create InactiveLabelBatch
            app.InactiveLabelBatch = uilabel(app.BatchModeSettingsPanel);
            app.InactiveLabelBatch.FontSize = 48;
            app.InactiveLabelBatch.FontWeight = 'bold';
            app.InactiveLabelBatch.Position = [51 31 231 63];
            app.InactiveLabelBatch.Text = 'INACTIVE';

            % Create HelpTab
            app.HelpTab = uitab(app.TabGroup);
            app.HelpTab.Title = 'Help';

            % Create MicroDrivesettingshelpLabel
            app.MicroDrivesettingshelpLabel = uilabel(app.HelpTab);
            app.MicroDrivesettingshelpLabel.FontWeight = 'bold';
            app.MicroDrivesettingshelpLabel.Position = [24 881 144 22];
            app.MicroDrivesettingshelpLabel.Text = 'MicroDrive settings help';

            % Create explainglobalpos
            app.explainglobalpos = uilabel(app.HelpTab);
            app.explainglobalpos.WordWrap = 'on';
            app.explainglobalpos.Position = [26 707 326 162];
            app.explainglobalpos.Text = {'When one the Global Position coordinates is changed directly, the MicroDrive moves by the difference from the old value in response. When one of the NanoDrive coordinates are changed, the Global Position also updates accordingly. '; ''; 'Note that the MicroDrive does not have an encoder so it does not have an "absolute position" other than that recorded in the software. It also has a very large range (25 mm) compared to the NanoDrive (200 um). Thus, it makes sense to not have to track the absolute position of the MicroDrive independently of the Global Position.'};

            % Create MicroDrivePrecisionLabel_2
            app.MicroDrivePrecisionLabel_2 = uilabel(app.HelpTab);
            app.MicroDrivePrecisionLabel_2.WordWrap = 'on';
            app.MicroDrivePrecisionLabel_2.Position = [26 524 385 74];
            app.MicroDrivePrecisionLabel_2.Text = 'For MFF101 functionality to work, Thorlabs Kinesis drivers must be present in folder C:\Program Files\Thorlabs\Kinesis. Use the Thorlabs-provided Kinesis program to obtain serial number and set the transit time (typically 500 ms). Stage movement timeout must be longer than transit time.';

            % Create MFF101helpLabel
            app.MFF101helpLabel = uilabel(app.HelpTab);
            app.MFF101helpLabel.FontWeight = 'bold';
            app.MFF101helpLabel.Position = [26 597 78 22];
            app.MFF101helpLabel.Text = 'MFF101 help';

            % Create Superresolutionconfocalcontrolprogramv51Label
            app.Superresolutionconfocalcontrolprogramv51Label = uilabel(app.UIFigure);
            app.Superresolutionconfocalcontrolprogramv51Label.FontSize = 24;
            app.Superresolutionconfocalcontrolprogramv51Label.Position = [20 981 519 32];
            app.Superresolutionconfocalcontrolprogramv51Label.Text = 'Super-resolution confocal control program v.5.1';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SRconfocal_v5_1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end