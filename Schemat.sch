<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_260" />
        <signal name="XLXN_259(9:0)" />
        <signal name="XLXN_257(3:0)" />
        <signal name="SW" />
        <signal name="XLXN_251(3:0)" />
        <signal name="XLXN_250(3:0)" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_241(9:0)" />
        <signal name="XLXN_239(2:0)" />
        <signal name="Reset" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_236" />
        <signal name="XLXN_235" />
        <signal name="XLXN_234(7:0)" />
        <signal name="XLXN_233(11:0)" />
        <signal name="XLXN_232" />
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
        <port polarity="Input" name="SW" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Clk_50MHz" />
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
            <timestamp>2017-5-22T10:29:41</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="Switch">
            <timestamp>2017-5-22T10:39:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Switch" name="XLXI_50">
            <blockpin signalname="SW" name="KeyEN" />
            <blockpin signalname="XLXN_250(3:0)" name="RomNote(3:0)" />
            <blockpin signalname="XLXN_251(3:0)" name="KeyNote(3:0)" />
            <blockpin signalname="XLXN_260" name="Pause" />
            <blockpin signalname="XLXN_257(3:0)" name="Note(3:0)" />
        </block>
        <block symbolname="Synthesia" name="XLXI_45">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_259(9:0)" name="x(9:0)" />
            <blockpin signalname="XLXN_241(9:0)" name="y(9:0)" />
            <blockpin signalname="XLXN_239(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_250(3:0)" name="NoteOut(3:0)" />
            <blockpin signalname="XLXN_260" name="Pause" />
        </block>
        <block symbolname="VGA_Driver" name="XLXI_44">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_239(2:0)" name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="H_sync" />
            <blockpin signalname="VGA_VS" name="V_sync" />
            <blockpin signalname="XLXN_259(9:0)" name="X(9:0)" />
            <blockpin signalname="XLXN_241(9:0)" name="Y(9:0)" />
        </block>
        <block symbolname="ReadKbdKeys" name="XLXI_41">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_234(7:0)" name="DO(7:0)" />
            <blockpin signalname="XLXN_235" name="F0" />
            <blockpin signalname="XLXN_236" name="DO_Rdy" />
            <blockpin signalname="XLXN_251(3:0)" name="Note(3:0)" />
        </block>
        <block symbolname="SawtoothGenerator" name="XLXI_42">
            <blockpin signalname="XLXN_257(3:0)" name="Note(3:0)" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_233(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_232" name="T_sync" />
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
            <blockpin signalname="XLXN_181(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_233(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_232" name="Start" />
        </block>
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
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="224" y="1488" name="SW" orien="R180" />
        <instance x="336" y="1648" name="XLXI_50" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2816" y="1648" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1584" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1520" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1456" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1392" name="VGA_R" orien="R0" />
        <instance x="864" y="1616" name="XLXI_45" orien="R0">
        </instance>
        <instance x="2112" y="1808" name="XLXI_44" orien="R0">
        </instance>
        <iomarker fontsize="28" x="256" y="720" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="272" y="976" name="Clk_50MHz" orien="R180" />
        <instance x="848" y="368" name="XLXI_41" orien="R0">
        </instance>
        <instance x="1472" y="576" name="XLXI_42" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2592" y="720" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="2592" y="656" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2592" y="592" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2592" y="528" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2592" y="464" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2592" y="400" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2592" y="336" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2592" y="272" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2592" y="208" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2592" y="144" name="SPI_MOSI" orien="R0" />
        <instance x="1872" y="112" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1872" y="224" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2064" y="688" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="368" y="256" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="352" y="192" name="PS2_Clk" orien="R180" />
        <instance x="400" y="416" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_260">
            <wire x2="784" y1="1488" y2="1488" x1="720" />
            <wire x2="784" y1="1488" y2="1648" x1="784" />
            <wire x2="864" y1="1648" y2="1648" x1="784" />
        </branch>
        <branch name="XLXN_259(9:0)">
            <wire x2="864" y1="1520" y2="1520" x1="848" />
            <wire x2="848" y1="1520" y2="1888" x1="848" />
            <wire x2="2544" y1="1888" y2="1888" x1="848" />
            <wire x2="2544" y1="1712" y2="1712" x1="2496" />
            <wire x2="2544" y1="1712" y2="1888" x1="2544" />
        </branch>
        <branch name="XLXN_257(3:0)">
            <wire x2="800" y1="1616" y2="1616" x1="720" />
            <wire x2="800" y1="1616" y2="1744" x1="800" />
            <wire x2="1344" y1="1744" y2="1744" x1="800" />
            <wire x2="1344" y1="432" y2="1744" x1="1344" />
            <wire x2="1472" y1="432" y2="432" x1="1344" />
        </branch>
        <branch name="SW">
            <wire x2="336" y1="1488" y2="1488" x1="224" />
        </branch>
        <branch name="XLXN_251(3:0)">
            <wire x2="272" y1="1312" y2="1616" x1="272" />
            <wire x2="336" y1="1616" y2="1616" x1="272" />
            <wire x2="1248" y1="1312" y2="1312" x1="272" />
            <wire x2="1248" y1="432" y2="432" x1="1232" />
            <wire x2="1248" y1="432" y2="1312" x1="1248" />
        </branch>
        <branch name="XLXN_250(3:0)">
            <wire x2="336" y1="1552" y2="1552" x1="256" />
            <wire x2="256" y1="1552" y2="1760" x1="256" />
            <wire x2="1264" y1="1760" y2="1760" x1="256" />
            <wire x2="1264" y1="1584" y2="1584" x1="1248" />
            <wire x2="1264" y1="1584" y2="1760" x1="1264" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2816" y1="1648" y2="1648" x1="2496" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2816" y1="1584" y2="1584" x1="2496" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2816" y1="1520" y2="1520" x1="2496" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2816" y1="1456" y2="1456" x1="2496" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2816" y1="1392" y2="1392" x1="2496" />
        </branch>
        <branch name="XLXN_241(9:0)">
            <wire x2="800" y1="1280" y2="1584" x1="800" />
            <wire x2="864" y1="1584" y2="1584" x1="800" />
            <wire x2="2560" y1="1280" y2="1280" x1="800" />
            <wire x2="2560" y1="1280" y2="1776" x1="2560" />
            <wire x2="2560" y1="1776" y2="1776" x1="2496" />
        </branch>
        <branch name="XLXN_239(2:0)">
            <wire x2="1680" y1="1392" y2="1392" x1="1248" />
            <wire x2="1680" y1="1392" y2="1776" x1="1680" />
            <wire x2="2112" y1="1776" y2="1776" x1="1680" />
        </branch>
        <branch name="Reset">
            <wire x2="736" y1="720" y2="720" x1="256" />
            <wire x2="880" y1="720" y2="720" x1="736" />
            <wire x2="1376" y1="720" y2="720" x1="880" />
            <wire x2="2064" y1="720" y2="720" x1="1376" />
            <wire x2="880" y1="720" y2="1296" x1="880" />
            <wire x2="848" y1="464" y2="464" x1="736" />
            <wire x2="736" y1="464" y2="720" x1="736" />
            <wire x2="816" y1="1296" y2="1456" x1="816" />
            <wire x2="864" y1="1456" y2="1456" x1="816" />
            <wire x2="880" y1="1296" y2="1296" x1="816" />
            <wire x2="1376" y1="496" y2="720" x1="1376" />
            <wire x2="1472" y1="496" y2="496" x1="1376" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="304" y1="976" y2="976" x1="272" />
            <wire x2="720" y1="976" y2="976" x1="304" />
            <wire x2="816" y1="976" y2="976" x1="720" />
            <wire x2="1456" y1="976" y2="976" x1="816" />
            <wire x2="2000" y1="976" y2="976" x1="1456" />
            <wire x2="2000" y1="976" y2="1392" x1="2000" />
            <wire x2="2112" y1="1392" y2="1392" x1="2000" />
            <wire x2="720" y1="976" y2="1392" x1="720" />
            <wire x2="864" y1="1392" y2="1392" x1="720" />
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
        <branch name="XLXN_236">
            <wire x2="848" y1="384" y2="384" x1="784" />
        </branch>
        <branch name="XLXN_235">
            <wire x2="848" y1="320" y2="320" x1="784" />
        </branch>
        <branch name="XLXN_234(7:0)">
            <wire x2="848" y1="192" y2="192" x1="784" />
        </branch>
        <branch name="XLXN_233(11:0)">
            <wire x2="2064" y1="448" y2="448" x1="1856" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="2064" y1="512" y2="512" x1="1856" />
        </branch>
        <branch name="XLXN_182(3:0)">
            <wire x2="2064" y1="144" y2="144" x1="2016" />
        </branch>
        <branch name="XLXN_181(3:0)">
            <wire x2="2064" y1="256" y2="256" x1="2016" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2592" y1="720" y2="720" x1="2512" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2592" y1="656" y2="656" x1="2512" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2592" y1="592" y2="592" x1="2512" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2592" y1="528" y2="528" x1="2512" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2592" y1="464" y2="464" x1="2512" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2592" y1="400" y2="400" x1="2512" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2592" y1="336" y2="336" x1="2512" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2592" y1="272" y2="272" x1="2512" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2592" y1="208" y2="208" x1="2512" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2592" y1="144" y2="144" x1="2512" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="400" y1="256" y2="256" x1="368" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="400" y1="192" y2="192" x1="352" />
        </branch>
    </sheet>
</drawing>