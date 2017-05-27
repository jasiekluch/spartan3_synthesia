<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW" />
        <signal name="XLXN_263(9:0)" />
        <signal name="XLXN_264(9:0)" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_182(3:0)" />
        <signal name="XLXN_181(3:0)" />
        <signal name="FPGA_INIT_B" />
        <signal name="SF_CE0" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="SPI_SS_B" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_SCK" />
        <signal name="SPI_MISO" />
        <signal name="SPI_MOSI" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="XLXN_286(11:0)" />
        <signal name="XLXN_287" />
        <signal name="XLXN_288(7:0)" />
        <signal name="XLXN_289" />
        <signal name="XLXN_290" />
        <signal name="XLXN_291(2:0)" />
        <signal name="XLXN_292(9:0)" />
        <signal name="XLXN_293(9:0)" />
        <signal name="XLXN_294(9:0)" />
        <signal name="XLXN_295(9:0)" />
        <signal name="XLXN_296(9:0)" />
        <signal name="XLXN_297(9:0)" />
        <signal name="XLXN_298(3:0)" />
        <signal name="XLXN_299(3:0)" />
        <signal name="XLXN_300" />
        <signal name="XLXN_301(3:0)" />
        <signal name="XLXN_302(3:0)" />
        <signal name="XLXN_303" />
        <signal name="XLXN_304" />
        <signal name="XLXN_305" />
        <signal name="XLXN_306" />
        <signal name="XLXN_307" />
        <signal name="XLXN_308" />
        <signal name="XLXN_309" />
        <signal name="XLXN_310" />
        <signal name="XLXN_311" />
        <signal name="XLXN_312" />
        <signal name="Reset" />
        <signal name="Clk_50MHz" />
        <port polarity="Input" name="SW" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="DACWrite">
            <timestamp>2017-5-27T10:4:41</timestamp>
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2017-3-24T9:21:9</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="SawtoothGenerator">
            <timestamp>2017-5-3T11:43:33</timestamp>
            <rect width="64" x="0" y="-156" height="24" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="ReadKbdKeys">
            <timestamp>2017-5-27T9:8:35</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-208" height="392" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <rect width="64" x="320" y="52" height="24" />
            <line x2="384" y1="64" y2="64" x1="320" />
        </blockdef>
        <blockdef name="VGA_Driver">
            <timestamp>2017-5-22T6:9:34</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Synthesia">
            <timestamp>2017-5-27T9:14:29</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Switch">
            <timestamp>2017-5-27T9:17:6</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="256" x="64" y="-196" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="VGA_Driver" name="XLXI_44">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_291(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="H_sync" />
            <blockpin signalname="VGA_VS" name="V_sync" />
            <blockpin signalname="XLXN_293(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_292(9:0)" name="Y(9:0)" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_182(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_181(3:0)" name="O" />
        </block>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="XLXN_182(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_286(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_287" name="Start" />
            <blockpin signalname="XLXN_181(3:0)" name="Addr(3:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_10">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_289" name="F0" />
            <blockpin signalname="XLXN_290" name="DO_Rdy" />
            <blockpin signalname="XLXN_288(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="ReadKbdKeys" name="XLXI_56">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_288(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_289" name="F0" />
            <blockpin signalname="XLXN_290" name="DO_Rdy" />
            <blockpin signalname="XLXN_302(3:0)" name="Note(3:0)" />
        </block>
        <block symbolname="SawtoothGenerator" name="XLXI_58">
            <blockpin signalname="XLXN_301(3:0)" name="Note(3:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_286(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_287" name="T_sync" />
        </block>
        <block symbolname="Switch" name="XLXI_59">
            <blockpin signalname="SW" name="KeyEN" />
            <blockpin signalname="XLXN_300" name="Pause" />
            <blockpin signalname="XLXN_301(3:0)" name="Note(3:0)" />
            <blockpin signalname="XLXN_302(3:0)" name="KeyNote(3:0)" />
            <blockpin signalname="XLXN_298(3:0)" name="RomNote(3:0)" />
        </block>
        <block symbolname="Synthesia" name="XLXI_60">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Reset" />
            <blockpin signalname="XLXN_300" name="Pause" />
            <blockpin signalname="XLXN_293(9:0)" name="x(9:0)" />
            <blockpin signalname="XLXN_292(9:0)" name="y(9:0)" />
            <blockpin signalname="XLXN_298(3:0)" name="NoteOut(3:0)" />
            <blockpin signalname="XLXN_291(2:0)" name="RGB(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SW">
            <wire x2="1760" y1="1552" y2="1552" x1="224" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3216" y1="2192" y2="2192" x1="3072" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3216" y1="2128" y2="2128" x1="3072" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3216" y1="2064" y2="2064" x1="3072" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3216" y1="2000" y2="2000" x1="3072" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3216" y1="1936" y2="1936" x1="3072" />
        </branch>
        <instance x="2688" y="2352" name="XLXI_44" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3216" y="2192" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2128" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2064" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3216" y="2000" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3216" y="1936" name="VGA_R" orien="R0" />
        <branch name="XLXN_182(3:0)">
            <wire x2="2640" y1="304" y2="304" x1="2592" />
        </branch>
        <branch name="XLXN_181(3:0)">
            <wire x2="2640" y1="416" y2="416" x1="2592" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="3168" y1="880" y2="880" x1="3088" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="3168" y1="816" y2="816" x1="3088" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="3168" y1="752" y2="752" x1="3088" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="3168" y1="688" y2="688" x1="3088" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="3168" y1="624" y2="624" x1="3088" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="3168" y1="560" y2="560" x1="3088" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="3168" y1="496" y2="496" x1="3088" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="3168" y1="432" y2="432" x1="3088" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="3168" y1="368" y2="368" x1="3088" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="3168" y1="304" y2="304" x1="3088" />
        </branch>
        <instance x="2448" y="272" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2448" y="384" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2640" y="848" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3168" y="880" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="3168" y="816" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="3168" y="752" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="3168" y="688" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="3168" y="624" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="3168" y="560" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="3168" y="496" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="3168" y="432" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="3168" y="368" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="3168" y="304" name="SPI_MOSI" orien="R0" />
        <branch name="PS2_Data">
            <wire x2="384" y1="688" y2="688" x1="368" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="384" y1="624" y2="624" x1="352" />
        </branch>
        <iomarker fontsize="28" x="368" y="688" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="352" y="624" name="PS2_Clk" orien="R180" />
        <instance x="384" y="848" name="XLXI_10" orien="R0">
        </instance>
        <instance x="848" y="800" name="XLXI_56" orien="R0">
        </instance>
        <branch name="XLXN_286(11:0)">
            <wire x2="2640" y1="608" y2="608" x1="2592" />
        </branch>
        <branch name="XLXN_287">
            <wire x2="2640" y1="672" y2="672" x1="2592" />
        </branch>
        <branch name="XLXN_288(7:0)">
            <wire x2="848" y1="624" y2="624" x1="768" />
        </branch>
        <branch name="XLXN_289">
            <wire x2="848" y1="752" y2="752" x1="768" />
        </branch>
        <branch name="XLXN_290">
            <wire x2="848" y1="816" y2="816" x1="768" />
        </branch>
        <branch name="XLXN_291(2:0)">
            <wire x2="2688" y1="2320" y2="2320" x1="1696" />
        </branch>
        <branch name="XLXN_292(9:0)">
            <wire x2="1312" y1="2320" y2="2320" x1="1248" />
            <wire x2="1248" y1="2320" y2="2416" x1="1248" />
            <wire x2="3088" y1="2416" y2="2416" x1="1248" />
            <wire x2="3088" y1="2320" y2="2320" x1="3072" />
            <wire x2="3088" y1="2320" y2="2416" x1="3088" />
        </branch>
        <branch name="XLXN_293(9:0)">
            <wire x2="1216" y1="2256" y2="2448" x1="1216" />
            <wire x2="3120" y1="2448" y2="2448" x1="1216" />
            <wire x2="1312" y1="2256" y2="2256" x1="1216" />
            <wire x2="3120" y1="2256" y2="2256" x1="3072" />
            <wire x2="3120" y1="2256" y2="2448" x1="3120" />
        </branch>
        <instance x="1312" y="2352" name="XLXI_60" orien="R0">
        </instance>
        <branch name="XLXN_298(3:0)">
            <wire x2="1712" y1="2096" y2="2096" x1="1696" />
            <wire x2="1760" y1="1616" y2="1616" x1="1712" />
            <wire x2="1712" y1="1616" y2="2096" x1="1712" />
        </branch>
        <instance x="1760" y="1648" name="XLXI_59" orien="R0">
        </instance>
        <instance x="2208" y="736" name="XLXI_58" orien="R0">
        </instance>
        <branch name="XLXN_300">
            <wire x2="1168" y1="2192" y2="2496" x1="1168" />
            <wire x2="2224" y1="2496" y2="2496" x1="1168" />
            <wire x2="1312" y1="2192" y2="2192" x1="1168" />
            <wire x2="2224" y1="1616" y2="1616" x1="2144" />
            <wire x2="2224" y1="1616" y2="2496" x1="2224" />
        </branch>
        <branch name="XLXN_301(3:0)">
            <wire x2="2176" y1="1488" y2="1488" x1="2144" />
            <wire x2="2176" y1="592" y2="1488" x1="2176" />
            <wire x2="2208" y1="592" y2="592" x1="2176" />
        </branch>
        <branch name="XLXN_302(3:0)">
            <wire x2="1712" y1="864" y2="864" x1="1232" />
            <wire x2="1712" y1="864" y2="1488" x1="1712" />
            <wire x2="1760" y1="1488" y2="1488" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="224" y="1552" name="SW" orien="R180" />
        <branch name="Reset">
            <wire x2="784" y1="1360" y2="1360" x1="224" />
            <wire x2="2096" y1="1360" y2="1360" x1="784" />
            <wire x2="2512" y1="1360" y2="1360" x1="2096" />
            <wire x2="848" y1="896" y2="896" x1="784" />
            <wire x2="784" y1="896" y2="1360" x1="784" />
            <wire x2="2208" y1="656" y2="656" x1="2096" />
            <wire x2="2096" y1="656" y2="1360" x1="2096" />
            <wire x2="2640" y1="880" y2="880" x1="2512" />
            <wire x2="2512" y1="880" y2="1360" x1="2512" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="304" y1="1248" y2="1248" x1="224" />
            <wire x2="832" y1="1248" y2="1248" x1="304" />
            <wire x2="1168" y1="1248" y2="1248" x1="832" />
            <wire x2="1232" y1="1248" y2="1248" x1="1168" />
            <wire x2="2208" y1="1248" y2="1248" x1="1232" />
            <wire x2="2544" y1="1248" y2="1248" x1="2208" />
            <wire x2="2544" y1="1248" y2="1936" x1="2544" />
            <wire x2="2688" y1="1936" y2="1936" x1="2544" />
            <wire x2="1232" y1="1248" y2="2064" x1="1232" />
            <wire x2="1312" y1="2064" y2="2064" x1="1232" />
            <wire x2="1168" y1="1248" y2="2128" x1="1168" />
            <wire x2="1312" y1="2128" y2="2128" x1="1168" />
            <wire x2="384" y1="752" y2="752" x1="304" />
            <wire x2="304" y1="752" y2="816" x1="304" />
            <wire x2="384" y1="816" y2="816" x1="304" />
            <wire x2="304" y1="816" y2="1248" x1="304" />
            <wire x2="848" y1="960" y2="960" x1="832" />
            <wire x2="832" y1="960" y2="1248" x1="832" />
            <wire x2="2208" y1="704" y2="1248" x1="2208" />
            <wire x2="2640" y1="944" y2="944" x1="2544" />
            <wire x2="2544" y1="944" y2="1008" x1="2544" />
            <wire x2="2640" y1="1008" y2="1008" x1="2544" />
            <wire x2="2544" y1="1008" y2="1248" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="224" y="1248" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="224" y="1360" name="Reset" orien="R180" />
    </sheet>
</drawing>