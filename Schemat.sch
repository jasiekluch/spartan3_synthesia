<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
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
        <signal name="XLXN_181(3:0)" />
        <signal name="XLXN_182(3:0)" />
        <signal name="LED(3:0)" />
        <signal name="XLXN_232" />
        <signal name="XLXN_233(11:0)" />
        <signal name="XLXN_234(7:0)" />
        <signal name="XLXN_235" />
        <signal name="XLXN_236" />
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
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
        <port polarity="Output" name="LED(3:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
        <blockdef name="DACWrite">
            <timestamp>2017-5-3T11:39:27</timestamp>
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
            <timestamp>2017-5-3T11:41:5</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-256" height="512" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <rect width="64" x="320" y="52" height="24" />
            <line x2="384" y1="64" y2="64" x1="320" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_10">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_235" name="F0" />
            <blockpin signalname="XLXN_236" name="DO_Rdy" />
            <blockpin signalname="XLXN_234(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="ReadKbdKeys" name="XLXI_41">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_234(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_235" name="F0" />
            <blockpin signalname="XLXN_236" name="DO_Rdy" />
            <blockpin signalname="LED(3:0)" name="Note(3:0)" />
        </block>
        <block symbolname="SawtoothGenerator" name="XLXI_42">
            <blockpin signalname="LED(3:0)" name="Note(3:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_233(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_232" name="T_sync" />
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
            <blockpin signalname="XLXN_181(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_233(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_232" name="Start" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_181(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_182(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PS2_Clk">
            <wire x2="400" y1="192" y2="192" x1="352" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="400" y1="256" y2="256" x1="368" />
        </branch>
        <instance x="400" y="416" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="192" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="368" y="256" name="PS2_Data" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="2592" y1="144" y2="144" x1="2512" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2592" y1="208" y2="208" x1="2512" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2592" y1="272" y2="272" x1="2512" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2592" y1="336" y2="336" x1="2512" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2592" y1="400" y2="400" x1="2512" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2592" y1="464" y2="464" x1="2512" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2592" y1="528" y2="528" x1="2512" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2592" y1="592" y2="592" x1="2512" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2592" y1="656" y2="656" x1="2512" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2592" y1="720" y2="720" x1="2512" />
        </branch>
        <instance x="2064" y="688" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1872" y="224" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_181(3:0)">
            <wire x2="2064" y1="256" y2="256" x1="2016" />
        </branch>
        <instance x="1872" y="112" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_182(3:0)">
            <wire x2="2064" y1="144" y2="144" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2592" y="144" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2592" y="208" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2592" y="272" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2592" y="336" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2592" y="400" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2592" y="464" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2592" y="528" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2592" y="592" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2592" y="656" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2592" y="720" name="FPGA_INIT_B" orien="R0" />
        <instance x="1472" y="576" name="XLXI_42" orien="R0">
        </instance>
        <branch name="LED(3:0)">
            <wire x2="1344" y1="432" y2="432" x1="1232" />
            <wire x2="1472" y1="432" y2="432" x1="1344" />
            <wire x2="1344" y1="224" y2="432" x1="1344" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="2064" y1="512" y2="512" x1="1856" />
        </branch>
        <branch name="XLXN_233(11:0)">
            <wire x2="2064" y1="448" y2="448" x1="1856" />
        </branch>
        <branch name="XLXN_234(7:0)">
            <wire x2="848" y1="192" y2="192" x1="784" />
        </branch>
        <branch name="XLXN_235">
            <wire x2="848" y1="320" y2="320" x1="784" />
        </branch>
        <branch name="XLXN_236">
            <wire x2="848" y1="384" y2="384" x1="784" />
        </branch>
        <instance x="848" y="368" name="XLXI_41" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="304" y1="976" y2="976" x1="272" />
            <wire x2="816" y1="976" y2="976" x1="304" />
            <wire x2="1456" y1="976" y2="976" x1="816" />
            <wire x2="2000" y1="976" y2="976" x1="1456" />
            <wire x2="400" y1="320" y2="320" x1="304" />
            <wire x2="304" y1="320" y2="384" x1="304" />
            <wire x2="304" y1="384" y2="976" x1="304" />
            <wire x2="400" y1="384" y2="384" x1="304" />
            <wire x2="848" y1="528" y2="528" x1="816" />
            <wire x2="816" y1="528" y2="976" x1="816" />
            <wire x2="1456" y1="544" y2="976" x1="1456" />
            <wire x2="1472" y1="544" y2="544" x1="1456" />
            <wire x2="2064" y1="784" y2="784" x1="2000" />
            <wire x2="2000" y1="784" y2="848" x1="2000" />
            <wire x2="2000" y1="848" y2="976" x1="2000" />
            <wire x2="2064" y1="848" y2="848" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="272" y="976" name="Clk_50MHz" orien="R180" />
        <branch name="Reset">
            <wire x2="736" y1="720" y2="720" x1="256" />
            <wire x2="1376" y1="720" y2="720" x1="736" />
            <wire x2="2064" y1="720" y2="720" x1="1376" />
            <wire x2="848" y1="464" y2="464" x1="736" />
            <wire x2="736" y1="464" y2="720" x1="736" />
            <wire x2="1376" y1="496" y2="720" x1="1376" />
            <wire x2="1472" y1="496" y2="496" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="256" y="720" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="1344" y="224" name="LED(3:0)" orien="R270" />
    </sheet>
</drawing>