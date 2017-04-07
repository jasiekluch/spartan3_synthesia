<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_50MHz" />
        <signal name="Reset" />
        <signal name="XLXN_32(3:0)" />
        <signal name="XLXN_33(3:0)" />
        <signal name="Ts_out" />
        <signal name="Wave_out(11:0)" />
        <signal name="LED(3:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_65(7:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_123" />
        <signal name="XLXN_127" />
        <port polarity="Input" name="CLK_50MHz" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="Ts_out" />
        <port polarity="Output" name="Wave_out(11:0)" />
        <port polarity="Output" name="LED(3:0)" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="ReadKbdKeys">
            <timestamp>2017-4-7T7:10:39</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
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
        <blockdef name="Sawtooth_Generator">
            <timestamp>2017-4-7T7:12:41</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Ts_out" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_32(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_33(3:0)" name="Addr(3:0)" />
            <blockpin signalname="Wave_out(11:0)" name="DATA(11:0)" />
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
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin signalname="CLK_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_33(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_32(3:0)" name="O" />
        </block>
        <block symbolname="ReadKbdKeys" name="XLXI_9">
            <blockpin signalname="CLK_50MHz" name="Clk" />
            <blockpin signalname="XLXN_127" name="DO_Rdy" />
            <blockpin signalname="XLXN_123" name="F" />
            <blockpin signalname="XLXN_65(7:0)" name="DO(7:0)" />
            <blockpin signalname="LED(3:0)" name="Y(3:0)" />
            <blockpin name="Reset" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_10">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_123" name="F0" />
            <blockpin signalname="XLXN_127" name="DO_Rdy" />
            <blockpin signalname="XLXN_65(7:0)" name="DO(7:0)" />
            <blockpin signalname="CLK_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="Sawtooth_Generator" name="XLXI_31">
            <blockpin signalname="CLK_50MHz" name="Clk_in" />
            <blockpin signalname="XLXN_123" name="Reset" />
            <blockpin signalname="LED(3:0)" name="Note_in(3:0)" />
            <blockpin signalname="Ts_out" name="Ts_out" />
            <blockpin signalname="Wave_out(11:0)" name="Wave_out(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2384" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_32(3:0)">
            <wire x2="2304" y1="512" y2="512" x1="2288" />
            <wire x2="2288" y1="512" y2="800" x1="2288" />
            <wire x2="2384" y1="800" y2="800" x1="2288" />
        </branch>
        <branch name="XLXN_33(3:0)">
            <wire x2="2032" y1="512" y2="864" x1="2032" />
            <wire x2="2384" y1="864" y2="864" x1="2032" />
            <wire x2="2064" y1="512" y2="512" x1="2032" />
        </branch>
        <instance x="2208" y="544" name="XLXI_3" orien="R180">
        </instance>
        <instance x="2448" y="544" name="XLXI_4" orien="R180">
        </instance>
        <branch name="Ts_out">
            <wire x2="2048" y1="1056" y2="1056" x1="1984" />
            <wire x2="2192" y1="1056" y2="1056" x1="2048" />
            <wire x2="2048" y1="1056" y2="1120" x1="2048" />
            <wire x2="2192" y1="736" y2="1056" x1="2192" />
            <wire x2="2384" y1="736" y2="736" x1="2192" />
        </branch>
        <branch name="Wave_out(11:0)">
            <wire x2="2288" y1="928" y2="928" x1="1984" />
            <wire x2="2384" y1="928" y2="928" x1="2288" />
            <wire x2="2288" y1="928" y2="1056" x1="2288" />
        </branch>
        <branch name="LED(3:0)">
            <wire x2="1200" y1="880" y2="880" x1="1184" />
            <wire x2="1200" y1="880" y2="1120" x1="1200" />
            <wire x2="1360" y1="1120" y2="1120" x1="1200" />
            <wire x2="1600" y1="1120" y2="1120" x1="1360" />
            <wire x2="1360" y1="560" y2="1120" x1="1360" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2912" y1="736" y2="736" x1="2832" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2912" y1="800" y2="800" x1="2832" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2912" y1="864" y2="864" x1="2832" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2912" y1="928" y2="928" x1="2832" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2912" y1="992" y2="992" x1="2832" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2912" y1="1056" y2="1056" x1="2832" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2912" y1="1120" y2="1120" x1="2832" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2912" y1="1184" y2="1184" x1="2832" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2912" y1="1248" y2="1248" x1="2832" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2912" y1="1312" y2="1312" x1="2832" />
        </branch>
        <instance x="800" y="1104" name="XLXI_9" orien="R0">
        </instance>
        <instance x="272" y="1152" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_65(7:0)">
            <wire x2="672" y1="928" y2="928" x1="656" />
            <wire x2="672" y1="928" y2="1072" x1="672" />
            <wire x2="800" y1="1072" y2="1072" x1="672" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="272" y1="928" y2="928" x1="240" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="272" y1="992" y2="992" x1="240" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1440" name="CLK_50MHz" orien="R180" />
        <iomarker fontsize="28" x="2048" y="1120" name="Ts_out" orien="R90" />
        <iomarker fontsize="28" x="2288" y="1056" name="Wave_out(11:0)" orien="R90" />
        <iomarker fontsize="28" x="2912" y="736" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2912" y="800" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2912" y="864" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2912" y="928" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2912" y="992" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1056" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1120" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1184" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1248" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1312" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="240" y="928" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="240" y="992" name="PS2_Data" orien="R180" />
        <branch name="XLXN_123">
            <wire x2="704" y1="1056" y2="1056" x1="656" />
            <wire x2="704" y1="1056" y2="1136" x1="704" />
            <wire x2="800" y1="1136" y2="1136" x1="704" />
            <wire x2="704" y1="1136" y2="1264" x1="704" />
            <wire x2="1248" y1="1264" y2="1264" x1="704" />
            <wire x2="1600" y1="992" y2="992" x1="1248" />
            <wire x2="1248" y1="992" y2="1264" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1360" y="560" name="LED(3:0)" orien="R270" />
        <iomarker fontsize="28" x="752" y="1616" name="Reset" orien="R180" />
        <branch name="CLK_50MHz">
            <wire x2="272" y1="1056" y2="1056" x1="208" />
            <wire x2="208" y1="1056" y2="1120" x1="208" />
            <wire x2="272" y1="1120" y2="1120" x1="208" />
            <wire x2="208" y1="1120" y2="1232" x1="208" />
            <wire x2="1360" y1="1232" y2="1232" x1="208" />
            <wire x2="1360" y1="1232" y2="1440" x1="1360" />
            <wire x2="1472" y1="1440" y2="1440" x1="1360" />
            <wire x2="2336" y1="1440" y2="1440" x1="1472" />
            <wire x2="2384" y1="1440" y2="1440" x1="2336" />
            <wire x2="800" y1="880" y2="880" x1="720" />
            <wire x2="720" y1="880" y2="1184" x1="720" />
            <wire x2="1312" y1="1184" y2="1184" x1="720" />
            <wire x2="1312" y1="1184" y2="1440" x1="1312" />
            <wire x2="1360" y1="1440" y2="1440" x1="1312" />
            <wire x2="1312" y1="1440" y2="1440" x1="1200" />
            <wire x2="1600" y1="928" y2="928" x1="1472" />
            <wire x2="1472" y1="928" y2="1440" x1="1472" />
            <wire x2="2384" y1="1376" y2="1376" x1="2336" />
            <wire x2="2336" y1="1376" y2="1440" x1="2336" />
        </branch>
        <branch name="Reset">
            <wire x2="2368" y1="1616" y2="1616" x1="752" />
            <wire x2="2384" y1="1312" y2="1312" x1="2368" />
            <wire x2="2368" y1="1312" y2="1616" x1="2368" />
        </branch>
        <instance x="1600" y="1024" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_127">
            <wire x2="688" y1="1120" y2="1120" x1="656" />
            <wire x2="800" y1="944" y2="944" x1="688" />
            <wire x2="688" y1="944" y2="1120" x1="688" />
        </branch>
    </sheet>
</drawing>