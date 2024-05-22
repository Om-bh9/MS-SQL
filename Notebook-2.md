{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "CREATE VIEW ALL_DATA\r\n",
                "AS \r\n",
                "SELECT dbo.D1.District, dbo.D1.[State], dbo.D1.Growth, dbo.D1.Literacy, dbo.D1.Sex_Ratio, dbo.Data2.Population, dbo.Data2.Area_km2 \r\n",
                "FROM dbo.D1 LEFT JOIN dbo.Data2 ON dbo.D1.District = dbo.Data2.District;\r\n",
                "GO\r\n",
                "\r\n",
                "select * FROM ALL_DATA;"
            ],
            "metadata": {
                "azdata_cell_guid": "ad458876-ec99-48d8-91ea-004ec8b1707d",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "error",
                    "ename": "",
                    "evalue": "Msg 2714, Level 16, State 3, Procedure ALL_DATA, Line 1\r\nThere is already an object named 'ALL_DATA' in the database.",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(652 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.020"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "execution_count": 4,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "District"
                                    },
                                    {
                                        "name": "State"
                                    },
                                    {
                                        "name": "Growth"
                                    },
                                    {
                                        "name": "Literacy"
                                    },
                                    {
                                        "name": "Sex_Ratio"
                                    },
                                    {
                                        "name": "Population"
                                    },
                                    {
                                        "name": "Area_km2"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "District": "Adilabad",
                                    "State": "Andhra Pradesh",
                                    "Growth": "10.18%",
                                    "Literacy": "61.0099983215332",
                                    "Sex_Ratio": "1001",
                                    "Population": "2741239",
                                    "Area_km2": "16105"
                                },
                                {
                                    "District": "Agra",
                                    "State": "Uttar Pradesh",
                                    "Growth": "22.05%",
                                    "Literacy": "71.58000183105469",
                                    "Sex_Ratio": "868",
                                    "Population": "4418797",
                                    "Area_km2": "4041"
                                },
                                {
                                    "District": "Ahmadabad",
                                    "State": "Gujarat",
                                    "Growth": "24.03%",
                                    "Literacy": "85.30999755859375",
                                    "Sex_Ratio": "904",
                                    "Population": "7214225",
                                    "Area_km2": "8107"
                                },
                                {
                                    "District": "Ahmadnagar",
                                    "State": "Maharashtra",
                                    "Growth": "12.44%",
                                    "Literacy": "79.05000305175781",
                                    "Sex_Ratio": "939",
                                    "Population": "4543159",
                                    "Area_km2": "17048"
                                },
                                {
                                    "District": "Aizawl",
                                    "State": "Mizoram",
                                    "Growth": "22.92%",
                                    "Literacy": "97.88999938964844",
                                    "Sex_Ratio": "1009",
                                    "Population": "400309",
                                    "Area_km2": "3576"
                                },
                                {
                                    "District": "Ajmer",
                                    "State": "Rajasthan",
                                    "Growth": "18.40%",
                                    "Literacy": "69.33000183105469",
                                    "Sex_Ratio": "951",
                                    "Population": "2583052",
                                    "Area_km2": "8481"
                                },
                                {
                                    "District": "Akola",
                                    "State": "Maharashtra",
                                    "Growth": "11.27%",
                                    "Literacy": "88.05000305175781",
                                    "Sex_Ratio": "946",
                                    "Population": "1813906",
                                    "Area_km2": "5676"
                                },
                                {
                                    "District": "Alappuzha",
                                    "State": "Kerala",
                                    "Growth": "0.88%",
                                    "Literacy": "95.72000122070312",
                                    "Sex_Ratio": "1100",
                                    "Population": "2127789",
                                    "Area_km2": "1415"
                                },
                                {
                                    "District": "Aligarh",
                                    "State": "Uttar Pradesh",
                                    "Growth": "22.78%",
                                    "Literacy": "67.5199966430664",
                                    "Sex_Ratio": "882",
                                    "Population": "3673889",
                                    "Area_km2": "3650"
                                },
                                {
                                    "District": "Alirajpur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.45%",
                                    "Literacy": "36.099998474121094",
                                    "Sex_Ratio": "1011",
                                    "Population": "728999",
                                    "Area_km2": "3182"
                                },
                                {
                                    "District": "Allahabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "20.63%",
                                    "Literacy": "72.31999969482422",
                                    "Sex_Ratio": "901",
                                    "Population": "5954391",
                                    "Area_km2": "5482"
                                },
                                {
                                    "District": "Almora",
                                    "State": "Uttarakhand",
                                    "Growth": "-1.28%",
                                    "Literacy": "80.47000122070312",
                                    "Sex_Ratio": "1139",
                                    "Population": "622506",
                                    "Area_km2": "3144"
                                },
                                {
                                    "District": "Alwar",
                                    "State": "Rajasthan",
                                    "Growth": "22.78%",
                                    "Literacy": "70.72000122070312",
                                    "Sex_Ratio": "895",
                                    "Population": "3674179",
                                    "Area_km2": "8380"
                                },
                                {
                                    "District": "Ambala",
                                    "State": "Haryana",
                                    "Growth": "11.23%",
                                    "Literacy": "81.75",
                                    "Sex_Ratio": "885",
                                    "Population": "1128350",
                                    "Area_km2": "1574"
                                },
                                {
                                    "District": "Ambedkar Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.30%",
                                    "Literacy": "72.2300033569336",
                                    "Sex_Ratio": "978",
                                    "Population": "2397888",
                                    "Area_km2": "2350"
                                },
                                {
                                    "District": "Amravati",
                                    "State": "Maharashtra",
                                    "Growth": "10.79%",
                                    "Literacy": "87.37999725341797",
                                    "Sex_Ratio": "951",
                                    "Population": "2888445",
                                    "Area_km2": "12210"
                                },
                                {
                                    "District": "Amreli",
                                    "State": "Gujarat",
                                    "Growth": "8.63%",
                                    "Literacy": "74.25",
                                    "Sex_Ratio": "964",
                                    "Population": "1514190",
                                    "Area_km2": "7397"
                                },
                                {
                                    "District": "Amritsar",
                                    "State": "Punjab",
                                    "Growth": "15.47%",
                                    "Literacy": "76.2699966430664",
                                    "Sex_Ratio": "889",
                                    "Population": "2490656",
                                    "Area_km2": "2683"
                                },
                                {
                                    "District": "Anand",
                                    "State": "Gujarat",
                                    "Growth": "12.70%",
                                    "Literacy": "84.37000274658203",
                                    "Sex_Ratio": "925",
                                    "Population": "2092745",
                                    "Area_km2": "3204"
                                },
                                {
                                    "District": "Anantapur",
                                    "State": "Andhra Pradesh",
                                    "Growth": "12.10%",
                                    "Literacy": "63.56999969482422",
                                    "Sex_Ratio": "977",
                                    "Population": "4081148",
                                    "Area_km2": "19130"
                                },
                                {
                                    "District": "Anantnag",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "38.58%",
                                    "Literacy": "62.689998626708984",
                                    "Sex_Ratio": "927",
                                    "Population": "1078692",
                                    "Area_km2": "3574"
                                },
                                {
                                    "District": "Anjaw",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "14.19%",
                                    "Literacy": "56.459999084472656",
                                    "Sex_Ratio": "839",
                                    "Population": "21167",
                                    "Area_km2": "6190"
                                },
                                {
                                    "District": "Anugul",
                                    "State": "Orissa",
                                    "Growth": "11.74%",
                                    "Literacy": "77.52999877929688",
                                    "Sex_Ratio": "943",
                                    "Population": "1273821",
                                    "Area_km2": "6375"
                                },
                                {
                                    "District": "Anuppur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "12.30%",
                                    "Literacy": "67.87999725341797",
                                    "Sex_Ratio": "976",
                                    "Population": "749237",
                                    "Area_km2": "3747"
                                },
                                {
                                    "District": "Araria",
                                    "State": "Bihar",
                                    "Growth": "30.25%",
                                    "Literacy": "53.529998779296875",
                                    "Sex_Ratio": "921",
                                    "Population": "2811569",
                                    "Area_km2": "2830"
                                },
                                {
                                    "District": "Ariyalur",
                                    "State": "Tamil Nadu",
                                    "Growth": "8.54%",
                                    "Literacy": "71.33999633789062",
                                    "Sex_Ratio": "1015",
                                    "Population": "754894",
                                    "Area_km2": "1940"
                                },
                                {
                                    "District": "Arwal",
                                    "State": "Bihar",
                                    "Growth": "18.89%",
                                    "Literacy": "67.43000030517578",
                                    "Sex_Ratio": "928",
                                    "Population": "700843",
                                    "Area_km2": "638"
                                },
                                {
                                    "District": "Ashoknagar",
                                    "State": "Madhya Pradesh",
                                    "Growth": "22.66%",
                                    "Literacy": "66.41999816894531",
                                    "Sex_Ratio": "904",
                                    "Population": "845071",
                                    "Area_km2": "4674"
                                },
                                {
                                    "District": "Auraiya",
                                    "State": "Uttar Pradesh",
                                    "Growth": "16.91%",
                                    "Literacy": "78.94999694824219",
                                    "Sex_Ratio": "864",
                                    "Population": "1379545",
                                    "Area_km2": "2016"
                                },
                                {
                                    "District": "Aurangabad",
                                    "State": "Bihar",
                                    "Growth": "26.18%",
                                    "Literacy": "70.31999969482422",
                                    "Sex_Ratio": "926",
                                    "Population": "2540073",
                                    "Area_km2": "3305"
                                },
                                {
                                    "District": "Aurangabad",
                                    "State": "Bihar",
                                    "Growth": "26.18%",
                                    "Literacy": "70.31999969482422",
                                    "Sex_Ratio": "926",
                                    "Population": "3701282",
                                    "Area_km2": "10107"
                                },
                                {
                                    "District": "Aurangabad",
                                    "State": "Maharashtra",
                                    "Growth": "27.76%",
                                    "Literacy": "79.0199966430664",
                                    "Sex_Ratio": "923",
                                    "Population": "2540073",
                                    "Area_km2": "3305"
                                },
                                {
                                    "District": "Aurangabad",
                                    "State": "Maharashtra",
                                    "Growth": "27.76%",
                                    "Literacy": "79.0199966430664",
                                    "Sex_Ratio": "923",
                                    "Population": "3701282",
                                    "Area_km2": "10107"
                                },
                                {
                                    "District": "Azamgarh",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.11%",
                                    "Literacy": "70.93000030517578",
                                    "Sex_Ratio": "1019",
                                    "Population": "4613913",
                                    "Area_km2": "4054"
                                },
                                {
                                    "District": "Badgam",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "24.14%",
                                    "Literacy": "56.08000183105469",
                                    "Sex_Ratio": "894",
                                    "Population": "753745",
                                    "Area_km2": "1361"
                                },
                                {
                                    "District": "Bagalkot",
                                    "State": "Karnataka",
                                    "Growth": "14.40%",
                                    "Literacy": "68.81999969482422",
                                    "Sex_Ratio": "989",
                                    "Population": "1889752",
                                    "Area_km2": "6552"
                                },
                                {
                                    "District": "Bageshwar",
                                    "State": "Uttarakhand",
                                    "Growth": "4.18%",
                                    "Literacy": "80.01000213623047",
                                    "Sex_Ratio": "1090",
                                    "Population": "259898",
                                    "Area_km2": "2241"
                                },
                                {
                                    "District": "Baghpat",
                                    "State": "Uttar Pradesh",
                                    "Growth": "11.95%",
                                    "Literacy": "72.01000213623047",
                                    "Sex_Ratio": "861",
                                    "Population": "1303048",
                                    "Area_km2": "1321"
                                },
                                {
                                    "District": "Bahraich",
                                    "State": "Uttar Pradesh",
                                    "Growth": "46.48%",
                                    "Literacy": "49.36000061035156",
                                    "Sex_Ratio": "892",
                                    "Population": "3487731",
                                    "Area_km2": "5237"
                                },
                                {
                                    "District": "Baksa",
                                    "State": "Assam",
                                    "Growth": "10.74%",
                                    "Literacy": "69.25",
                                    "Sex_Ratio": "974",
                                    "Population": "950075",
                                    "Area_km2": "2457"
                                },
                                {
                                    "District": "Balaghat",
                                    "State": "Madhya Pradesh",
                                    "Growth": "13.60%",
                                    "Literacy": "77.08999633789062",
                                    "Sex_Ratio": "1021",
                                    "Population": "1701698",
                                    "Area_km2": "9229"
                                },
                                {
                                    "District": "Balangir",
                                    "State": "Orissa",
                                    "Growth": "23.32%",
                                    "Literacy": "64.72000122070312",
                                    "Sex_Ratio": "987",
                                    "Population": "1648997",
                                    "Area_km2": "6575"
                                },
                                {
                                    "District": "Baleshwar",
                                    "State": "Orissa",
                                    "Growth": "14.62%",
                                    "Literacy": "79.79000091552734",
                                    "Sex_Ratio": "957",
                                    "Population": "2320529",
                                    "Area_km2": "3806"
                                },
                                {
                                    "District": "Ballia",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.31%",
                                    "Literacy": "70.94000244140625",
                                    "Sex_Ratio": "937",
                                    "Population": "3239774",
                                    "Area_km2": "2981"
                                },
                                {
                                    "District": "Balrampur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "27.72%",
                                    "Literacy": "49.5099983215332",
                                    "Sex_Ratio": "928",
                                    "Population": "2148665",
                                    "Area_km2": "3349"
                                },
                                {
                                    "District": "Banaskantha",
                                    "State": "Gujarat",
                                    "Growth": "24.61%",
                                    "Literacy": "65.31999969482422",
                                    "Sex_Ratio": "938",
                                    "Population": "3120506",
                                    "Area_km2": "10743"
                                },
                                {
                                    "District": "Banda",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.05%",
                                    "Literacy": "66.66999816894531",
                                    "Sex_Ratio": "863",
                                    "Population": "1799410",
                                    "Area_km2": "4408"
                                },
                                {
                                    "District": "Bandipora",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "28.65%",
                                    "Literacy": "56.279998779296875",
                                    "Sex_Ratio": "889",
                                    "Population": "392232",
                                    "Area_km2": "345"
                                },
                                {
                                    "District": "Bangalore",
                                    "State": "Karnataka",
                                    "Growth": "47.18%",
                                    "Literacy": "87.66999816894531",
                                    "Sex_Ratio": "916",
                                    "Population": "9621551",
                                    "Area_km2": "2196"
                                },
                                {
                                    "District": "Bangalore Rural",
                                    "State": "Karnataka",
                                    "Growth": "16.45%",
                                    "Literacy": "77.93000030517578",
                                    "Sex_Ratio": "946",
                                    "Population": "990923",
                                    "Area_km2": "2298"
                                },
                                {
                                    "District": "Banka",
                                    "State": "Bihar",
                                    "Growth": "26.48%",
                                    "Literacy": "58.16999816894531",
                                    "Sex_Ratio": "907",
                                    "Population": "2034763",
                                    "Area_km2": "3020"
                                },
                                {
                                    "District": "Bankura",
                                    "State": "West Bengal",
                                    "Growth": "12.65%",
                                    "Literacy": "70.26000213623047",
                                    "Sex_Ratio": "957",
                                    "Population": "3596674",
                                    "Area_km2": "6882"
                                },
                                {
                                    "District": "Banswara",
                                    "State": "Rajasthan",
                                    "Growth": "26.53%",
                                    "Literacy": "56.33000183105469",
                                    "Sex_Ratio": "980",
                                    "Population": "1797485",
                                    "Area_km2": "4522"
                                },
                                {
                                    "District": "Barabanki",
                                    "State": "Uttar Pradesh",
                                    "Growth": "21.96%",
                                    "Literacy": "61.75",
                                    "Sex_Ratio": "910",
                                    "Population": "3260699",
                                    "Area_km2": "4402"
                                },
                                {
                                    "District": "Baramula",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "19.45%",
                                    "Literacy": "64.62999725341797",
                                    "Sex_Ratio": "885",
                                    "Population": "1008039",
                                    "Area_km2": "4243"
                                },
                                {
                                    "District": "Baran",
                                    "State": "Rajasthan",
                                    "Growth": "19.68%",
                                    "Literacy": "66.66000366210938",
                                    "Sex_Ratio": "929",
                                    "Population": "1222755",
                                    "Area_km2": "6992"
                                },
                                {
                                    "District": "Barddhaman",
                                    "State": "West Bengal",
                                    "Growth": "11.92%",
                                    "Literacy": "76.20999908447266",
                                    "Sex_Ratio": "945",
                                    "Population": "7717563",
                                    "Area_km2": "7024"
                                },
                                {
                                    "District": "Bareilly",
                                    "State": "Uttar Pradesh",
                                    "Growth": "22.93%",
                                    "Literacy": "58.4900016784668",
                                    "Sex_Ratio": "887",
                                    "Population": "4448359",
                                    "Area_km2": "4120"
                                },
                                {
                                    "District": "Bargarh",
                                    "State": "Orissa",
                                    "Growth": "10.02%",
                                    "Literacy": "74.62000274658203",
                                    "Sex_Ratio": "977",
                                    "Population": "1481255",
                                    "Area_km2": "5837"
                                },
                                {
                                    "District": "Barmer",
                                    "State": "Rajasthan",
                                    "Growth": "32.52%",
                                    "Literacy": "56.529998779296875",
                                    "Sex_Ratio": "902",
                                    "Population": "2603751",
                                    "Area_km2": "28387"
                                },
                                {
                                    "District": "Barnala",
                                    "State": "Punjab",
                                    "Growth": "13.02%",
                                    "Literacy": "67.81999969482422",
                                    "Sex_Ratio": "876",
                                    "Population": "595527",
                                    "Area_km2": "1482"
                                },
                                {
                                    "District": "Barpeta",
                                    "State": "Assam",
                                    "Growth": "21.43%",
                                    "Literacy": "63.810001373291016",
                                    "Sex_Ratio": "953",
                                    "Population": "1693622",
                                    "Area_km2": "2282"
                                },
                                {
                                    "District": "Barwani",
                                    "State": "Madhya Pradesh",
                                    "Growth": "27.57%",
                                    "Literacy": "49.08000183105469",
                                    "Sex_Ratio": "982",
                                    "Population": "1385881",
                                    "Area_km2": "5427"
                                },
                                {
                                    "District": "Bastar",
                                    "State": "Chhattisgarh",
                                    "Growth": "17.96%",
                                    "Literacy": "54.400001525878906",
                                    "Sex_Ratio": "1023",
                                    "Population": "1413199",
                                    "Area_km2": "10470"
                                },
                                {
                                    "District": "Basti",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.21%",
                                    "Literacy": "67.22000122070312",
                                    "Sex_Ratio": "963",
                                    "Population": "2464464",
                                    "Area_km2": "2688"
                                },
                                {
                                    "District": "Bathinda",
                                    "State": "Punjab",
                                    "Growth": "17.34%",
                                    "Literacy": "68.27999877929688",
                                    "Sex_Ratio": "868",
                                    "Population": "1388525",
                                    "Area_km2": "3353"
                                },
                                {
                                    "District": "Baudh",
                                    "State": "Orissa",
                                    "Growth": "18.16%",
                                    "Literacy": "71.61000061035156",
                                    "Sex_Ratio": "991",
                                    "Population": "441162",
                                    "Area_km2": "3098"
                                },
                                {
                                    "District": "Begusarai",
                                    "State": "Bihar",
                                    "Growth": "26.44%",
                                    "Literacy": "63.869998931884766",
                                    "Sex_Ratio": "895",
                                    "Population": "2970541",
                                    "Area_km2": "1918"
                                },
                                {
                                    "District": "Belgaum",
                                    "State": "Karnataka",
                                    "Growth": "13.41%",
                                    "Literacy": "73.4800033569336",
                                    "Sex_Ratio": "973",
                                    "Population": "4779661",
                                    "Area_km2": "13433"
                                },
                                {
                                    "District": "Bellary",
                                    "State": "Karnataka",
                                    "Growth": "20.99%",
                                    "Literacy": "67.43000030517578",
                                    "Sex_Ratio": "983",
                                    "Population": "2452595",
                                    "Area_km2": "8461"
                                },
                                {
                                    "District": "Betul",
                                    "State": "Madhya Pradesh",
                                    "Growth": "12.92%",
                                    "Literacy": "68.9000015258789",
                                    "Sex_Ratio": "971",
                                    "Population": "1575362",
                                    "Area_km2": "10043"
                                },
                                {
                                    "District": "Bhadrak",
                                    "State": "Orissa",
                                    "Growth": "12.94%",
                                    "Literacy": "82.77999877929688",
                                    "Sex_Ratio": "981",
                                    "Population": "1506337",
                                    "Area_km2": "2505"
                                },
                                {
                                    "District": "Bhagalpur",
                                    "State": "Bihar",
                                    "Growth": "25.36%",
                                    "Literacy": "63.13999938964844",
                                    "Sex_Ratio": "880",
                                    "Population": "3037766",
                                    "Area_km2": "2569"
                                },
                                {
                                    "District": "Bhandara",
                                    "State": "Maharashtra",
                                    "Growth": "5.65%",
                                    "Literacy": "83.76000213623047",
                                    "Sex_Ratio": "982",
                                    "Population": "1200334",
                                    "Area_km2": "4087"
                                },
                                {
                                    "District": "Bharatpur",
                                    "State": "Rajasthan",
                                    "Growth": "21.29%",
                                    "Literacy": "70.11000061035156",
                                    "Sex_Ratio": "880",
                                    "Population": "2548462",
                                    "Area_km2": "5066"
                                },
                                {
                                    "District": "Bharuch",
                                    "State": "Gujarat",
                                    "Growth": "13.16%",
                                    "Literacy": "81.51000213623047",
                                    "Sex_Ratio": "925",
                                    "Population": "1551019",
                                    "Area_km2": "6509"
                                },
                                {
                                    "District": "Bhavnagar",
                                    "State": "Gujarat",
                                    "Growth": "16.63%",
                                    "Literacy": "75.5199966430664",
                                    "Sex_Ratio": "933",
                                    "Population": "2880365",
                                    "Area_km2": "10034"
                                },
                                {
                                    "District": "Bhilwara",
                                    "State": "Rajasthan",
                                    "Growth": "19.60%",
                                    "Literacy": "61.369998931884766",
                                    "Sex_Ratio": "973",
                                    "Population": "2408523",
                                    "Area_km2": "10455"
                                },
                                {
                                    "District": "Bhind",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.21%",
                                    "Literacy": "75.26000213623047",
                                    "Sex_Ratio": "837",
                                    "Population": "1703005",
                                    "Area_km2": "4459"
                                },
                                {
                                    "District": "Bhiwani",
                                    "State": "Haryana",
                                    "Growth": "14.70%",
                                    "Literacy": "75.20999908447266",
                                    "Sex_Ratio": "886",
                                    "Population": "1634445",
                                    "Area_km2": "4778"
                                },
                                {
                                    "District": "Bhojpur",
                                    "State": "Bihar",
                                    "Growth": "21.63%",
                                    "Literacy": "70.47000122070312",
                                    "Sex_Ratio": "907",
                                    "Population": "2728407",
                                    "Area_km2": "2395"
                                },
                                {
                                    "District": "Bhopal",
                                    "State": "Madhya Pradesh",
                                    "Growth": "28.62%",
                                    "Literacy": "80.37000274658203",
                                    "Sex_Ratio": "918",
                                    "Population": "2371061",
                                    "Area_km2": "2772"
                                },
                                {
                                    "District": "Bid",
                                    "State": "Maharashtra",
                                    "Growth": "19.61%",
                                    "Literacy": "76.98999786376953",
                                    "Sex_Ratio": "916",
                                    "Population": "2585049",
                                    "Area_km2": "10693"
                                },
                                {
                                    "District": "Bidar",
                                    "State": "Karnataka",
                                    "Growth": "13.37%",
                                    "Literacy": "70.51000213623047",
                                    "Sex_Ratio": "956",
                                    "Population": "1703300",
                                    "Area_km2": "5448"
                                },
                                {
                                    "District": "Bijapur",
                                    "State": "Chhattisgarh",
                                    "Growth": "8.78%",
                                    "Literacy": "40.86000061035156",
                                    "Sex_Ratio": "984",
                                    "Population": "255230",
                                    "Area_km2": "8530"
                                },
                                {
                                    "District": "Bijapur",
                                    "State": "Chhattisgarh",
                                    "Growth": "8.78%",
                                    "Literacy": "40.86000061035156",
                                    "Sex_Ratio": "984",
                                    "Population": "2177331",
                                    "Area_km2": "10498"
                                },
                                {
                                    "District": "Bijapur",
                                    "State": "Karnataka",
                                    "Growth": "20.50%",
                                    "Literacy": "67.1500015258789",
                                    "Sex_Ratio": "960",
                                    "Population": "255230",
                                    "Area_km2": "8530"
                                },
                                {
                                    "District": "Bijapur",
                                    "State": "Karnataka",
                                    "Growth": "20.50%",
                                    "Literacy": "67.1500015258789",
                                    "Sex_Ratio": "960",
                                    "Population": "2177331",
                                    "Area_km2": "10498"
                                },
                                {
                                    "District": "Bijnor",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.60%",
                                    "Literacy": "68.4800033569336",
                                    "Sex_Ratio": "917",
                                    "Population": "3682713",
                                    "Area_km2": "4561"
                                },
                                {
                                    "District": "Bikaner",
                                    "State": "Rajasthan",
                                    "Growth": "41.19%",
                                    "Literacy": "65.12999725341797",
                                    "Sex_Ratio": "905",
                                    "Population": "2363937",
                                    "Area_km2": "30239"
                                },
                                {
                                    "District": "Bilaspur",
                                    "State": "Chhattisgarh",
                                    "Growth": "33.29%",
                                    "Literacy": "70.77999877929688",
                                    "Sex_Ratio": "971",
                                    "Population": "381956",
                                    "Area_km2": "1167"
                                },
                                {
                                    "District": "Bilaspur",
                                    "State": "Chhattisgarh",
                                    "Growth": "33.29%",
                                    "Literacy": "70.77999877929688",
                                    "Sex_Ratio": "971",
                                    "Population": "2663629",
                                    "Area_km2": "8272"
                                },
                                {
                                    "District": "Bilaspur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "12.05%",
                                    "Literacy": "84.58999633789062",
                                    "Sex_Ratio": "981",
                                    "Population": "381956",
                                    "Area_km2": "1167"
                                },
                                {
                                    "District": "Bilaspur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "12.05%",
                                    "Literacy": "84.58999633789062",
                                    "Sex_Ratio": "981",
                                    "Population": "2663629",
                                    "Area_km2": "8272"
                                },
                                {
                                    "District": "Birbhum",
                                    "State": "West Bengal",
                                    "Growth": "16.15%",
                                    "Literacy": "70.68000030517578",
                                    "Sex_Ratio": "956",
                                    "Population": "3502404",
                                    "Area_km2": "4545"
                                },
                                {
                                    "District": "Bishnupur",
                                    "State": "Manipur",
                                    "Growth": "13.93%",
                                    "Literacy": "75.8499984741211",
                                    "Sex_Ratio": "999",
                                    "Population": "237399",
                                    "Area_km2": "496"
                                },
                                {
                                    "District": "Bokaro",
                                    "State": "Jharkhand",
                                    "Growth": "16.01%",
                                    "Literacy": "72.01000213623047",
                                    "Sex_Ratio": "922",
                                    "Population": "2062330",
                                    "Area_km2": "2883"
                                },
                                {
                                    "District": "Bongaigaon",
                                    "State": "Assam",
                                    "Growth": "20.59%",
                                    "Literacy": "69.73999786376953",
                                    "Sex_Ratio": "966",
                                    "Population": "738804",
                                    "Area_km2": "1093"
                                },
                                {
                                    "District": "Budaun",
                                    "State": "Uttar Pradesh",
                                    "Growth": "19.95%",
                                    "Literacy": "51.290000915527344",
                                    "Sex_Ratio": "871",
                                    "Population": "3681896",
                                    "Area_km2": "5168"
                                },
                                {
                                    "District": "Bulandshahar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "20.12%",
                                    "Literacy": "68.87999725341797",
                                    "Sex_Ratio": "896",
                                    "Population": "3499171",
                                    "Area_km2": "4512"
                                },
                                {
                                    "District": "Buldana",
                                    "State": "Maharashtra",
                                    "Growth": "15.85%",
                                    "Literacy": "83.4000015258789",
                                    "Sex_Ratio": "934",
                                    "Population": "2586258",
                                    "Area_km2": "9661"
                                },
                                {
                                    "District": "Bundi",
                                    "State": "Rajasthan",
                                    "Growth": "15.40%",
                                    "Literacy": "61.52000045776367",
                                    "Sex_Ratio": "925",
                                    "Population": "1110906",
                                    "Area_km2": "5776"
                                },
                                {
                                    "District": "Burhanpur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.37%",
                                    "Literacy": "64.36000061035156",
                                    "Sex_Ratio": "951",
                                    "Population": "757847",
                                    "Area_km2": "3427"
                                },
                                {
                                    "District": "Buxar",
                                    "State": "Bihar",
                                    "Growth": "21.67%",
                                    "Literacy": "70.13999938964844",
                                    "Sex_Ratio": "922",
                                    "Population": "1706352",
                                    "Area_km2": "1703"
                                },
                                {
                                    "District": "Cachar",
                                    "State": "Assam",
                                    "Growth": "20.19%",
                                    "Literacy": "79.33999633789062",
                                    "Sex_Ratio": "959",
                                    "Population": "1736617",
                                    "Area_km2": "3786"
                                },
                                {
                                    "District": "Central Delhi",
                                    "State": "Delhi",
                                    "Growth": "-9.91%",
                                    "Literacy": "85.13999938964844",
                                    "Sex_Ratio": "892",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Chamarajanagar",
                                    "State": "Karnataka",
                                    "Growth": "5.73%",
                                    "Literacy": "61.43000030517578",
                                    "Sex_Ratio": "993",
                                    "Population": "1020791",
                                    "Area_km2": "5648"
                                },
                                {
                                    "District": "Chamba",
                                    "State": "Himachal Pradesh",
                                    "Growth": "12.63%",
                                    "Literacy": "72.16999816894531",
                                    "Sex_Ratio": "986",
                                    "Population": "519080",
                                    "Area_km2": "6522"
                                },
                                {
                                    "District": "Chamoli",
                                    "State": "Uttarakhand",
                                    "Growth": "5.74%",
                                    "Literacy": "82.6500015258789",
                                    "Sex_Ratio": "1019",
                                    "Population": "391605",
                                    "Area_km2": "8030"
                                },
                                {
                                    "District": "Champawat",
                                    "State": "Uttarakhand",
                                    "Growth": "15.63%",
                                    "Literacy": "79.83000183105469",
                                    "Sex_Ratio": "980",
                                    "Population": "259648",
                                    "Area_km2": "1766"
                                },
                                {
                                    "District": "Champhai",
                                    "State": "Mizoram",
                                    "Growth": "16.01%",
                                    "Literacy": "95.91000366210938",
                                    "Sex_Ratio": "984",
                                    "Population": "125745",
                                    "Area_km2": "3185"
                                },
                                {
                                    "District": "Chandauli",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.83%",
                                    "Literacy": "71.4800033569336",
                                    "Sex_Ratio": "918",
                                    "Population": "1952756",
                                    "Area_km2": "2541"
                                },
                                {
                                    "District": "Chandel",
                                    "State": "Manipur",
                                    "Growth": "21.85%",
                                    "Literacy": "71.11000061035156",
                                    "Sex_Ratio": "933",
                                    "Population": "144182",
                                    "Area_km2": "3313"
                                },
                                {
                                    "District": "Chandigarh",
                                    "State": "Chandigarh",
                                    "Growth": "17.19%",
                                    "Literacy": "86.05000305175781",
                                    "Sex_Ratio": "818",
                                    "Population": "1055450",
                                    "Area_km2": "114"
                                },
                                {
                                    "District": "Chandrapur",
                                    "State": "Maharashtra",
                                    "Growth": "6.43%",
                                    "Literacy": "80.01000213623047",
                                    "Sex_Ratio": "961",
                                    "Population": "2204307",
                                    "Area_km2": "11443"
                                },
                                {
                                    "District": "Changlang",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "18.18%",
                                    "Literacy": "59.79999923706055",
                                    "Sex_Ratio": "926",
                                    "Population": "148226",
                                    "Area_km2": "4662"
                                },
                                {
                                    "District": "Chatra",
                                    "State": "Jharkhand",
                                    "Growth": "31.77%",
                                    "Literacy": "60.18000030517578",
                                    "Sex_Ratio": "953",
                                    "Population": "1042886",
                                    "Area_km2": "3718"
                                },
                                {
                                    "District": "Chennai",
                                    "State": "Tamil Nadu",
                                    "Growth": "6.98%",
                                    "Literacy": "90.18000030517578",
                                    "Sex_Ratio": "989",
                                    "Population": "4646732",
                                    "Area_km2": "175"
                                },
                                {
                                    "District": "Chhattarpur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.51%",
                                    "Literacy": "63.7400016784668",
                                    "Sex_Ratio": "883",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Chhindwara",
                                    "State": "Madhya Pradesh",
                                    "Growth": "13.07%",
                                    "Literacy": "71.16000366210938",
                                    "Sex_Ratio": "964",
                                    "Population": "2090922",
                                    "Area_km2": "11815"
                                },
                                {
                                    "District": "Chikkaballapura",
                                    "State": "Karnataka",
                                    "Growth": "9.23%",
                                    "Literacy": "69.76000213623047",
                                    "Sex_Ratio": "972",
                                    "Population": "1255104",
                                    "Area_km2": "4244"
                                },
                                {
                                    "District": "Chikmagalur",
                                    "State": "Karnataka",
                                    "Growth": "-0.26%",
                                    "Literacy": "79.25",
                                    "Sex_Ratio": "1008",
                                    "Population": "1137961",
                                    "Area_km2": "7202"
                                },
                                {
                                    "District": "Chirang",
                                    "State": "Assam",
                                    "Growth": "11.34%",
                                    "Literacy": "63.54999923706055",
                                    "Sex_Ratio": "969",
                                    "Population": "482162",
                                    "Area_km2": "1923"
                                },
                                {
                                    "District": "Chitradurga",
                                    "State": "Karnataka",
                                    "Growth": "9.33%",
                                    "Literacy": "73.70999908447266",
                                    "Sex_Ratio": "974",
                                    "Population": "1659456",
                                    "Area_km2": "8436"
                                },
                                {
                                    "District": "Chitrakoot",
                                    "State": "Uttar Pradesh",
                                    "Growth": "29.43%",
                                    "Literacy": "65.05000305175781",
                                    "Sex_Ratio": "879",
                                    "Population": "991730",
                                    "Area_km2": "3216"
                                },
                                {
                                    "District": "Chittaurgarh",
                                    "State": "Rajasthan",
                                    "Growth": "16.08%",
                                    "Literacy": "61.709999084472656",
                                    "Sex_Ratio": "972",
                                    "Population": "1544338",
                                    "Area_km2": "7822"
                                },
                                {
                                    "District": "Chittoor",
                                    "State": "Andhra Pradesh",
                                    "Growth": "11.43%",
                                    "Literacy": "71.52999877929688",
                                    "Sex_Ratio": "997",
                                    "Population": "4174064",
                                    "Area_km2": "15152"
                                },
                                {
                                    "District": "Churachandpur",
                                    "State": "Manipur",
                                    "Growth": "20.29%",
                                    "Literacy": "82.77999877929688",
                                    "Sex_Ratio": "975",
                                    "Population": "274143",
                                    "Area_km2": "4570"
                                },
                                {
                                    "District": "Churu",
                                    "State": "Rajasthan",
                                    "Growth": "6.01%",
                                    "Literacy": "66.75",
                                    "Sex_Ratio": "940",
                                    "Population": "2039547",
                                    "Area_km2": "13835"
                                },
                                {
                                    "District": "Coimbatore",
                                    "State": "Tamil Nadu",
                                    "Growth": "18.56%",
                                    "Literacy": "83.9800033569336",
                                    "Sex_Ratio": "1000",
                                    "Population": "3458045",
                                    "Area_km2": "4732"
                                },
                                {
                                    "District": "Cuddalore",
                                    "State": "Tamil Nadu",
                                    "Growth": "14.02%",
                                    "Literacy": "78.04000091552734",
                                    "Sex_Ratio": "987",
                                    "Population": "2605914",
                                    "Area_km2": "3703"
                                },
                                {
                                    "District": "Cuttack",
                                    "State": "Orissa",
                                    "Growth": "12.10%",
                                    "Literacy": "85.5",
                                    "Sex_Ratio": "940",
                                    "Population": "2624470",
                                    "Area_km2": "3932"
                                },
                                {
                                    "District": "Dadra and Nagar Haveli",
                                    "State": "Dadra and Nagar Haveli",
                                    "Growth": "55.88%",
                                    "Literacy": "76.23999786376953",
                                    "Sex_Ratio": "774",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Dakshin Dinajpur",
                                    "State": "West Bengal",
                                    "Growth": "11.52%",
                                    "Literacy": "72.81999969482422",
                                    "Sex_Ratio": "956",
                                    "Population": "1676276",
                                    "Area_km2": "2219"
                                },
                                {
                                    "District": "Dakshina Kannada",
                                    "State": "Karnataka",
                                    "Growth": "10.11%",
                                    "Literacy": "88.56999969482422",
                                    "Sex_Ratio": "1020",
                                    "Population": "2089649",
                                    "Area_km2": "4861"
                                },
                                {
                                    "District": "Daman",
                                    "State": "Daman and Diu",
                                    "Growth": "67.71%",
                                    "Literacy": "88.06999969482422",
                                    "Sex_Ratio": "534",
                                    "Population": "191173",
                                    "Area_km2": "72"
                                },
                                {
                                    "District": "Damoh",
                                    "State": "Madhya Pradesh",
                                    "Growth": "16.63%",
                                    "Literacy": "69.7300033569336",
                                    "Sex_Ratio": "910",
                                    "Population": "1264219",
                                    "Area_km2": "7306"
                                },
                                {
                                    "District": "Dantewada",
                                    "State": "Chhattisgarh",
                                    "Growth": "12.08%",
                                    "Literacy": "42.119998931884766",
                                    "Sex_Ratio": "1020",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Darbhanga",
                                    "State": "Bihar",
                                    "Growth": "19.47%",
                                    "Literacy": "56.560001373291016",
                                    "Sex_Ratio": "911",
                                    "Population": "3937385",
                                    "Area_km2": "2279"
                                },
                                {
                                    "District": "Darjiling",
                                    "State": "West Bengal",
                                    "Growth": "14.77%",
                                    "Literacy": "79.55999755859375",
                                    "Sex_Ratio": "970",
                                    "Population": "1846823",
                                    "Area_km2": "3149"
                                },
                                {
                                    "District": "Darrang",
                                    "State": "Assam",
                                    "Growth": "22.19%",
                                    "Literacy": "63.08000183105469",
                                    "Sex_Ratio": "954",
                                    "Population": "928500",
                                    "Area_km2": "1585"
                                },
                                {
                                    "District": "Datia",
                                    "State": "Madhya Pradesh",
                                    "Growth": "18.46%",
                                    "Literacy": "72.62999725341797",
                                    "Sex_Ratio": "873",
                                    "Population": "786754",
                                    "Area_km2": "2902"
                                },
                                {
                                    "District": "Dausa",
                                    "State": "Rajasthan",
                                    "Growth": "24.09%",
                                    "Literacy": "68.16000366210938",
                                    "Sex_Ratio": "905",
                                    "Population": "1634409",
                                    "Area_km2": "3432"
                                },
                                {
                                    "District": "Davanagere",
                                    "State": "Karnataka",
                                    "Growth": "8.63%",
                                    "Literacy": "75.73999786376953",
                                    "Sex_Ratio": "972",
                                    "Population": "1945497",
                                    "Area_km2": "5924"
                                },
                                {
                                    "District": "Debagarh",
                                    "State": "Orissa",
                                    "Growth": "14.01%",
                                    "Literacy": "72.56999969482422",
                                    "Sex_Ratio": "975",
                                    "Population": "312520",
                                    "Area_km2": "2940"
                                },
                                {
                                    "District": "Dehradun",
                                    "State": "Uttarakhand",
                                    "Growth": "32.33%",
                                    "Literacy": "84.25",
                                    "Sex_Ratio": "902",
                                    "Population": "1696694",
                                    "Area_km2": "3088"
                                },
                                {
                                    "District": "Deoghar",
                                    "State": "Jharkhand",
                                    "Growth": "28.03%",
                                    "Literacy": "64.8499984741211",
                                    "Sex_Ratio": "925",
                                    "Population": "1492073",
                                    "Area_km2": "2477"
                                },
                                {
                                    "District": "Deoria",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.31%",
                                    "Literacy": "71.12999725341797",
                                    "Sex_Ratio": "1017",
                                    "Population": "3100946",
                                    "Area_km2": "2540"
                                },
                                {
                                    "District": "Dewas",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.53%",
                                    "Literacy": "69.3499984741211",
                                    "Sex_Ratio": "942",
                                    "Population": "1563715",
                                    "Area_km2": "7020"
                                },
                                {
                                    "District": "Dhalai",
                                    "State": "Tripura",
                                    "Growth": "22.85%",
                                    "Literacy": "85.72000122070312",
                                    "Sex_Ratio": "944",
                                    "Population": "378230",
                                    "Area_km2": "2400"
                                },
                                {
                                    "District": "Dhamtari",
                                    "State": "Chhattisgarh",
                                    "Growth": "13.19%",
                                    "Literacy": "78.36000061035156",
                                    "Sex_Ratio": "1010",
                                    "Population": "799781",
                                    "Area_km2": "4084"
                                },
                                {
                                    "District": "Dhanbad",
                                    "State": "Jharkhand",
                                    "Growth": "11.99%",
                                    "Literacy": "74.5199966430664",
                                    "Sex_Ratio": "909",
                                    "Population": "2684487",
                                    "Area_km2": "2040"
                                },
                                {
                                    "District": "Dhar",
                                    "State": "Madhya Pradesh",
                                    "Growth": "25.60%",
                                    "Literacy": "59",
                                    "Sex_Ratio": "964",
                                    "Population": "2185793",
                                    "Area_km2": "8153"
                                },
                                {
                                    "District": "Dharmapuri",
                                    "State": "Tamil Nadu",
                                    "Growth": "16.34%",
                                    "Literacy": "68.54000091552734",
                                    "Sex_Ratio": "946",
                                    "Population": "1506843",
                                    "Area_km2": "4497"
                                },
                                {
                                    "District": "Dharwad",
                                    "State": "Karnataka",
                                    "Growth": "15.13%",
                                    "Literacy": "80",
                                    "Sex_Ratio": "971",
                                    "Population": "1847023",
                                    "Area_km2": "4260"
                                },
                                {
                                    "District": "Dhaulpur",
                                    "State": "Rajasthan",
                                    "Growth": "22.71%",
                                    "Literacy": "69.08000183105469",
                                    "Sex_Ratio": "846",
                                    "Population": "1206516",
                                    "Area_km2": "3033"
                                },
                                {
                                    "District": "Dhemaji",
                                    "State": "Assam",
                                    "Growth": "19.97%",
                                    "Literacy": "72.69999694824219",
                                    "Sex_Ratio": "953",
                                    "Population": "686133",
                                    "Area_km2": "3237"
                                },
                                {
                                    "District": "Dhenkanal",
                                    "State": "Orissa",
                                    "Growth": "11.80%",
                                    "Literacy": "78.76000213623047",
                                    "Sex_Ratio": "947",
                                    "Population": "1192811",
                                    "Area_km2": "4452"
                                },
                                {
                                    "District": "Dhubri",
                                    "State": "Assam",
                                    "Growth": "24.44%",
                                    "Literacy": "58.34000015258789",
                                    "Sex_Ratio": "953",
                                    "Population": "1949258",
                                    "Area_km2": "2176"
                                },
                                {
                                    "District": "Dhule",
                                    "State": "Maharashtra",
                                    "Growth": "20.08%",
                                    "Literacy": "72.80000305175781",
                                    "Sex_Ratio": "946",
                                    "Population": "2050862",
                                    "Area_km2": "7195"
                                },
                                {
                                    "District": "Dibang Valley",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "10.07%",
                                    "Literacy": "64.0999984741211",
                                    "Sex_Ratio": "813",
                                    "Population": "8004",
                                    "Area_km2": "9129"
                                },
                                {
                                    "District": "Dibrugarh",
                                    "State": "Assam",
                                    "Growth": "11.92%",
                                    "Literacy": "76.05000305175781",
                                    "Sex_Ratio": "961",
                                    "Population": "1326335",
                                    "Area_km2": "3381"
                                },
                                {
                                    "District": "Dima Hasao",
                                    "State": "Assam",
                                    "Growth": "13.84%",
                                    "Literacy": "77.54000091552734",
                                    "Sex_Ratio": "932",
                                    "Population": "214102",
                                    "Area_km2": "4888"
                                },
                                {
                                    "District": "Dimapur",
                                    "State": "Nagaland",
                                    "Growth": "127.29%",
                                    "Literacy": "84.79000091552734",
                                    "Sex_Ratio": "919",
                                    "Population": "378811",
                                    "Area_km2": "927"
                                },
                                {
                                    "District": "Dindigul",
                                    "State": "Tamil Nadu",
                                    "Growth": "12.31%",
                                    "Literacy": "76.26000213623047",
                                    "Sex_Ratio": "998",
                                    "Population": "2159775",
                                    "Area_km2": "6036"
                                },
                                {
                                    "District": "Dindori",
                                    "State": "Madhya Pradesh",
                                    "Growth": "21.32%",
                                    "Literacy": "63.900001525878906",
                                    "Sex_Ratio": "1002",
                                    "Population": "704524",
                                    "Area_km2": "7470"
                                },
                                {
                                    "District": "Diu",
                                    "State": "Daman and Diu",
                                    "Growth": "17.77%",
                                    "Literacy": "83.45999908447266",
                                    "Sex_Ratio": "1031",
                                    "Population": "52074",
                                    "Area_km2": "39"
                                },
                                {
                                    "District": "Doda",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "28.00%",
                                    "Literacy": "64.68000030517578",
                                    "Sex_Ratio": "919",
                                    "Population": "409936",
                                    "Area_km2": "8912"
                                },
                                {
                                    "District": "Dohad",
                                    "State": "Gujarat",
                                    "Growth": "29.98%",
                                    "Literacy": "58.81999969482422",
                                    "Sex_Ratio": "990",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Dumka",
                                    "State": "Jharkhand",
                                    "Growth": "19.42%",
                                    "Literacy": "61.02000045776367",
                                    "Sex_Ratio": "977",
                                    "Population": "1321442",
                                    "Area_km2": "3761"
                                },
                                {
                                    "District": "Dungarpur",
                                    "State": "Rajasthan",
                                    "Growth": "25.36%",
                                    "Literacy": "59.459999084472656",
                                    "Sex_Ratio": "994",
                                    "Population": "1388552",
                                    "Area_km2": "3770"
                                },
                                {
                                    "District": "Durg",
                                    "State": "Chhattisgarh",
                                    "Growth": "18.98%",
                                    "Literacy": "79.05999755859375",
                                    "Sex_Ratio": "988",
                                    "Population": "3343872",
                                    "Area_km2": "8535"
                                },
                                {
                                    "District": "East Delhi",
                                    "State": "Delhi",
                                    "Growth": "16.79%",
                                    "Literacy": "89.30999755859375",
                                    "Sex_Ratio": "884",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "East Garo Hills",
                                    "State": "Meghalaya",
                                    "Growth": "26.87%",
                                    "Literacy": "73.94999694824219",
                                    "Sex_Ratio": "972",
                                    "Population": "317917",
                                    "Area_km2": "2603"
                                },
                                {
                                    "District": "East Godavari",
                                    "State": "Andhra Pradesh",
                                    "Growth": "5.16%",
                                    "Literacy": "70.98999786376953",
                                    "Sex_Ratio": "1006",
                                    "Population": "5154296",
                                    "Area_km2": "10807"
                                },
                                {
                                    "District": "East Kameng",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "37.62%",
                                    "Literacy": "60.02000045776367",
                                    "Sex_Ratio": "1029",
                                    "Population": "78690",
                                    "Area_km2": "4134"
                                },
                                {
                                    "District": "East Khasi Hills",
                                    "State": "Meghalaya",
                                    "Growth": "24.96%",
                                    "Literacy": "84.1500015258789",
                                    "Sex_Ratio": "1011",
                                    "Population": "825922",
                                    "Area_km2": "2748"
                                },
                                {
                                    "District": "East Nimar",
                                    "State": "Madhya Pradesh",
                                    "Growth": "21.50%",
                                    "Literacy": "66.38999938964844",
                                    "Sex_Ratio": "943",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "East Siang",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "13.52%",
                                    "Literacy": "72.54000091552734",
                                    "Sex_Ratio": "980",
                                    "Population": "99214",
                                    "Area_km2": "3603"
                                },
                                {
                                    "District": "East Sikkim",
                                    "State": "Sikkim",
                                    "Growth": "15.73%",
                                    "Literacy": "83.8499984741211",
                                    "Sex_Ratio": "873",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Ernakulam",
                                    "State": "Kerala",
                                    "Growth": "5.69%",
                                    "Literacy": "95.88999938964844",
                                    "Sex_Ratio": "1027",
                                    "Population": "3282388",
                                    "Area_km2": "3063"
                                },
                                {
                                    "District": "Erode",
                                    "State": "Tamil Nadu",
                                    "Growth": "11.66%",
                                    "Literacy": "72.58000183105469",
                                    "Sex_Ratio": "993",
                                    "Population": "2251744",
                                    "Area_km2": "5760"
                                },
                                {
                                    "District": "Etah",
                                    "State": "Uttar Pradesh",
                                    "Growth": "13.62%",
                                    "Literacy": "70.80999755859375",
                                    "Sex_Ratio": "873",
                                    "Population": "1774480",
                                    "Area_km2": "2431"
                                },
                                {
                                    "District": "Etawah",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.15%",
                                    "Literacy": "78.41000366210938",
                                    "Sex_Ratio": "870",
                                    "Population": "1581810",
                                    "Area_km2": "2311"
                                },
                                {
                                    "District": "Faizabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.29%",
                                    "Literacy": "68.7300033569336",
                                    "Sex_Ratio": "962",
                                    "Population": "2470996",
                                    "Area_km2": "2341"
                                },
                                {
                                    "District": "Faridabad",
                                    "State": "Haryana",
                                    "Growth": "32.54%",
                                    "Literacy": "81.69999694824219",
                                    "Sex_Ratio": "873",
                                    "Population": "1809733",
                                    "Area_km2": "741"
                                },
                                {
                                    "District": "Faridkot",
                                    "State": "Punjab",
                                    "Growth": "12.09%",
                                    "Literacy": "69.55000305175781",
                                    "Sex_Ratio": "890",
                                    "Population": "617508",
                                    "Area_km2": "1458"
                                },
                                {
                                    "District": "Farrukhabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "20.05%",
                                    "Literacy": "69.04000091552734",
                                    "Sex_Ratio": "874",
                                    "Population": "1885204",
                                    "Area_km2": "2181"
                                },
                                {
                                    "District": "Fatehabad",
                                    "State": "Haryana",
                                    "Growth": "16.85%",
                                    "Literacy": "67.91999816894531",
                                    "Sex_Ratio": "902",
                                    "Population": "942011",
                                    "Area_km2": "2538"
                                },
                                {
                                    "District": "Fatehgarh Sahib",
                                    "State": "Punjab",
                                    "Growth": "11.46%",
                                    "Literacy": "79.3499984741211",
                                    "Sex_Ratio": "871",
                                    "Population": "600163",
                                    "Area_km2": "1180"
                                },
                                {
                                    "District": "Fatehpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.05%",
                                    "Literacy": "67.43000030517578",
                                    "Sex_Ratio": "901",
                                    "Population": "2632733",
                                    "Area_km2": "4152"
                                },
                                {
                                    "District": "Firozabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "21.69%",
                                    "Literacy": "71.91999816894531",
                                    "Sex_Ratio": "875",
                                    "Population": "2498156",
                                    "Area_km2": "2407"
                                },
                                {
                                    "District": "Firozpur",
                                    "State": "Punjab",
                                    "Growth": "16.21%",
                                    "Literacy": "68.91999816894531",
                                    "Sex_Ratio": "893",
                                    "Population": "2029074",
                                    "Area_km2": "5305"
                                },
                                {
                                    "District": "Gadag",
                                    "State": "Karnataka",
                                    "Growth": "9.54%",
                                    "Literacy": "75.12000274658203",
                                    "Sex_Ratio": "982",
                                    "Population": "1064570",
                                    "Area_km2": "4657"
                                },
                                {
                                    "District": "Gadchiroli",
                                    "State": "Maharashtra",
                                    "Growth": "10.58%",
                                    "Literacy": "74.36000061035156",
                                    "Sex_Ratio": "982",
                                    "Population": "1072942",
                                    "Area_km2": "14412"
                                },
                                {
                                    "District": "Gajapati",
                                    "State": "Orissa",
                                    "Growth": "11.37%",
                                    "Literacy": "53.4900016784668",
                                    "Sex_Ratio": "1043",
                                    "Population": "577817",
                                    "Area_km2": "4325"
                                },
                                {
                                    "District": "Ganderbal",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "36.50%",
                                    "Literacy": "58.040000915527344",
                                    "Sex_Ratio": "874",
                                    "Population": "297446",
                                    "Area_km2": "259"
                                },
                                {
                                    "District": "Gandhinagar",
                                    "State": "Gujarat",
                                    "Growth": "4.29%",
                                    "Literacy": "84.16000366210938",
                                    "Sex_Ratio": "923",
                                    "Population": "1391753",
                                    "Area_km2": "2140"
                                },
                                {
                                    "District": "Ganganagar",
                                    "State": "Rajasthan",
                                    "Growth": "10.04%",
                                    "Literacy": "69.63999938964844",
                                    "Sex_Ratio": "887",
                                    "Population": "1969168",
                                    "Area_km2": "10978"
                                },
                                {
                                    "District": "Ganjam",
                                    "State": "Orissa",
                                    "Growth": "11.66%",
                                    "Literacy": "71.08999633789062",
                                    "Sex_Ratio": "983",
                                    "Population": "3529031",
                                    "Area_km2": "8206"
                                },
                                {
                                    "District": "Garhwa",
                                    "State": "Jharkhand",
                                    "Growth": "27.75%",
                                    "Literacy": "60.33000183105469",
                                    "Sex_Ratio": "935",
                                    "Population": "1322784",
                                    "Area_km2": "4093"
                                },
                                {
                                    "District": "Gautam Buddha Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "37.11%",
                                    "Literacy": "80.12000274658203",
                                    "Sex_Ratio": "851",
                                    "Population": "1648115",
                                    "Area_km2": "1282"
                                },
                                {
                                    "District": "Gaya",
                                    "State": "Bihar",
                                    "Growth": "26.43%",
                                    "Literacy": "63.66999816894531",
                                    "Sex_Ratio": "937",
                                    "Population": "4391418",
                                    "Area_km2": "4976"
                                },
                                {
                                    "District": "Ghaziabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "42.27%",
                                    "Literacy": "78.06999969482422",
                                    "Sex_Ratio": "881",
                                    "Population": "4681645",
                                    "Area_km2": "1179"
                                },
                                {
                                    "District": "Ghazipur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "19.18%",
                                    "Literacy": "71.77999877929688",
                                    "Sex_Ratio": "952",
                                    "Population": "3620268",
                                    "Area_km2": "3377"
                                },
                                {
                                    "District": "Giridih",
                                    "State": "Jharkhand",
                                    "Growth": "28.41%",
                                    "Literacy": "63.13999938964844",
                                    "Sex_Ratio": "944",
                                    "Population": "2445474",
                                    "Area_km2": "4962"
                                },
                                {
                                    "District": "Goalpara",
                                    "State": "Assam",
                                    "Growth": "22.64%",
                                    "Literacy": "67.37000274658203",
                                    "Sex_Ratio": "964",
                                    "Population": "1008183",
                                    "Area_km2": "1824"
                                },
                                {
                                    "District": "Godda",
                                    "State": "Jharkhand",
                                    "Growth": "25.35%",
                                    "Literacy": "56.400001525878906",
                                    "Sex_Ratio": "938",
                                    "Population": "1313551",
                                    "Area_km2": "2266"
                                },
                                {
                                    "District": "Golaghat",
                                    "State": "Assam",
                                    "Growth": "12.75%",
                                    "Literacy": "77.43000030517578",
                                    "Sex_Ratio": "964",
                                    "Population": "1066888",
                                    "Area_km2": "3502"
                                },
                                {
                                    "District": "Gonda",
                                    "State": "Uttar Pradesh",
                                    "Growth": "24.17%",
                                    "Literacy": "58.709999084472656",
                                    "Sex_Ratio": "921",
                                    "Population": "3433919",
                                    "Area_km2": "4003"
                                },
                                {
                                    "District": "Gondiya",
                                    "State": "Maharashtra",
                                    "Growth": "10.14%",
                                    "Literacy": "84.94999694824219",
                                    "Sex_Ratio": "999",
                                    "Population": "1322507",
                                    "Area_km2": "5234"
                                },
                                {
                                    "District": "Gopalganj",
                                    "State": "Bihar",
                                    "Growth": "19.02%",
                                    "Literacy": "65.47000122070312",
                                    "Sex_Ratio": "1021",
                                    "Population": "2562012",
                                    "Area_km2": "2033"
                                },
                                {
                                    "District": "Gorakhpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.81%",
                                    "Literacy": "70.83000183105469",
                                    "Sex_Ratio": "950",
                                    "Population": "4440895",
                                    "Area_km2": "3321"
                                },
                                {
                                    "District": "Gulbarga",
                                    "State": "Karnataka",
                                    "Growth": "18.01%",
                                    "Literacy": "64.8499984741211",
                                    "Sex_Ratio": "971",
                                    "Population": "2566326",
                                    "Area_km2": "10954"
                                },
                                {
                                    "District": "Gumla",
                                    "State": "Jharkhand",
                                    "Growth": "23.16%",
                                    "Literacy": "65.7300033569336",
                                    "Sex_Ratio": "993",
                                    "Population": "1025213",
                                    "Area_km2": "5360"
                                },
                                {
                                    "District": "Guna",
                                    "State": "Madhya Pradesh",
                                    "Growth": "26.97%",
                                    "Literacy": "63.22999954223633",
                                    "Sex_Ratio": "912",
                                    "Population": "1241519",
                                    "Area_km2": "6390"
                                },
                                {
                                    "District": "Guntur",
                                    "State": "Andhra Pradesh",
                                    "Growth": "9.47%",
                                    "Literacy": "67.4000015258789",
                                    "Sex_Ratio": "1003",
                                    "Population": "4887813",
                                    "Area_km2": "11391"
                                },
                                {
                                    "District": "Gurdaspur",
                                    "State": "Punjab",
                                    "Growth": "9.26%",
                                    "Literacy": "79.94999694824219",
                                    "Sex_Ratio": "895",
                                    "Population": "2298323",
                                    "Area_km2": "3551"
                                },
                                {
                                    "District": "Gurgaon",
                                    "State": "Haryana",
                                    "Growth": "73.96%",
                                    "Literacy": "84.69999694824219",
                                    "Sex_Ratio": "854",
                                    "Population": "1514432",
                                    "Area_km2": "1258"
                                },
                                {
                                    "District": "Gwalior",
                                    "State": "Madhya Pradesh",
                                    "Growth": "24.50%",
                                    "Literacy": "76.6500015258789",
                                    "Sex_Ratio": "864",
                                    "Population": "2032036",
                                    "Area_km2": "4560"
                                },
                                {
                                    "District": "Hailakandi",
                                    "State": "Assam",
                                    "Growth": "21.45%",
                                    "Literacy": "74.33000183105469",
                                    "Sex_Ratio": "951",
                                    "Population": "659296",
                                    "Area_km2": "1327"
                                },
                                {
                                    "District": "Hamirpur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "10.19%",
                                    "Literacy": "88.1500015258789",
                                    "Sex_Ratio": "1095",
                                    "Population": "454768",
                                    "Area_km2": "1118"
                                },
                                {
                                    "District": "Hamirpur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "10.19%",
                                    "Literacy": "88.1500015258789",
                                    "Sex_Ratio": "1095",
                                    "Population": "1104285",
                                    "Area_km2": "4021"
                                },
                                {
                                    "District": "Hamirpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "5.80%",
                                    "Literacy": "68.7699966430664",
                                    "Sex_Ratio": "861",
                                    "Population": "454768",
                                    "Area_km2": "1118"
                                },
                                {
                                    "District": "Hamirpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "5.80%",
                                    "Literacy": "68.7699966430664",
                                    "Sex_Ratio": "861",
                                    "Population": "1104285",
                                    "Area_km2": "4021"
                                },
                                {
                                    "District": "Hanumangarh",
                                    "State": "Rajasthan",
                                    "Growth": "16.91%",
                                    "Literacy": "67.12999725341797",
                                    "Sex_Ratio": "906",
                                    "Population": "1774692",
                                    "Area_km2": "9656"
                                },
                                {
                                    "District": "Haora",
                                    "State": "West Bengal",
                                    "Growth": "13.50%",
                                    "Literacy": "83.30999755859375",
                                    "Sex_Ratio": "939",
                                    "Population": "4850029",
                                    "Area_km2": "1467"
                                },
                                {
                                    "District": "Harda",
                                    "State": "Madhya Pradesh",
                                    "Growth": "20.25%",
                                    "Literacy": "72.5",
                                    "Sex_Ratio": "935",
                                    "Population": "570465",
                                    "Area_km2": "3334"
                                },
                                {
                                    "District": "Hardoi",
                                    "State": "Uttar Pradesh",
                                    "Growth": "20.44%",
                                    "Literacy": "64.56999969482422",
                                    "Sex_Ratio": "868",
                                    "Population": "4092845",
                                    "Area_km2": "5986"
                                },
                                {
                                    "District": "Haridwar",
                                    "State": "Uttarakhand",
                                    "Growth": "30.63%",
                                    "Literacy": "73.43000030517578",
                                    "Sex_Ratio": "880",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Hassan",
                                    "State": "Karnataka",
                                    "Growth": "3.18%",
                                    "Literacy": "76.06999969482422",
                                    "Sex_Ratio": "1010",
                                    "Population": "1776421",
                                    "Area_km2": "6814"
                                },
                                {
                                    "District": "Haveri",
                                    "State": "Karnataka",
                                    "Growth": "11.02%",
                                    "Literacy": "77.4000015258789",
                                    "Sex_Ratio": "950",
                                    "Population": "1597668",
                                    "Area_km2": "4823"
                                },
                                {
                                    "District": "Hazaribagh",
                                    "State": "Jharkhand",
                                    "Growth": "20.65%",
                                    "Literacy": "69.75",
                                    "Sex_Ratio": "947",
                                    "Population": "1734495",
                                    "Area_km2": "3555"
                                },
                                {
                                    "District": "Hingoli",
                                    "State": "Maharashtra",
                                    "Growth": "19.27%",
                                    "Literacy": "78.16999816894531",
                                    "Sex_Ratio": "942",
                                    "Population": "1177345",
                                    "Area_km2": "4827"
                                },
                                {
                                    "District": "Hisar",
                                    "State": "Haryana",
                                    "Growth": "13.45%",
                                    "Literacy": "72.88999938964844",
                                    "Sex_Ratio": "872",
                                    "Population": "1743931",
                                    "Area_km2": "3983"
                                },
                                {
                                    "District": "Hoshangabad",
                                    "State": "Madhya Pradesh",
                                    "Growth": "14.49%",
                                    "Literacy": "75.29000091552734",
                                    "Sex_Ratio": "914",
                                    "Population": "1241350",
                                    "Area_km2": "6703"
                                },
                                {
                                    "District": "Hoshiarpur",
                                    "State": "Punjab",
                                    "Growth": "7.11%",
                                    "Literacy": "84.58999633789062",
                                    "Sex_Ratio": "961",
                                    "Population": "1586625",
                                    "Area_km2": "3386"
                                },
                                {
                                    "District": "Hugli",
                                    "State": "West Bengal",
                                    "Growth": "9.46%",
                                    "Literacy": "81.80000305175781",
                                    "Sex_Ratio": "961",
                                    "Population": "5519145",
                                    "Area_km2": "3149"
                                },
                                {
                                    "District": "Hyderabad",
                                    "State": "Andhra Pradesh",
                                    "Growth": "2.97%",
                                    "Literacy": "83.25",
                                    "Sex_Ratio": "954",
                                    "Population": "3943323",
                                    "Area_km2": "217"
                                },
                                {
                                    "District": "Idukki",
                                    "State": "Kerala",
                                    "Growth": "-1.79%",
                                    "Literacy": "91.98999786376953",
                                    "Sex_Ratio": "1006",
                                    "Population": "1108974",
                                    "Area_km2": "4356"
                                },
                                {
                                    "District": "Imphal East",
                                    "State": "Manipur",
                                    "Growth": "15.51%",
                                    "Literacy": "81.94999694824219",
                                    "Sex_Ratio": "1017",
                                    "Population": "456113",
                                    "Area_km2": "709"
                                },
                                {
                                    "District": "Imphal West",
                                    "State": "Manipur",
                                    "Growth": "16.56%",
                                    "Literacy": "86.08000183105469",
                                    "Sex_Ratio": "1031",
                                    "Population": "517992",
                                    "Area_km2": "519"
                                },
                                {
                                    "District": "Indore",
                                    "State": "Madhya Pradesh",
                                    "Growth": "32.88%",
                                    "Literacy": "80.87000274658203",
                                    "Sex_Ratio": "928",
                                    "Population": "3276697",
                                    "Area_km2": "3898"
                                },
                                {
                                    "District": "Jabalpur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "14.51%",
                                    "Literacy": "81.06999969482422",
                                    "Sex_Ratio": "929",
                                    "Population": "2463289",
                                    "Area_km2": "5211"
                                },
                                {
                                    "District": "Jagatsinghapur",
                                    "State": "Orissa",
                                    "Growth": "7.50%",
                                    "Literacy": "86.58999633789062",
                                    "Sex_Ratio": "968",
                                    "Population": "1136971",
                                    "Area_km2": "1668"
                                },
                                {
                                    "District": "Jaintia Hills",
                                    "State": "Meghalaya",
                                    "Growth": "32.10%",
                                    "Literacy": "61.63999938964844",
                                    "Sex_Ratio": "1013",
                                    "Population": "395124",
                                    "Area_km2": "3819"
                                },
                                {
                                    "District": "Jaipur",
                                    "State": "Rajasthan",
                                    "Growth": "26.19%",
                                    "Literacy": "75.51000213623047",
                                    "Sex_Ratio": "910",
                                    "Population": "6626178",
                                    "Area_km2": "11143"
                                },
                                {
                                    "District": "Jaisalmer",
                                    "State": "Rajasthan",
                                    "Growth": "31.81%",
                                    "Literacy": "57.220001220703125",
                                    "Sex_Ratio": "852",
                                    "Population": "669919",
                                    "Area_km2": "38401"
                                },
                                {
                                    "District": "Jajapur",
                                    "State": "Orissa",
                                    "Growth": "12.49%",
                                    "Literacy": "80.12999725341797",
                                    "Sex_Ratio": "973",
                                    "Population": "1827192",
                                    "Area_km2": "2899"
                                },
                                {
                                    "District": "Jalandhar",
                                    "State": "Punjab",
                                    "Growth": "11.76%",
                                    "Literacy": "82.4800033569336",
                                    "Sex_Ratio": "915",
                                    "Population": "2193590",
                                    "Area_km2": "2624"
                                },
                                {
                                    "District": "Jalaun",
                                    "State": "Uttar Pradesh",
                                    "Growth": "16.19%",
                                    "Literacy": "73.75",
                                    "Sex_Ratio": "865",
                                    "Population": "1689974",
                                    "Area_km2": "4565"
                                },
                                {
                                    "District": "Jalgaon",
                                    "State": "Maharashtra",
                                    "Growth": "14.86%",
                                    "Literacy": "78.19999694824219",
                                    "Sex_Ratio": "925",
                                    "Population": "4229917",
                                    "Area_km2": "11765"
                                },
                                {
                                    "District": "Jalna",
                                    "State": "Maharashtra",
                                    "Growth": "21.46%",
                                    "Literacy": "71.5199966430664",
                                    "Sex_Ratio": "937",
                                    "Population": "1959046",
                                    "Area_km2": "7718"
                                },
                                {
                                    "District": "Jalor",
                                    "State": "Rajasthan",
                                    "Growth": "26.21%",
                                    "Literacy": "54.86000061035156",
                                    "Sex_Ratio": "952",
                                    "Population": "1828730",
                                    "Area_km2": "10640"
                                },
                                {
                                    "District": "Jalpaiguri",
                                    "State": "West Bengal",
                                    "Growth": "13.87%",
                                    "Literacy": "73.25",
                                    "Sex_Ratio": "953",
                                    "Population": "3872846",
                                    "Area_km2": "6227"
                                },
                                {
                                    "District": "Jammu",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "12.74%",
                                    "Literacy": "83.44999694824219",
                                    "Sex_Ratio": "880",
                                    "Population": "1529958",
                                    "Area_km2": "2342"
                                },
                                {
                                    "District": "Jamnagar",
                                    "State": "Gujarat",
                                    "Growth": "13.44%",
                                    "Literacy": "73.6500015258789",
                                    "Sex_Ratio": "939",
                                    "Population": "2160119",
                                    "Area_km2": "14184"
                                },
                                {
                                    "District": "Jamtara",
                                    "State": "Jharkhand",
                                    "Growth": "21.12%",
                                    "Literacy": "64.58999633789062",
                                    "Sex_Ratio": "954",
                                    "Population": "791042",
                                    "Area_km2": "1811"
                                },
                                {
                                    "District": "Jamui",
                                    "State": "Bihar",
                                    "Growth": "25.85%",
                                    "Literacy": "59.790000915527344",
                                    "Sex_Ratio": "922",
                                    "Population": "1760405",
                                    "Area_km2": "3098"
                                },
                                {
                                    "District": "Janjgir Champa",
                                    "State": "Chhattisgarh",
                                    "Growth": "22.94%",
                                    "Literacy": "73.06999969482422",
                                    "Sex_Ratio": "986",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Jashpur",
                                    "State": "Chhattisgarh",
                                    "Growth": "14.60%",
                                    "Literacy": "67.91999816894531",
                                    "Sex_Ratio": "1005",
                                    "Population": "851669",
                                    "Area_km2": "5838"
                                },
                                {
                                    "District": "Jaunpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.89%",
                                    "Literacy": "71.55000305175781",
                                    "Sex_Ratio": "1024",
                                    "Population": "4494204",
                                    "Area_km2": "4038"
                                },
                                {
                                    "District": "Jehanabad",
                                    "State": "Bihar",
                                    "Growth": "21.68%",
                                    "Literacy": "66.80000305175781",
                                    "Sex_Ratio": "922",
                                    "Population": "1125313",
                                    "Area_km2": "931"
                                },
                                {
                                    "District": "Jhabua",
                                    "State": "Madhya Pradesh",
                                    "Growth": "30.70%",
                                    "Literacy": "43.29999923706055",
                                    "Sex_Ratio": "990",
                                    "Population": "1025048",
                                    "Area_km2": "3600"
                                },
                                {
                                    "District": "Jhajjar",
                                    "State": "Haryana",
                                    "Growth": "8.90%",
                                    "Literacy": "80.6500015258789",
                                    "Sex_Ratio": "862",
                                    "Population": "958405",
                                    "Area_km2": "1834"
                                },
                                {
                                    "District": "Jhalawar",
                                    "State": "Rajasthan",
                                    "Growth": "19.55%",
                                    "Literacy": "61.5",
                                    "Sex_Ratio": "946",
                                    "Population": "1411129",
                                    "Area_km2": "6219"
                                },
                                {
                                    "District": "Jhansi",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.54%",
                                    "Literacy": "75.05000305175781",
                                    "Sex_Ratio": "890",
                                    "Population": "1998603",
                                    "Area_km2": "5024"
                                },
                                {
                                    "District": "Jharsuguda",
                                    "State": "Orissa",
                                    "Growth": "13.69%",
                                    "Literacy": "78.86000061035156",
                                    "Sex_Ratio": "953",
                                    "Population": "579505",
                                    "Area_km2": "2114"
                                },
                                {
                                    "District": "Jhunjhunun",
                                    "State": "Rajasthan",
                                    "Growth": "11.67%",
                                    "Literacy": "74.12999725341797",
                                    "Sex_Ratio": "950",
                                    "Population": "2137045",
                                    "Area_km2": "5928"
                                },
                                {
                                    "District": "Jind",
                                    "State": "Haryana",
                                    "Growth": "12.13%",
                                    "Literacy": "71.44000244140625",
                                    "Sex_Ratio": "871",
                                    "Population": "1334152",
                                    "Area_km2": "2702"
                                },
                                {
                                    "District": "Jodhpur",
                                    "State": "Rajasthan",
                                    "Growth": "27.74%",
                                    "Literacy": "65.94000244140625",
                                    "Sex_Ratio": "916",
                                    "Population": "3687165",
                                    "Area_km2": "22850"
                                },
                                {
                                    "District": "Jorhat",
                                    "State": "Assam",
                                    "Growth": "9.31%",
                                    "Literacy": "82.1500015258789",
                                    "Sex_Ratio": "962",
                                    "Population": "1092256",
                                    "Area_km2": "2851"
                                },
                                {
                                    "District": "Junagadh",
                                    "State": "Gujarat",
                                    "Growth": "12.05%",
                                    "Literacy": "75.80000305175781",
                                    "Sex_Ratio": "953",
                                    "Population": "2743082",
                                    "Area_km2": "8831"
                                },
                                {
                                    "District": "Jyotiba Phule Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "22.76%",
                                    "Literacy": "63.84000015258789",
                                    "Sex_Ratio": "910",
                                    "Population": "1840221",
                                    "Area_km2": "2249"
                                },
                                {
                                    "District": "Kabirdham",
                                    "State": "Chhattisgarh",
                                    "Growth": "40.71%",
                                    "Literacy": "60.849998474121094",
                                    "Sex_Ratio": "996",
                                    "Population": "822526",
                                    "Area_km2": "4235"
                                },
                                {
                                    "District": "Kachchh",
                                    "State": "Gujarat",
                                    "Growth": "32.16%",
                                    "Literacy": "70.58999633789062",
                                    "Sex_Ratio": "908",
                                    "Population": "2092371",
                                    "Area_km2": "45674"
                                },
                                {
                                    "District": "Kaimur",
                                    "State": "Bihar",
                                    "Growth": "26.17%",
                                    "Literacy": "69.33999633789062",
                                    "Sex_Ratio": "920",
                                    "Population": "1626384",
                                    "Area_km2": "3332"
                                },
                                {
                                    "District": "Kaithal",
                                    "State": "Haryana",
                                    "Growth": "13.55%",
                                    "Literacy": "69.1500015258789",
                                    "Sex_Ratio": "881",
                                    "Population": "1074304",
                                    "Area_km2": "2317"
                                },
                                {
                                    "District": "Kalahandi",
                                    "State": "Orissa",
                                    "Growth": "18.07%",
                                    "Literacy": "59.220001220703125",
                                    "Sex_Ratio": "1003",
                                    "Population": "1576869",
                                    "Area_km2": "7920"
                                },
                                {
                                    "District": "Kamrup",
                                    "State": "Assam",
                                    "Growth": "15.69%",
                                    "Literacy": "75.55000305175781",
                                    "Sex_Ratio": "949",
                                    "Population": "1517542",
                                    "Area_km2": "3105"
                                },
                                {
                                    "District": "Kamrup Metropolitan",
                                    "State": "Assam",
                                    "Growth": "18.34%",
                                    "Literacy": "88.70999908447266",
                                    "Sex_Ratio": "936",
                                    "Population": "1253938",
                                    "Area_km2": "955"
                                },
                                {
                                    "District": "Kancheepuram",
                                    "State": "Tamil Nadu",
                                    "Growth": "38.95%",
                                    "Literacy": "84.48999786376953",
                                    "Sex_Ratio": "986",
                                    "Population": "3998252",
                                    "Area_km2": "4483"
                                },
                                {
                                    "District": "Kandhamal",
                                    "State": "Orissa",
                                    "Growth": "13.10%",
                                    "Literacy": "64.12999725341797",
                                    "Sex_Ratio": "1037",
                                    "Population": "733110",
                                    "Area_km2": "8021"
                                },
                                {
                                    "District": "Kangra",
                                    "State": "Himachal Pradesh",
                                    "Growth": "12.77%",
                                    "Literacy": "85.66999816894531",
                                    "Sex_Ratio": "1012",
                                    "Population": "1510075",
                                    "Area_km2": "5739"
                                },
                                {
                                    "District": "Kanker",
                                    "State": "Chhattisgarh",
                                    "Growth": "15.06%",
                                    "Literacy": "70.29000091552734",
                                    "Sex_Ratio": "1006",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Kannauj",
                                    "State": "Uttar Pradesh",
                                    "Growth": "19.27%",
                                    "Literacy": "72.69999694824219",
                                    "Sex_Ratio": "879",
                                    "Population": "1656616",
                                    "Area_km2": "2093"
                                },
                                {
                                    "District": "Kanniyakumari",
                                    "State": "Tamil Nadu",
                                    "Growth": "11.60%",
                                    "Literacy": "91.75",
                                    "Sex_Ratio": "1019",
                                    "Population": "1870374",
                                    "Area_km2": "1684"
                                },
                                {
                                    "District": "Kannur",
                                    "State": "Kerala",
                                    "Growth": "4.73%",
                                    "Literacy": "95.0999984741211",
                                    "Sex_Ratio": "1136",
                                    "Population": "2523003",
                                    "Area_km2": "2961"
                                },
                                {
                                    "District": "Kanpur Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "9.92%",
                                    "Literacy": "79.6500015258789",
                                    "Sex_Ratio": "862",
                                    "Population": "4581268",
                                    "Area_km2": "3155"
                                },
                                {
                                    "District": "Kanshiram Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "16.93%",
                                    "Literacy": "61.02000045776367",
                                    "Sex_Ratio": "880",
                                    "Population": "1436719",
                                    "Area_km2": "1955"
                                },
                                {
                                    "District": "Kapurthala",
                                    "State": "Punjab",
                                    "Growth": "8.04%",
                                    "Literacy": "79.06999969482422",
                                    "Sex_Ratio": "912",
                                    "Population": "815168",
                                    "Area_km2": "1633"
                                },
                                {
                                    "District": "Karaikal",
                                    "State": "Puducherry",
                                    "Growth": "17.23%",
                                    "Literacy": "87.05000305175781",
                                    "Sex_Ratio": "1047",
                                    "Population": "200222",
                                    "Area_km2": "157"
                                },
                                {
                                    "District": "Karauli",
                                    "State": "Rajasthan",
                                    "Growth": "20.55%",
                                    "Literacy": "66.22000122070312",
                                    "Sex_Ratio": "861",
                                    "Population": "1458248",
                                    "Area_km2": "5524"
                                },
                                {
                                    "District": "Karbi Anglong",
                                    "State": "Assam",
                                    "Growth": "17.58%",
                                    "Literacy": "69.25",
                                    "Sex_Ratio": "951",
                                    "Population": "956313",
                                    "Area_km2": "10434"
                                },
                                {
                                    "District": "Kargil",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "18.02%",
                                    "Literacy": "71.33999633789062",
                                    "Sex_Ratio": "810",
                                    "Population": "140802",
                                    "Area_km2": "14036"
                                },
                                {
                                    "District": "Karimganj",
                                    "State": "Assam",
                                    "Growth": "21.90%",
                                    "Literacy": "78.22000122070312",
                                    "Sex_Ratio": "963",
                                    "Population": "1228686",
                                    "Area_km2": "1809"
                                },
                                {
                                    "District": "Karimnagar",
                                    "State": "Andhra Pradesh",
                                    "Growth": "8.15%",
                                    "Literacy": "64.1500015258789",
                                    "Sex_Ratio": "1008",
                                    "Population": "3776269",
                                    "Area_km2": "11823"
                                },
                                {
                                    "District": "Karnal",
                                    "State": "Haryana",
                                    "Growth": "18.14%",
                                    "Literacy": "74.7300033569336",
                                    "Sex_Ratio": "887",
                                    "Population": "1505324",
                                    "Area_km2": "2520"
                                },
                                {
                                    "District": "Karur",
                                    "State": "Tamil Nadu",
                                    "Growth": "13.77%",
                                    "Literacy": "75.5999984741211",
                                    "Sex_Ratio": "1015",
                                    "Population": "1064493",
                                    "Area_km2": "2904"
                                },
                                {
                                    "District": "Kasaragod",
                                    "State": "Kerala",
                                    "Growth": "8.58%",
                                    "Literacy": "90.08999633789062",
                                    "Sex_Ratio": "1080",
                                    "Population": "1307375",
                                    "Area_km2": "1989"
                                },
                                {
                                    "District": "Kathua",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "20.53%",
                                    "Literacy": "73.08999633789062",
                                    "Sex_Ratio": "890",
                                    "Population": "616435",
                                    "Area_km2": "2502"
                                },
                                {
                                    "District": "Katihar",
                                    "State": "Bihar",
                                    "Growth": "28.35%",
                                    "Literacy": "52.2400016784668",
                                    "Sex_Ratio": "919",
                                    "Population": "3071029",
                                    "Area_km2": "3057"
                                },
                                {
                                    "District": "Katni",
                                    "State": "Madhya Pradesh",
                                    "Growth": "21.41%",
                                    "Literacy": "71.9800033569336",
                                    "Sex_Ratio": "952",
                                    "Population": "1292042",
                                    "Area_km2": "4950"
                                },
                                {
                                    "District": "Kaushambi",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.70%",
                                    "Literacy": "61.279998779296875",
                                    "Sex_Ratio": "908",
                                    "Population": "1599596",
                                    "Area_km2": "1779"
                                },
                                {
                                    "District": "Kendrapara",
                                    "State": "Orissa",
                                    "Growth": "10.63%",
                                    "Literacy": "85.1500015258789",
                                    "Sex_Ratio": "1007",
                                    "Population": "1440361",
                                    "Area_km2": "2644"
                                },
                                {
                                    "District": "Kendujhar",
                                    "State": "Orissa",
                                    "Growth": "15.35%",
                                    "Literacy": "68.23999786376953",
                                    "Sex_Ratio": "988",
                                    "Population": "1801733",
                                    "Area_km2": "8303"
                                },
                                {
                                    "District": "Khagaria",
                                    "State": "Bihar",
                                    "Growth": "30.19%",
                                    "Literacy": "57.91999816894531",
                                    "Sex_Ratio": "886",
                                    "Population": "1666886",
                                    "Area_km2": "1486"
                                },
                                {
                                    "District": "Khammam",
                                    "State": "Andhra Pradesh",
                                    "Growth": "8.47%",
                                    "Literacy": "64.80999755859375",
                                    "Sex_Ratio": "1011",
                                    "Population": "2797370",
                                    "Area_km2": "16029"
                                },
                                {
                                    "District": "Kheda",
                                    "State": "Gujarat",
                                    "Growth": "13.62%",
                                    "Literacy": "82.6500015258789",
                                    "Sex_Ratio": "940",
                                    "Population": "2299885",
                                    "Area_km2": "3953"
                                },
                                {
                                    "District": "Kheri",
                                    "State": "Uttar Pradesh",
                                    "Growth": "25.38%",
                                    "Literacy": "60.560001373291016",
                                    "Sex_Ratio": "894",
                                    "Population": "4021243",
                                    "Area_km2": "7680"
                                },
                                {
                                    "District": "Khordha",
                                    "State": "Orissa",
                                    "Growth": "19.94%",
                                    "Literacy": "86.87999725341797",
                                    "Sex_Ratio": "929",
                                    "Population": "2251673",
                                    "Area_km2": "2813"
                                },
                                {
                                    "District": "Khunti",
                                    "State": "Jharkhand",
                                    "Growth": "22.32%",
                                    "Literacy": "63.86000061035156",
                                    "Sex_Ratio": "997",
                                    "Population": "531885",
                                    "Area_km2": "2535"
                                },
                                {
                                    "District": "Kinnaur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "7.39%",
                                    "Literacy": "80",
                                    "Sex_Ratio": "819",
                                    "Population": "84121",
                                    "Area_km2": "6401"
                                },
                                {
                                    "District": "Kiphire",
                                    "State": "Nagaland",
                                    "Growth": "38.58%",
                                    "Literacy": "69.54000091552734",
                                    "Sex_Ratio": "956",
                                    "Population": "74004",
                                    "Area_km2": "1130"
                                },
                                {
                                    "District": "Kishanganj",
                                    "State": "Bihar",
                                    "Growth": "30.40%",
                                    "Literacy": "55.459999084472656",
                                    "Sex_Ratio": "950",
                                    "Population": "1690400",
                                    "Area_km2": "1884"
                                },
                                {
                                    "District": "Kishtwar",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "20.88%",
                                    "Literacy": "56.20000076293945",
                                    "Sex_Ratio": "920",
                                    "Population": "230696",
                                    "Area_km2": "1644"
                                },
                                {
                                    "District": "Koch Bihar",
                                    "State": "West Bengal",
                                    "Growth": "13.71%",
                                    "Literacy": "74.77999877929688",
                                    "Sex_Ratio": "942",
                                    "Population": "2819086",
                                    "Area_km2": "3387"
                                },
                                {
                                    "District": "Kodagu",
                                    "State": "Karnataka",
                                    "Growth": "1.09%",
                                    "Literacy": "82.61000061035156",
                                    "Sex_Ratio": "1019",
                                    "Population": "554519",
                                    "Area_km2": "4102"
                                },
                                {
                                    "District": "Kodarma",
                                    "State": "Jharkhand",
                                    "Growth": "43.42%",
                                    "Literacy": "66.83999633789062",
                                    "Sex_Ratio": "950",
                                    "Population": "716259",
                                    "Area_km2": "2540"
                                },
                                {
                                    "District": "Kohima",
                                    "State": "Nagaland",
                                    "Growth": "131.81%",
                                    "Literacy": "85.2300033569336",
                                    "Sex_Ratio": "928",
                                    "Population": "267988",
                                    "Area_km2": "1463"
                                },
                                {
                                    "District": "Kokrajhar",
                                    "State": "Assam",
                                    "Growth": "5.21%",
                                    "Literacy": "65.22000122070312",
                                    "Sex_Ratio": "959",
                                    "Population": "887142",
                                    "Area_km2": "3296"
                                },
                                {
                                    "District": "Kolar",
                                    "State": "Karnataka",
                                    "Growth": "10.77%",
                                    "Literacy": "74.38999938964844",
                                    "Sex_Ratio": "979",
                                    "Population": "1536401",
                                    "Area_km2": "3979"
                                },
                                {
                                    "District": "Kolasib",
                                    "State": "Mizoram",
                                    "Growth": "27.28%",
                                    "Literacy": "93.5",
                                    "Sex_Ratio": "956",
                                    "Population": "83955",
                                    "Area_km2": "1382"
                                },
                                {
                                    "District": "Kolhapur",
                                    "State": "Maharashtra",
                                    "Growth": "10.01%",
                                    "Literacy": "81.51000213623047",
                                    "Sex_Ratio": "957",
                                    "Population": "3876001",
                                    "Area_km2": "7685"
                                },
                                {
                                    "District": "Kolkata",
                                    "State": "West Bengal",
                                    "Growth": "-1.67%",
                                    "Literacy": "86.30999755859375",
                                    "Sex_Ratio": "908",
                                    "Population": "4496694",
                                    "Area_km2": "185"
                                },
                                {
                                    "District": "Kollam",
                                    "State": "Kerala",
                                    "Growth": "1.94%",
                                    "Literacy": "94.08999633789062",
                                    "Sex_Ratio": "1113",
                                    "Population": "2635375",
                                    "Area_km2": "2483"
                                },
                                {
                                    "District": "Koppal",
                                    "State": "Karnataka",
                                    "Growth": "16.21%",
                                    "Literacy": "68.08999633789062",
                                    "Sex_Ratio": "986",
                                    "Population": "1389920",
                                    "Area_km2": "5570"
                                },
                                {
                                    "District": "Koraput",
                                    "State": "Orissa",
                                    "Growth": "16.86%",
                                    "Literacy": "49.209999084472656",
                                    "Sex_Ratio": "1032",
                                    "Population": "1379647",
                                    "Area_km2": "8807"
                                },
                                {
                                    "District": "Korba",
                                    "State": "Chhattisgarh",
                                    "Growth": "19.25%",
                                    "Literacy": "72.37000274658203",
                                    "Sex_Ratio": "969",
                                    "Population": "1206640",
                                    "Area_km2": "6598"
                                },
                                {
                                    "District": "Korea",
                                    "State": "Chhattisgarh",
                                    "Growth": "12.38%",
                                    "Literacy": "70.63999938964844",
                                    "Sex_Ratio": "968",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Kota",
                                    "State": "Rajasthan",
                                    "Growth": "24.39%",
                                    "Literacy": "76.55999755859375",
                                    "Sex_Ratio": "911",
                                    "Population": "1951014",
                                    "Area_km2": "5217"
                                },
                                {
                                    "District": "Kottayam",
                                    "State": "Kerala",
                                    "Growth": "1.07%",
                                    "Literacy": "97.20999908447266",
                                    "Sex_Ratio": "1039",
                                    "Population": "1974551",
                                    "Area_km2": "2206"
                                },
                                {
                                    "District": "Kozhikode",
                                    "State": "Kerala",
                                    "Growth": "7.20%",
                                    "Literacy": "95.08000183105469",
                                    "Sex_Ratio": "1098",
                                    "Population": "3086293",
                                    "Area_km2": "2345"
                                },
                                {
                                    "District": "Krishna",
                                    "State": "Andhra Pradesh",
                                    "Growth": "7.87%",
                                    "Literacy": "73.73999786376953",
                                    "Sex_Ratio": "992",
                                    "Population": "4517398",
                                    "Area_km2": "8727"
                                },
                                {
                                    "District": "Krishnagiri",
                                    "State": "Tamil Nadu",
                                    "Growth": "20.41%",
                                    "Literacy": "71.45999908447266",
                                    "Sex_Ratio": "958",
                                    "Population": "1879809",
                                    "Area_km2": "5129"
                                },
                                {
                                    "District": "Kulgam",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "7.73%",
                                    "Literacy": "59.22999954223633",
                                    "Sex_Ratio": "951",
                                    "Population": "424483",
                                    "Area_km2": "410"
                                },
                                {
                                    "District": "Kullu",
                                    "State": "Himachal Pradesh",
                                    "Growth": "14.76%",
                                    "Literacy": "79.4000015258789",
                                    "Sex_Ratio": "942",
                                    "Population": "437903",
                                    "Area_km2": "5503"
                                },
                                {
                                    "District": "Kupwara",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "33.82%",
                                    "Literacy": "64.51000213623047",
                                    "Sex_Ratio": "835",
                                    "Population": "870354",
                                    "Area_km2": "2379"
                                },
                                {
                                    "District": "Kurnool",
                                    "State": "Andhra Pradesh",
                                    "Growth": "14.85%",
                                    "Literacy": "59.970001220703125",
                                    "Sex_Ratio": "988",
                                    "Population": "4053463",
                                    "Area_km2": "17658"
                                },
                                {
                                    "District": "Kurukshetra",
                                    "State": "Haryana",
                                    "Growth": "16.86%",
                                    "Literacy": "76.30999755859375",
                                    "Sex_Ratio": "888",
                                    "Population": "964655",
                                    "Area_km2": "1530"
                                },
                                {
                                    "District": "Kurung Kumey",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "116.56%",
                                    "Literacy": "48.75",
                                    "Sex_Ratio": "1032",
                                    "Population": "92076",
                                    "Area_km2": "6040"
                                },
                                {
                                    "District": "Kushinagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.20%",
                                    "Literacy": "65.25",
                                    "Sex_Ratio": "961",
                                    "Population": "3564544",
                                    "Area_km2": "2905"
                                },
                                {
                                    "District": "Lahul and Spiti",
                                    "State": "Himachal Pradesh",
                                    "Growth": "-5.00%",
                                    "Literacy": "76.80999755859375",
                                    "Sex_Ratio": "903",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Lakhimpur",
                                    "State": "Assam",
                                    "Growth": "17.22%",
                                    "Literacy": "77.19999694824219",
                                    "Sex_Ratio": "968",
                                    "Population": "1042137",
                                    "Area_km2": "2277"
                                },
                                {
                                    "District": "Lakhisarai",
                                    "State": "Bihar",
                                    "Growth": "24.77%",
                                    "Literacy": "62.41999816894531",
                                    "Sex_Ratio": "902",
                                    "Population": "1000912",
                                    "Area_km2": "1228"
                                },
                                {
                                    "District": "Lakshadweep",
                                    "State": "Lakshadweep",
                                    "Growth": "6.30%",
                                    "Literacy": "91.8499984741211",
                                    "Sex_Ratio": "946",
                                    "Population": "64473",
                                    "Area_km2": "30"
                                },
                                {
                                    "District": "Lalitpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "24.94%",
                                    "Literacy": "63.52000045776367",
                                    "Sex_Ratio": "906",
                                    "Population": "1221592",
                                    "Area_km2": "5039"
                                },
                                {
                                    "District": "Latehar",
                                    "State": "Jharkhand",
                                    "Growth": "29.61%",
                                    "Literacy": "59.5099983215332",
                                    "Sex_Ratio": "967",
                                    "Population": "726978",
                                    "Area_km2": "4291"
                                },
                                {
                                    "District": "Latur",
                                    "State": "Maharashtra",
                                    "Growth": "17.97%",
                                    "Literacy": "77.26000213623047",
                                    "Sex_Ratio": "928",
                                    "Population": "2454196",
                                    "Area_km2": "7157"
                                },
                                {
                                    "District": "Lawngtlai",
                                    "State": "Mizoram",
                                    "Growth": "60.14%",
                                    "Literacy": "65.87999725341797",
                                    "Sex_Ratio": "945",
                                    "Population": "117894",
                                    "Area_km2": "2557"
                                },
                                {
                                    "District": "Leh",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "13.87%",
                                    "Literacy": "77.19999694824219",
                                    "Sex_Ratio": "690",
                                    "Population": "133487",
                                    "Area_km2": "45110"
                                },
                                {
                                    "District": "Lohardaga",
                                    "State": "Jharkhand",
                                    "Growth": "26.68%",
                                    "Literacy": "67.61000061035156",
                                    "Sex_Ratio": "985",
                                    "Population": "461790",
                                    "Area_km2": "1502"
                                },
                                {
                                    "District": "Lohit",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "16.59%",
                                    "Literacy": "68.18000030517578",
                                    "Sex_Ratio": "912",
                                    "Population": "145726",
                                    "Area_km2": "5212"
                                },
                                {
                                    "District": "Longleng",
                                    "State": "Nagaland",
                                    "Growth": "-21.57%",
                                    "Literacy": "72.16999816894531",
                                    "Sex_Ratio": "905",
                                    "Population": "50484",
                                    "Area_km2": "562"
                                },
                                {
                                    "District": "Lower Dibang Valley",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "7.20%",
                                    "Literacy": "69.12999725341797",
                                    "Sex_Ratio": "928",
                                    "Population": "54080",
                                    "Area_km2": "3900"
                                },
                                {
                                    "District": "Lower Subansiri",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "49.00%",
                                    "Literacy": "74.3499984741211",
                                    "Sex_Ratio": "984",
                                    "Population": "83030",
                                    "Area_km2": "3508"
                                },
                                {
                                    "District": "Lucknow",
                                    "State": "Uttar Pradesh",
                                    "Growth": "25.82%",
                                    "Literacy": "77.29000091552734",
                                    "Sex_Ratio": "917",
                                    "Population": "4589838",
                                    "Area_km2": "2528"
                                },
                                {
                                    "District": "Ludhiana",
                                    "State": "Punjab",
                                    "Growth": "15.36%",
                                    "Literacy": "82.19999694824219",
                                    "Sex_Ratio": "873",
                                    "Population": "3498739",
                                    "Area_km2": "3578"
                                },
                                {
                                    "District": "Lunglei",
                                    "State": "Mizoram",
                                    "Growth": "17.64%",
                                    "Literacy": "88.86000061035156",
                                    "Sex_Ratio": "947",
                                    "Population": "161428",
                                    "Area_km2": "4536"
                                },
                                {
                                    "District": "Madhepura",
                                    "State": "Bihar",
                                    "Growth": "31.12%",
                                    "Literacy": "52.25",
                                    "Sex_Ratio": "911",
                                    "Population": "2001762",
                                    "Area_km2": "1788"
                                },
                                {
                                    "District": "Madhubani",
                                    "State": "Bihar",
                                    "Growth": "25.51%",
                                    "Literacy": "58.619998931884766",
                                    "Sex_Ratio": "926",
                                    "Population": "4487379",
                                    "Area_km2": "3501"
                                },
                                {
                                    "District": "Madurai",
                                    "State": "Tamil Nadu",
                                    "Growth": "17.84%",
                                    "Literacy": "83.44999694824219",
                                    "Sex_Ratio": "990",
                                    "Population": "3038252",
                                    "Area_km2": "3710"
                                },
                                {
                                    "District": "Mahamaya Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.12%",
                                    "Literacy": "71.58999633789062",
                                    "Sex_Ratio": "871",
                                    "Population": "1564708",
                                    "Area_km2": "1840"
                                },
                                {
                                    "District": "Maharajganj",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.50%",
                                    "Literacy": "62.7599983215332",
                                    "Sex_Ratio": "943",
                                    "Population": "2684703",
                                    "Area_km2": "2952"
                                },
                                {
                                    "District": "Mahasamund",
                                    "State": "Chhattisgarh",
                                    "Growth": "20.05%",
                                    "Literacy": "71.0199966430664",
                                    "Sex_Ratio": "1017",
                                    "Population": "1032754",
                                    "Area_km2": "4790"
                                },
                                {
                                    "District": "Mahbubnagar",
                                    "State": "Andhra Pradesh",
                                    "Growth": "15.34%",
                                    "Literacy": "55.040000915527344",
                                    "Sex_Ratio": "977",
                                    "Population": "4053028",
                                    "Area_km2": "18432"
                                },
                                {
                                    "District": "Mahe",
                                    "State": "Puducherry",
                                    "Growth": "13.54%",
                                    "Literacy": "97.87000274658203",
                                    "Sex_Ratio": "1184",
                                    "Population": "41816",
                                    "Area_km2": "9"
                                },
                                {
                                    "District": "Mahendragarh",
                                    "State": "Haryana",
                                    "Growth": "13.48%",
                                    "Literacy": "77.72000122070312",
                                    "Sex_Ratio": "895",
                                    "Population": "922088",
                                    "Area_km2": "1899"
                                },
                                {
                                    "District": "Mahesana",
                                    "State": "Gujarat",
                                    "Growth": "10.73%",
                                    "Literacy": "83.61000061035156",
                                    "Sex_Ratio": "926",
                                    "Population": "2035064",
                                    "Area_km2": "4401"
                                },
                                {
                                    "District": "Mahoba",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.64%",
                                    "Literacy": "65.2699966430664",
                                    "Sex_Ratio": "878",
                                    "Population": "875958",
                                    "Area_km2": "3144"
                                },
                                {
                                    "District": "Mainpuri",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.02%",
                                    "Literacy": "75.98999786376953",
                                    "Sex_Ratio": "881",
                                    "Population": "1868529",
                                    "Area_km2": "2760"
                                },
                                {
                                    "District": "Malappuram",
                                    "State": "Kerala",
                                    "Growth": "13.45%",
                                    "Literacy": "93.56999969482422",
                                    "Sex_Ratio": "1098",
                                    "Population": "4112920",
                                    "Area_km2": "3554"
                                },
                                {
                                    "District": "Maldah",
                                    "State": "West Bengal",
                                    "Growth": "21.22%",
                                    "Literacy": "61.72999954223633",
                                    "Sex_Ratio": "944",
                                    "Population": "3988845",
                                    "Area_km2": "3733"
                                },
                                {
                                    "District": "Malkangiri",
                                    "State": "Orissa",
                                    "Growth": "21.62%",
                                    "Literacy": "48.540000915527344",
                                    "Sex_Ratio": "1020",
                                    "Population": "613192",
                                    "Area_km2": "5791"
                                },
                                {
                                    "District": "Mamit",
                                    "State": "Mizoram",
                                    "Growth": "37.56%",
                                    "Literacy": "84.93000030517578",
                                    "Sex_Ratio": "927",
                                    "Population": "86364",
                                    "Area_km2": "3025"
                                },
                                {
                                    "District": "Mandi",
                                    "State": "Himachal Pradesh",
                                    "Growth": "10.92%",
                                    "Literacy": "81.52999877929688",
                                    "Sex_Ratio": "1007",
                                    "Population": "999777",
                                    "Area_km2": "3950"
                                },
                                {
                                    "District": "Mandla",
                                    "State": "Madhya Pradesh",
                                    "Growth": "17.97%",
                                    "Literacy": "66.87000274658203",
                                    "Sex_Ratio": "1008",
                                    "Population": "1054905",
                                    "Area_km2": "5800"
                                },
                                {
                                    "District": "Mandsaur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "13.24%",
                                    "Literacy": "71.77999877929688",
                                    "Sex_Ratio": "963",
                                    "Population": "1340411",
                                    "Area_km2": "5535"
                                },
                                {
                                    "District": "Mandya",
                                    "State": "Karnataka",
                                    "Growth": "2.38%",
                                    "Literacy": "70.4000015258789",
                                    "Sex_Ratio": "995",
                                    "Population": "1805769",
                                    "Area_km2": "4962"
                                },
                                {
                                    "District": "Mansa",
                                    "State": "Punjab",
                                    "Growth": "11.76%",
                                    "Literacy": "61.83000183105469",
                                    "Sex_Ratio": "883",
                                    "Population": "769751",
                                    "Area_km2": "2198"
                                },
                                {
                                    "District": "Mathura",
                                    "State": "Uttar Pradesh",
                                    "Growth": "22.78%",
                                    "Literacy": "70.36000061035156",
                                    "Sex_Ratio": "863",
                                    "Population": "2547184",
                                    "Area_km2": "3340"
                                },
                                {
                                    "District": "Mau",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.98%",
                                    "Literacy": "73.08999633789062",
                                    "Sex_Ratio": "979",
                                    "Population": "2205968",
                                    "Area_km2": "1713"
                                },
                                {
                                    "District": "Mayurbhanj",
                                    "State": "Orissa",
                                    "Growth": "13.33%",
                                    "Literacy": "63.16999816894531",
                                    "Sex_Ratio": "1006",
                                    "Population": "2519738",
                                    "Area_km2": "10418"
                                },
                                {
                                    "District": "Medak",
                                    "State": "Andhra Pradesh",
                                    "Growth": "13.60%",
                                    "Literacy": "61.41999816894531",
                                    "Sex_Ratio": "992",
                                    "Population": "3033288",
                                    "Area_km2": "9699"
                                },
                                {
                                    "District": "Meerut",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.89%",
                                    "Literacy": "72.83999633789062",
                                    "Sex_Ratio": "886",
                                    "Population": "3443689",
                                    "Area_km2": "2559"
                                },
                                {
                                    "District": "Mewat",
                                    "State": "Haryana",
                                    "Growth": "37.93%",
                                    "Literacy": "54.08000183105469",
                                    "Sex_Ratio": "907",
                                    "Population": "1089263",
                                    "Area_km2": "1507"
                                },
                                {
                                    "District": "Mirzapur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.00%",
                                    "Literacy": "68.4800033569336",
                                    "Sex_Ratio": "903",
                                    "Population": "2496970",
                                    "Area_km2": "4405"
                                },
                                {
                                    "District": "Moga",
                                    "State": "Punjab",
                                    "Growth": "11.28%",
                                    "Literacy": "70.68000030517578",
                                    "Sex_Ratio": "893",
                                    "Population": "995746",
                                    "Area_km2": "2242"
                                },
                                {
                                    "District": "Mohali",
                                    "State": "Punjab",
                                    "Growth": "33.15%",
                                    "Literacy": "83.80000305175781",
                                    "Sex_Ratio": "879",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Mokokchung",
                                    "State": "Nagaland",
                                    "Growth": "60.94%",
                                    "Literacy": "91.62000274658203",
                                    "Sex_Ratio": "925",
                                    "Population": "194622",
                                    "Area_km2": "1615"
                                },
                                {
                                    "District": "Mon",
                                    "State": "Nagaland",
                                    "Growth": "80.36%",
                                    "Literacy": "56.9900016784668",
                                    "Sex_Ratio": "899",
                                    "Population": "250260",
                                    "Area_km2": "1786"
                                },
                                {
                                    "District": "Moradabad",
                                    "State": "Uttar Pradesh",
                                    "Growth": "25.22%",
                                    "Literacy": "56.77000045776367",
                                    "Sex_Ratio": "906",
                                    "Population": "4772006",
                                    "Area_km2": "3718"
                                },
                                {
                                    "District": "Morena",
                                    "State": "Madhya Pradesh",
                                    "Growth": "23.44%",
                                    "Literacy": "71.02999877929688",
                                    "Sex_Ratio": "840",
                                    "Population": "1965970",
                                    "Area_km2": "4989"
                                },
                                {
                                    "District": "Morigaon",
                                    "State": "Assam",
                                    "Growth": "23.34%",
                                    "Literacy": "68.02999877929688",
                                    "Sex_Ratio": "967",
                                    "Population": "957423",
                                    "Area_km2": "1551"
                                },
                                {
                                    "District": "Muktsar",
                                    "State": "Punjab",
                                    "Growth": "16.00%",
                                    "Literacy": "65.80999755859375",
                                    "Sex_Ratio": "896",
                                    "Population": "901896",
                                    "Area_km2": "2593"
                                },
                                {
                                    "District": "Mumbai City",
                                    "State": "Maharashtra",
                                    "Growth": "-7.57%",
                                    "Literacy": "89.20999908447266",
                                    "Sex_Ratio": "832",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Mumbai Suburban",
                                    "State": "Maharashtra",
                                    "Growth": "8.29%",
                                    "Literacy": "89.91000366210938",
                                    "Sex_Ratio": "860",
                                    "Population": "9356962",
                                    "Area_km2": "446"
                                },
                                {
                                    "District": "Munger",
                                    "State": "Bihar",
                                    "Growth": "20.21%",
                                    "Literacy": "70.45999908447266",
                                    "Sex_Ratio": "876",
                                    "Population": "1367765",
                                    "Area_km2": "1419"
                                },
                                {
                                    "District": "Murshidabad",
                                    "State": "West Bengal",
                                    "Growth": "21.09%",
                                    "Literacy": "66.58999633789062",
                                    "Sex_Ratio": "958",
                                    "Population": "7103807",
                                    "Area_km2": "5324"
                                },
                                {
                                    "District": "Muzaffarnagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "16.94%",
                                    "Literacy": "69.12000274658203",
                                    "Sex_Ratio": "889",
                                    "Population": "4143512",
                                    "Area_km2": "4008"
                                },
                                {
                                    "District": "Muzaffarpur",
                                    "State": "Bihar",
                                    "Growth": "28.14%",
                                    "Literacy": "63.43000030517578",
                                    "Sex_Ratio": "900",
                                    "Population": "4801062",
                                    "Area_km2": "3172"
                                },
                                {
                                    "District": "Mysore",
                                    "State": "Karnataka",
                                    "Growth": "13.63%",
                                    "Literacy": "72.79000091552734",
                                    "Sex_Ratio": "985",
                                    "Population": "3001127",
                                    "Area_km2": "6307"
                                },
                                {
                                    "District": "Nabarangapur",
                                    "State": "Orissa",
                                    "Growth": "19.03%",
                                    "Literacy": "46.43000030517578",
                                    "Sex_Ratio": "1019",
                                    "Population": "1220946",
                                    "Area_km2": "5291"
                                },
                                {
                                    "District": "Nadia",
                                    "State": "West Bengal",
                                    "Growth": "12.22%",
                                    "Literacy": "74.97000122070312",
                                    "Sex_Ratio": "947",
                                    "Population": "5167600",
                                    "Area_km2": "3927"
                                },
                                {
                                    "District": "Nagaon",
                                    "State": "Assam",
                                    "Growth": "22.00%",
                                    "Literacy": "72.37000274658203",
                                    "Sex_Ratio": "962",
                                    "Population": "2823768",
                                    "Area_km2": "3973"
                                },
                                {
                                    "District": "Nagapattinam",
                                    "State": "Tamil Nadu",
                                    "Growth": "8.57%",
                                    "Literacy": "83.58999633789062",
                                    "Sex_Ratio": "1025",
                                    "Population": "1616450",
                                    "Area_km2": "2569"
                                },
                                {
                                    "District": "Nagaur",
                                    "State": "Rajasthan",
                                    "Growth": "19.20%",
                                    "Literacy": "62.79999923706055",
                                    "Sex_Ratio": "950",
                                    "Population": "3307743",
                                    "Area_km2": "17718"
                                },
                                {
                                    "District": "Nagpur",
                                    "State": "Maharashtra",
                                    "Growth": "14.40%",
                                    "Literacy": "88.38999938964844",
                                    "Sex_Ratio": "951",
                                    "Population": "4653570",
                                    "Area_km2": "9892"
                                },
                                {
                                    "District": "Nainital",
                                    "State": "Uttarakhand",
                                    "Growth": "25.13%",
                                    "Literacy": "83.87999725341797",
                                    "Sex_Ratio": "934",
                                    "Population": "954605",
                                    "Area_km2": "4251"
                                },
                                {
                                    "District": "Nalanda",
                                    "State": "Bihar",
                                    "Growth": "21.39%",
                                    "Literacy": "64.43000030517578",
                                    "Sex_Ratio": "922",
                                    "Population": "2877653",
                                    "Area_km2": "2355"
                                },
                                {
                                    "District": "Nalbari",
                                    "State": "Assam",
                                    "Growth": "11.99%",
                                    "Literacy": "78.62999725341797",
                                    "Sex_Ratio": "949",
                                    "Population": "771639",
                                    "Area_km2": "1052"
                                },
                                {
                                    "District": "Nalgonda",
                                    "State": "Andhra Pradesh",
                                    "Growth": "7.41%",
                                    "Literacy": "64.19999694824219",
                                    "Sex_Ratio": "983",
                                    "Population": "3488809",
                                    "Area_km2": "14240"
                                },
                                {
                                    "District": "Namakkal",
                                    "State": "Tamil Nadu",
                                    "Growth": "15.61%",
                                    "Literacy": "74.62999725341797",
                                    "Sex_Ratio": "986",
                                    "Population": "1726601",
                                    "Area_km2": "3420"
                                },
                                {
                                    "District": "Nanded",
                                    "State": "Maharashtra",
                                    "Growth": "16.86%",
                                    "Literacy": "75.44999694824219",
                                    "Sex_Ratio": "943",
                                    "Population": "3361292",
                                    "Area_km2": "10528"
                                },
                                {
                                    "District": "Nandurbar",
                                    "State": "Maharashtra",
                                    "Growth": "25.66%",
                                    "Literacy": "64.37999725341797",
                                    "Sex_Ratio": "978",
                                    "Population": "1648295",
                                    "Area_km2": "5955"
                                },
                                {
                                    "District": "Narayanpur",
                                    "State": "Chhattisgarh",
                                    "Growth": "19.16%",
                                    "Literacy": "48.619998931884766",
                                    "Sex_Ratio": "994",
                                    "Population": "139820",
                                    "Area_km2": "4653"
                                },
                                {
                                    "District": "Narmada",
                                    "State": "Gujarat",
                                    "Growth": "14.75%",
                                    "Literacy": "72.30999755859375",
                                    "Sex_Ratio": "961",
                                    "Population": "590297",
                                    "Area_km2": "2817"
                                },
                                {
                                    "District": "Narsimhapur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "14.01%",
                                    "Literacy": "75.69000244140625",
                                    "Sex_Ratio": "920",
                                    "Population": "1091854",
                                    "Area_km2": "5133"
                                },
                                {
                                    "District": "Nashik",
                                    "State": "Maharashtra",
                                    "Growth": "22.30%",
                                    "Literacy": "82.30999755859375",
                                    "Sex_Ratio": "934",
                                    "Population": "6107187",
                                    "Area_km2": "15530"
                                },
                                {
                                    "District": "Navsari",
                                    "State": "Gujarat",
                                    "Growth": "8.15%",
                                    "Literacy": "83.87999725341797",
                                    "Sex_Ratio": "961",
                                    "Population": "1329672",
                                    "Area_km2": "2246"
                                },
                                {
                                    "District": "Nawada",
                                    "State": "Bihar",
                                    "Growth": "22.63%",
                                    "Literacy": "59.7599983215332",
                                    "Sex_Ratio": "939",
                                    "Population": "2219146",
                                    "Area_km2": "2494"
                                },
                                {
                                    "District": "Nayagarh",
                                    "State": "Orissa",
                                    "Growth": "11.37%",
                                    "Literacy": "80.41999816894531",
                                    "Sex_Ratio": "915",
                                    "Population": "962789",
                                    "Area_km2": "3890"
                                },
                                {
                                    "District": "Neemuch",
                                    "State": "Madhya Pradesh",
                                    "Growth": "13.77%",
                                    "Literacy": "70.80000305175781",
                                    "Sex_Ratio": "954",
                                    "Population": "826067",
                                    "Area_km2": "4256"
                                },
                                {
                                    "District": "New Delhi",
                                    "State": "Delhi",
                                    "Growth": "-20.72%",
                                    "Literacy": "88.33999633789062",
                                    "Sex_Ratio": "822",
                                    "Population": "142004",
                                    "Area_km2": "35"
                                },
                                {
                                    "District": "Nicobars",
                                    "State": "Andaman And Nicobar Islands",
                                    "Growth": "-12.42%",
                                    "Literacy": "78.05999755859375",
                                    "Sex_Ratio": "777",
                                    "Population": "36842",
                                    "Area_km2": "1841"
                                },
                                {
                                    "District": "Nizamabad",
                                    "State": "Andhra Pradesh",
                                    "Growth": "8.77%",
                                    "Literacy": "61.25",
                                    "Sex_Ratio": "1040",
                                    "Population": "2551335",
                                    "Area_km2": "7956"
                                },
                                {
                                    "District": "North And Middle Andaman",
                                    "State": "Andaman And Nicobar Islands",
                                    "Growth": "-0.02%",
                                    "Literacy": "83.91000366210938",
                                    "Sex_Ratio": "925",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "North Delhi",
                                    "State": "Delhi",
                                    "Growth": "13.62%",
                                    "Literacy": "86.8499984741211",
                                    "Sex_Ratio": "869",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "North East Delhi",
                                    "State": "Delhi",
                                    "Growth": "26.78%",
                                    "Literacy": "83.08999633789062",
                                    "Sex_Ratio": "886",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "North Goa",
                                    "State": "Goa",
                                    "Growth": "7.84%",
                                    "Literacy": "89.56999969482422",
                                    "Sex_Ratio": "963",
                                    "Population": "818008",
                                    "Area_km2": "1736"
                                },
                                {
                                    "District": "North Sikkim",
                                    "State": "Sikkim",
                                    "Growth": "6.53%",
                                    "Literacy": "78.01000213623047",
                                    "Sex_Ratio": "767",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "North Tripura",
                                    "State": "Tripura",
                                    "Growth": "17.44%",
                                    "Literacy": "87.5",
                                    "Sex_Ratio": "967",
                                    "Population": "693947",
                                    "Area_km2": "2036"
                                },
                                {
                                    "District": "North Twenty Four Parganas",
                                    "State": "West Bengal",
                                    "Growth": "12.04%",
                                    "Literacy": "84.05999755859375",
                                    "Sex_Ratio": "955",
                                    "Population": "10009781",
                                    "Area_km2": "4094"
                                },
                                {
                                    "District": "North West Delhi",
                                    "State": "Delhi",
                                    "Growth": "27.81%",
                                    "Literacy": "84.44999694824219",
                                    "Sex_Ratio": "865",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Nuapada",
                                    "State": "Orissa",
                                    "Growth": "15.02%",
                                    "Literacy": "57.349998474121094",
                                    "Sex_Ratio": "1021",
                                    "Population": "610382",
                                    "Area_km2": "3852"
                                },
                                {
                                    "District": "Osmanabad",
                                    "State": "Maharashtra",
                                    "Growth": "11.50%",
                                    "Literacy": "78.44000244140625",
                                    "Sex_Ratio": "924",
                                    "Population": "1657576",
                                    "Area_km2": "7569"
                                },
                                {
                                    "District": "Pakur",
                                    "State": "Jharkhand",
                                    "Growth": "28.33%",
                                    "Literacy": "48.81999969482422",
                                    "Sex_Ratio": "989",
                                    "Population": "900422",
                                    "Area_km2": "1811"
                                },
                                {
                                    "District": "Palakkad",
                                    "State": "Kerala",
                                    "Growth": "7.35%",
                                    "Literacy": "89.30999755859375",
                                    "Sex_Ratio": "1067",
                                    "Population": "2809934",
                                    "Area_km2": "4482"
                                },
                                {
                                    "District": "Palamu",
                                    "State": "Jharkhand",
                                    "Growth": "26.17%",
                                    "Literacy": "63.630001068115234",
                                    "Sex_Ratio": "928",
                                    "Population": "1939869",
                                    "Area_km2": "4393"
                                },
                                {
                                    "District": "Pali",
                                    "State": "Rajasthan",
                                    "Growth": "11.94%",
                                    "Literacy": "62.38999938964844",
                                    "Sex_Ratio": "987",
                                    "Population": "2037573",
                                    "Area_km2": "12387"
                                },
                                {
                                    "District": "Palwal",
                                    "State": "Haryana",
                                    "Growth": "25.76%",
                                    "Literacy": "69.31999969482422",
                                    "Sex_Ratio": "880",
                                    "Population": "1042708",
                                    "Area_km2": "1359"
                                },
                                {
                                    "District": "Panchkula",
                                    "State": "Haryana",
                                    "Growth": "19.83%",
                                    "Literacy": "81.87999725341797",
                                    "Sex_Ratio": "873",
                                    "Population": "561293",
                                    "Area_km2": "898"
                                },
                                {
                                    "District": "PanchMahal",
                                    "State": "Gujarat",
                                    "Growth": "18.05%",
                                    "Literacy": "70.98999786376953",
                                    "Sex_Ratio": "949",
                                    "Population": "2390776",
                                    "Area_km2": "5231"
                                },
                                {
                                    "District": "Panipat",
                                    "State": "Haryana",
                                    "Growth": "24.60%",
                                    "Literacy": "75.94000244140625",
                                    "Sex_Ratio": "864",
                                    "Population": "1205437",
                                    "Area_km2": "1268"
                                },
                                {
                                    "District": "Panna",
                                    "State": "Madhya Pradesh",
                                    "Growth": "18.67%",
                                    "Literacy": "64.79000091552734",
                                    "Sex_Ratio": "905",
                                    "Population": "1016520",
                                    "Area_km2": "7135"
                                },
                                {
                                    "District": "Papumpare",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "44.73%",
                                    "Literacy": "79.94999694824219",
                                    "Sex_Ratio": "980",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Parbhani",
                                    "State": "Maharashtra",
                                    "Growth": "20.19%",
                                    "Literacy": "73.33999633789062",
                                    "Sex_Ratio": "947",
                                    "Population": "1836086",
                                    "Area_km2": "6214"
                                },
                                {
                                    "District": "Paschim Medinipur",
                                    "State": "West Bengal",
                                    "Growth": "13.86%",
                                    "Literacy": "78",
                                    "Sex_Ratio": "966",
                                    "Population": "5913457",
                                    "Area_km2": "9368"
                                },
                                {
                                    "District": "Pashchim Champaran",
                                    "State": "Bihar",
                                    "Growth": "29.29%",
                                    "Literacy": "55.70000076293945",
                                    "Sex_Ratio": "909",
                                    "Population": "3935042",
                                    "Area_km2": "5228"
                                },
                                {
                                    "District": "Pashchimi Singhbhum",
                                    "State": "Jharkhand",
                                    "Growth": "21.75%",
                                    "Literacy": "58.630001068115234",
                                    "Sex_Ratio": "1005",
                                    "Population": "1502338",
                                    "Area_km2": "7224"
                                },
                                {
                                    "District": "Patan",
                                    "State": "Gujarat",
                                    "Growth": "13.61%",
                                    "Literacy": "72.30000305175781",
                                    "Sex_Ratio": "935",
                                    "Population": "1343734",
                                    "Area_km2": "5792"
                                },
                                {
                                    "District": "Pathanamthitta",
                                    "State": "Kerala",
                                    "Growth": "-2.97%",
                                    "Literacy": "96.55000305175781",
                                    "Sex_Ratio": "1132",
                                    "Population": "1197412",
                                    "Area_km2": "2652"
                                },
                                {
                                    "District": "Patiala",
                                    "State": "Punjab",
                                    "Growth": "19.62%",
                                    "Literacy": "75.27999877929688",
                                    "Sex_Ratio": "891",
                                    "Population": "1895686",
                                    "Area_km2": "3325"
                                },
                                {
                                    "District": "Patna",
                                    "State": "Bihar",
                                    "Growth": "23.73%",
                                    "Literacy": "70.68000030517578",
                                    "Sex_Ratio": "897",
                                    "Population": "5838465",
                                    "Area_km2": "3202"
                                },
                                {
                                    "District": "Pauri Garhwal",
                                    "State": "Uttarakhand",
                                    "Growth": "-1.41%",
                                    "Literacy": "82.0199966430664",
                                    "Sex_Ratio": "1103",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Perambalur",
                                    "State": "Tamil Nadu",
                                    "Growth": "14.50%",
                                    "Literacy": "74.31999969482422",
                                    "Sex_Ratio": "1003",
                                    "Population": "565223",
                                    "Area_km2": "1756"
                                },
                                {
                                    "District": "Peren",
                                    "State": "Nagaland",
                                    "Growth": "104.15%",
                                    "Literacy": "77.94999694824219",
                                    "Sex_Ratio": "915",
                                    "Population": "95219",
                                    "Area_km2": "1651"
                                },
                                {
                                    "District": "Phek",
                                    "State": "Nagaland",
                                    "Growth": "111.84%",
                                    "Literacy": "78.05000305175781",
                                    "Sex_Ratio": "951",
                                    "Population": "163418",
                                    "Area_km2": "2026"
                                },
                                {
                                    "District": "Pilibhit",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.45%",
                                    "Literacy": "61.470001220703125",
                                    "Sex_Ratio": "895",
                                    "Population": "2031007",
                                    "Area_km2": "3686"
                                },
                                {
                                    "District": "Pithoragarh",
                                    "State": "Uttarakhand",
                                    "Growth": "4.58%",
                                    "Literacy": "82.25",
                                    "Sex_Ratio": "1020",
                                    "Population": "483439",
                                    "Area_km2": "7090"
                                },
                                {
                                    "District": "Porbandar",
                                    "State": "Gujarat",
                                    "Growth": "9.06%",
                                    "Literacy": "75.77999877929688",
                                    "Sex_Ratio": "950",
                                    "Population": "585449",
                                    "Area_km2": "2316"
                                },
                                {
                                    "District": "Prakasam",
                                    "State": "Andhra Pradesh",
                                    "Growth": "11.05%",
                                    "Literacy": "63.08000183105469",
                                    "Sex_Ratio": "981",
                                    "Population": "3397448",
                                    "Area_km2": "17626"
                                },
                                {
                                    "District": "Pratapgarh",
                                    "State": "Rajasthan",
                                    "Growth": "22.78%",
                                    "Literacy": "55.970001220703125",
                                    "Sex_Ratio": "983",
                                    "Population": "867848",
                                    "Area_km2": "4449"
                                },
                                {
                                    "District": "Pratapgarh",
                                    "State": "Rajasthan",
                                    "Growth": "22.78%",
                                    "Literacy": "55.970001220703125",
                                    "Sex_Ratio": "983",
                                    "Population": "3209141",
                                    "Area_km2": "3717"
                                },
                                {
                                    "District": "Pratapgarh",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.50%",
                                    "Literacy": "70.08999633789062",
                                    "Sex_Ratio": "998",
                                    "Population": "867848",
                                    "Area_km2": "4449"
                                },
                                {
                                    "District": "Pratapgarh",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.50%",
                                    "Literacy": "70.08999633789062",
                                    "Sex_Ratio": "998",
                                    "Population": "3209141",
                                    "Area_km2": "3717"
                                },
                                {
                                    "District": "Puducherry",
                                    "State": "Puducherry",
                                    "Growth": "29.23%",
                                    "Literacy": "85.44000244140625",
                                    "Sex_Ratio": "1029",
                                    "Population": "950289",
                                    "Area_km2": "294"
                                },
                                {
                                    "District": "Pudukkottai",
                                    "State": "Tamil Nadu",
                                    "Growth": "10.88%",
                                    "Literacy": "77.19000244140625",
                                    "Sex_Ratio": "1015",
                                    "Population": "1618345",
                                    "Area_km2": "4644"
                                },
                                {
                                    "District": "Pulwama",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "27.00%",
                                    "Literacy": "63.47999954223633",
                                    "Sex_Ratio": "912",
                                    "Population": "560440",
                                    "Area_km2": "1086"
                                },
                                {
                                    "District": "Punch",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "27.97%",
                                    "Literacy": "66.73999786376953",
                                    "Sex_Ratio": "893",
                                    "Population": "476835",
                                    "Area_km2": "1674"
                                },
                                {
                                    "District": "Pune",
                                    "State": "Maharashtra",
                                    "Growth": "30.37%",
                                    "Literacy": "86.1500015258789",
                                    "Sex_Ratio": "915",
                                    "Population": "9429408",
                                    "Area_km2": "15643"
                                },
                                {
                                    "District": "Purba Medinipur",
                                    "State": "West Bengal",
                                    "Growth": "15.36%",
                                    "Literacy": "87.0199966430664",
                                    "Sex_Ratio": "938",
                                    "Population": "5095875",
                                    "Area_km2": "4713"
                                },
                                {
                                    "District": "Purbi Champaran",
                                    "State": "Bihar",
                                    "Growth": "29.43%",
                                    "Literacy": "55.790000915527344",
                                    "Sex_Ratio": "902",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Purbi Singhbhum",
                                    "State": "Jharkhand",
                                    "Growth": "15.68%",
                                    "Literacy": "75.48999786376953",
                                    "Sex_Ratio": "949",
                                    "Population": "2293919",
                                    "Area_km2": "3562"
                                },
                                {
                                    "District": "Puri",
                                    "State": "Orissa",
                                    "Growth": "13.05%",
                                    "Literacy": "84.66999816894531",
                                    "Sex_Ratio": "963",
                                    "Population": "1698730",
                                    "Area_km2": "3479"
                                },
                                {
                                    "District": "Purnia",
                                    "State": "Bihar",
                                    "Growth": "28.33%",
                                    "Literacy": "51.08000183105469",
                                    "Sex_Ratio": "921",
                                    "Population": "3264619",
                                    "Area_km2": "3229"
                                },
                                {
                                    "District": "Puruliya",
                                    "State": "West Bengal",
                                    "Growth": "15.52%",
                                    "Literacy": "64.4800033569336",
                                    "Sex_Ratio": "957",
                                    "Population": "2930115",
                                    "Area_km2": "6259"
                                },
                                {
                                    "District": "Rae Bareli",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.56%",
                                    "Literacy": "67.25",
                                    "Sex_Ratio": "943",
                                    "Population": "3405559",
                                    "Area_km2": "4609"
                                },
                                {
                                    "District": "Raichur",
                                    "State": "Karnataka",
                                    "Growth": "15.51%",
                                    "Literacy": "59.560001373291016",
                                    "Sex_Ratio": "1000",
                                    "Population": "1928812",
                                    "Area_km2": "8442"
                                },
                                {
                                    "District": "Raigarh",
                                    "State": "Chhattisgarh",
                                    "Growth": "18.05%",
                                    "Literacy": "73.26000213623047",
                                    "Sex_Ratio": "991",
                                    "Population": "1493984",
                                    "Area_km2": "7086"
                                },
                                {
                                    "District": "Raigarh",
                                    "State": "Chhattisgarh",
                                    "Growth": "18.05%",
                                    "Literacy": "73.26000213623047",
                                    "Sex_Ratio": "991",
                                    "Population": "2634200",
                                    "Area_km2": "7152"
                                },
                                {
                                    "District": "Raigarh",
                                    "State": "Maharashtra",
                                    "Growth": "19.31%",
                                    "Literacy": "83.13999938964844",
                                    "Sex_Ratio": "959",
                                    "Population": "1493984",
                                    "Area_km2": "7086"
                                },
                                {
                                    "District": "Raigarh",
                                    "State": "Maharashtra",
                                    "Growth": "19.31%",
                                    "Literacy": "83.13999938964844",
                                    "Sex_Ratio": "959",
                                    "Population": "2634200",
                                    "Area_km2": "7152"
                                },
                                {
                                    "District": "Raipur",
                                    "State": "Chhattisgarh",
                                    "Growth": "34.70%",
                                    "Literacy": "75.55999755859375",
                                    "Sex_Ratio": "984",
                                    "Population": "4063872",
                                    "Area_km2": "12383"
                                },
                                {
                                    "District": "Raisen",
                                    "State": "Madhya Pradesh",
                                    "Growth": "18.35%",
                                    "Literacy": "72.9800033569336",
                                    "Sex_Ratio": "901",
                                    "Population": "1331597",
                                    "Area_km2": "8466"
                                },
                                {
                                    "District": "Rajgarh",
                                    "State": "Madhya Pradesh",
                                    "Growth": "23.26%",
                                    "Literacy": "61.209999084472656",
                                    "Sex_Ratio": "956",
                                    "Population": "1545814",
                                    "Area_km2": "6153"
                                },
                                {
                                    "District": "Rajkot",
                                    "State": "Gujarat",
                                    "Growth": "20.02%",
                                    "Literacy": "80.95999908447266",
                                    "Sex_Ratio": "927",
                                    "Population": "3804558",
                                    "Area_km2": "11198"
                                },
                                {
                                    "District": "Rajnandgaon",
                                    "State": "Chhattisgarh",
                                    "Growth": "19.79%",
                                    "Literacy": "75.95999908447266",
                                    "Sex_Ratio": "1015",
                                    "Population": "1537133",
                                    "Area_km2": "8070"
                                },
                                {
                                    "District": "Rajouri",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "32.93%",
                                    "Literacy": "68.16999816894531",
                                    "Sex_Ratio": "860",
                                    "Population": "642415",
                                    "Area_km2": "2630"
                                },
                                {
                                    "District": "Rajsamand",
                                    "State": "Rajasthan",
                                    "Growth": "17.18%",
                                    "Literacy": "63.13999938964844",
                                    "Sex_Ratio": "990",
                                    "Population": "1156597",
                                    "Area_km2": "4655"
                                },
                                {
                                    "District": "Ramabai Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "14.89%",
                                    "Literacy": "75.77999877929688",
                                    "Sex_Ratio": "865",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Ramanagara",
                                    "State": "Karnataka",
                                    "Growth": "5.05%",
                                    "Literacy": "69.22000122070312",
                                    "Sex_Ratio": "976",
                                    "Population": "1082636",
                                    "Area_km2": "3516"
                                },
                                {
                                    "District": "Ramanathapuram",
                                    "State": "Tamil Nadu",
                                    "Growth": "13.96%",
                                    "Literacy": "80.72000122070312",
                                    "Sex_Ratio": "983",
                                    "Population": "1353445",
                                    "Area_km2": "4104"
                                },
                                {
                                    "District": "Ramban",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "31.99%",
                                    "Literacy": "54.27000045776367",
                                    "Sex_Ratio": "902",
                                    "Population": "283713",
                                    "Area_km2": "1329"
                                },
                                {
                                    "District": "Ramgarh",
                                    "State": "Jharkhand",
                                    "Growth": "13.10%",
                                    "Literacy": "73.16999816894531",
                                    "Sex_Ratio": "921",
                                    "Population": "949443",
                                    "Area_km2": "1341"
                                },
                                {
                                    "District": "Rampur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "21.42%",
                                    "Literacy": "53.34000015258789",
                                    "Sex_Ratio": "909",
                                    "Population": "2335819",
                                    "Area_km2": "2367"
                                },
                                {
                                    "District": "Ranchi",
                                    "State": "Jharkhand",
                                    "Growth": "23.98%",
                                    "Literacy": "76.05999755859375",
                                    "Sex_Ratio": "949",
                                    "Population": "2914253",
                                    "Area_km2": "5097"
                                },
                                {
                                    "District": "Rangareddy",
                                    "State": "Andhra Pradesh",
                                    "Growth": "48.16%",
                                    "Literacy": "75.87000274658203",
                                    "Sex_Ratio": "961",
                                    "Population": "5296741",
                                    "Area_km2": "7493"
                                },
                                {
                                    "District": "Ratlam",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.72%",
                                    "Literacy": "66.77999877929688",
                                    "Sex_Ratio": "971",
                                    "Population": "1455069",
                                    "Area_km2": "4861"
                                },
                                {
                                    "District": "Ratnagiri",
                                    "State": "Maharashtra",
                                    "Growth": "-4.82%",
                                    "Literacy": "82.18000030517578",
                                    "Sex_Ratio": "1122",
                                    "Population": "1615069",
                                    "Area_km2": "8208"
                                },
                                {
                                    "District": "Rayagada",
                                    "State": "Orissa",
                                    "Growth": "16.46%",
                                    "Literacy": "49.7599983215332",
                                    "Sex_Ratio": "1051",
                                    "Population": "967911",
                                    "Area_km2": "7073"
                                },
                                {
                                    "District": "Reasi",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "27.04%",
                                    "Literacy": "58.150001525878906",
                                    "Sex_Ratio": "890",
                                    "Population": "314667",
                                    "Area_km2": "1719"
                                },
                                {
                                    "District": "Rewa",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.86%",
                                    "Literacy": "71.62000274658203",
                                    "Sex_Ratio": "931",
                                    "Population": "2365106",
                                    "Area_km2": "6314"
                                },
                                {
                                    "District": "Rewari",
                                    "State": "Haryana",
                                    "Growth": "17.64%",
                                    "Literacy": "80.98999786376953",
                                    "Sex_Ratio": "898",
                                    "Population": "900332",
                                    "Area_km2": "1594"
                                },
                                {
                                    "District": "Ri Bhoi",
                                    "State": "Meghalaya",
                                    "Growth": "34.26%",
                                    "Literacy": "75.66999816894531",
                                    "Sex_Ratio": "953",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Rohtak",
                                    "State": "Haryana",
                                    "Growth": "12.88%",
                                    "Literacy": "80.22000122070312",
                                    "Sex_Ratio": "867",
                                    "Population": "1061204",
                                    "Area_km2": "1745"
                                },
                                {
                                    "District": "Rohtas",
                                    "State": "Bihar",
                                    "Growth": "20.78%",
                                    "Literacy": "73.37000274658203",
                                    "Sex_Ratio": "918",
                                    "Population": "2959918",
                                    "Area_km2": "3881"
                                },
                                {
                                    "District": "Rudraprayag",
                                    "State": "Uttarakhand",
                                    "Growth": "6.53%",
                                    "Literacy": "81.30000305175781",
                                    "Sex_Ratio": "1114",
                                    "Population": "242285",
                                    "Area_km2": "1984"
                                },
                                {
                                    "District": "Rupnagar",
                                    "State": "Punjab",
                                    "Growth": "8.87%",
                                    "Literacy": "82.19000244140625",
                                    "Sex_Ratio": "915",
                                    "Population": "684627",
                                    "Area_km2": "1356"
                                },
                                {
                                    "District": "Sabarkantha",
                                    "State": "Gujarat",
                                    "Growth": "16.62%",
                                    "Literacy": "75.79000091552734",
                                    "Sex_Ratio": "952",
                                    "Population": "2428589",
                                    "Area_km2": "7394"
                                },
                                {
                                    "District": "Sagar",
                                    "State": "Madhya Pradesh",
                                    "Growth": "17.63%",
                                    "Literacy": "76.45999908447266",
                                    "Sex_Ratio": "893",
                                    "Population": "2378458",
                                    "Area_km2": "10252"
                                },
                                {
                                    "District": "Saharanpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "19.66%",
                                    "Literacy": "70.48999786376953",
                                    "Sex_Ratio": "890",
                                    "Population": "3466382",
                                    "Area_km2": "3689"
                                },
                                {
                                    "District": "Saharsa",
                                    "State": "Bihar",
                                    "Growth": "26.02%",
                                    "Literacy": "53.20000076293945",
                                    "Sex_Ratio": "906",
                                    "Population": "1900661",
                                    "Area_km2": "1687"
                                },
                                {
                                    "District": "Sahibganj",
                                    "State": "Jharkhand",
                                    "Growth": "24.01%",
                                    "Literacy": "52.040000915527344",
                                    "Sex_Ratio": "952",
                                    "Population": "1150567",
                                    "Area_km2": "2063"
                                },
                                {
                                    "District": "Saiha",
                                    "State": "Mizoram",
                                    "Growth": "-7.34%",
                                    "Literacy": "90.01000213623047",
                                    "Sex_Ratio": "979",
                                    "Population": "56574",
                                    "Area_km2": "1399"
                                },
                                {
                                    "District": "Salem",
                                    "State": "Tamil Nadu",
                                    "Growth": "15.44%",
                                    "Literacy": "72.86000061035156",
                                    "Sex_Ratio": "954",
                                    "Population": "3482056",
                                    "Area_km2": "5237"
                                },
                                {
                                    "District": "Samastipur",
                                    "State": "Bihar",
                                    "Growth": "25.53%",
                                    "Literacy": "61.86000061035156",
                                    "Sex_Ratio": "911",
                                    "Population": "4261566",
                                    "Area_km2": "2904"
                                },
                                {
                                    "District": "Samba",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "17.01%",
                                    "Literacy": "81.41000366210938",
                                    "Sex_Ratio": "886",
                                    "Population": "318898",
                                    "Area_km2": "904"
                                },
                                {
                                    "District": "Sambalpur",
                                    "State": "Orissa",
                                    "Growth": "11.27%",
                                    "Literacy": "76.22000122070312",
                                    "Sex_Ratio": "976",
                                    "Population": "1041099",
                                    "Area_km2": "6624"
                                },
                                {
                                    "District": "Sangli",
                                    "State": "Maharashtra",
                                    "Growth": "9.24%",
                                    "Literacy": "81.4800033569336",
                                    "Sex_Ratio": "966",
                                    "Population": "2822143",
                                    "Area_km2": "8572"
                                },
                                {
                                    "District": "Sangrur",
                                    "State": "Punjab",
                                    "Growth": "12.35%",
                                    "Literacy": "67.98999786376953",
                                    "Sex_Ratio": "885",
                                    "Population": "1655169",
                                    "Area_km2": "3625"
                                },
                                {
                                    "District": "Sant Kabir Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "20.77%",
                                    "Literacy": "66.72000122070312",
                                    "Sex_Ratio": "972",
                                    "Population": "1715183",
                                    "Area_km2": "1646"
                                },
                                {
                                    "District": "Sant Ravidas Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "16.58%",
                                    "Literacy": "68.97000122070312",
                                    "Sex_Ratio": "955",
                                    "Population": "1578213",
                                    "Area_km2": "1015"
                                },
                                {
                                    "District": "Saraikela Kharsawan",
                                    "State": "Jharkhand",
                                    "Growth": "25.47%",
                                    "Literacy": "67.69999694824219",
                                    "Sex_Ratio": "956",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Saran",
                                    "State": "Bihar",
                                    "Growth": "21.64%",
                                    "Literacy": "65.95999908447266",
                                    "Sex_Ratio": "954",
                                    "Population": "3951862",
                                    "Area_km2": "2641"
                                },
                                {
                                    "District": "Satara",
                                    "State": "Maharashtra",
                                    "Growth": "6.93%",
                                    "Literacy": "82.87000274658203",
                                    "Sex_Ratio": "988",
                                    "Population": "3003741",
                                    "Area_km2": "10480"
                                },
                                {
                                    "District": "Satna",
                                    "State": "Madhya Pradesh",
                                    "Growth": "19.19%",
                                    "Literacy": "72.26000213623047",
                                    "Sex_Ratio": "926",
                                    "Population": "2228935",
                                    "Area_km2": "7502"
                                },
                                {
                                    "District": "Sawai Madhopur",
                                    "State": "Rajasthan",
                                    "Growth": "19.56%",
                                    "Literacy": "65.38999938964844",
                                    "Sex_Ratio": "897",
                                    "Population": "1335551",
                                    "Area_km2": "4498"
                                },
                                {
                                    "District": "Sehore",
                                    "State": "Madhya Pradesh",
                                    "Growth": "21.54%",
                                    "Literacy": "70.05999755859375",
                                    "Sex_Ratio": "918",
                                    "Population": "1311332",
                                    "Area_km2": "6578"
                                },
                                {
                                    "District": "Senapati",
                                    "State": "Manipur",
                                    "Growth": "68.94%",
                                    "Literacy": "63.599998474121094",
                                    "Sex_Ratio": "937",
                                    "Population": "479148",
                                    "Area_km2": "3271"
                                },
                                {
                                    "District": "Seoni",
                                    "State": "Madhya Pradesh",
                                    "Growth": "18.22%",
                                    "Literacy": "72.12000274658203",
                                    "Sex_Ratio": "982",
                                    "Population": "1379131",
                                    "Area_km2": "8758"
                                },
                                {
                                    "District": "Serchhip",
                                    "State": "Mizoram",
                                    "Growth": "20.56%",
                                    "Literacy": "97.91000366210938",
                                    "Sex_Ratio": "977",
                                    "Population": "64937",
                                    "Area_km2": "1421"
                                },
                                {
                                    "District": "Shahdol",
                                    "State": "Madhya Pradesh",
                                    "Growth": "17.39%",
                                    "Literacy": "66.66999816894531",
                                    "Sex_Ratio": "974",
                                    "Population": "1066063",
                                    "Area_km2": "6205"
                                },
                                {
                                    "District": "Shahid Bhagat Singh Nagar",
                                    "State": "Punjab",
                                    "Growth": "4.23%",
                                    "Literacy": "79.77999877929688",
                                    "Sex_Ratio": "954",
                                    "Population": "612310",
                                    "Area_km2": "1282"
                                },
                                {
                                    "District": "Shahjahanpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.00%",
                                    "Literacy": "59.540000915527344",
                                    "Sex_Ratio": "872",
                                    "Population": "3006538",
                                    "Area_km2": "4388"
                                },
                                {
                                    "District": "Shajapur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "17.20%",
                                    "Literacy": "69.08999633789062",
                                    "Sex_Ratio": "938",
                                    "Population": "1512681",
                                    "Area_km2": "6195"
                                },
                                {
                                    "District": "Sheikhpura",
                                    "State": "Bihar",
                                    "Growth": "21.09%",
                                    "Literacy": "63.86000061035156",
                                    "Sex_Ratio": "930",
                                    "Population": "636342",
                                    "Area_km2": "689"
                                },
                                {
                                    "District": "Sheohar",
                                    "State": "Bihar",
                                    "Growth": "27.19%",
                                    "Literacy": "53.779998779296875",
                                    "Sex_Ratio": "893",
                                    "Population": "656246",
                                    "Area_km2": "349"
                                },
                                {
                                    "District": "Sheopur",
                                    "State": "Madhya Pradesh",
                                    "Growth": "22.94%",
                                    "Literacy": "57.43000030517578",
                                    "Sex_Ratio": "901",
                                    "Population": "687861",
                                    "Area_km2": "6606"
                                },
                                {
                                    "District": "Shimla",
                                    "State": "Himachal Pradesh",
                                    "Growth": "12.67%",
                                    "Literacy": "83.63999938964844",
                                    "Sex_Ratio": "915",
                                    "Population": "814010",
                                    "Area_km2": "5131"
                                },
                                {
                                    "District": "Shimoga",
                                    "State": "Karnataka",
                                    "Growth": "6.71%",
                                    "Literacy": "80.44999694824219",
                                    "Sex_Ratio": "998",
                                    "Population": "1752753",
                                    "Area_km2": "8478"
                                },
                                {
                                    "District": "Shivpuri",
                                    "State": "Madhya Pradesh",
                                    "Growth": "22.76%",
                                    "Literacy": "62.54999923706055",
                                    "Sex_Ratio": "877",
                                    "Population": "1726050",
                                    "Area_km2": "10066"
                                },
                                {
                                    "District": "Shrawasti",
                                    "State": "Uttar Pradesh",
                                    "Growth": "-5.02%",
                                    "Literacy": "46.7400016784668",
                                    "Sex_Ratio": "881",
                                    "Population": "1117361",
                                    "Area_km2": "1640"
                                },
                                {
                                    "District": "Shupiyan",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "25.97%",
                                    "Literacy": "60.7599983215332",
                                    "Sex_Ratio": "951",
                                    "Population": "266215",
                                    "Area_km2": "312"
                                },
                                {
                                    "District": "Siddharth Nagar",
                                    "State": "Uttar Pradesh",
                                    "Growth": "25.45%",
                                    "Literacy": "59.25",
                                    "Sex_Ratio": "976",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Sidhi",
                                    "State": "Madhya Pradesh",
                                    "Growth": "23.72%",
                                    "Literacy": "64.43000030517578",
                                    "Sex_Ratio": "957",
                                    "Population": "1127033",
                                    "Area_km2": "4851"
                                },
                                {
                                    "District": "Sikar",
                                    "State": "Rajasthan",
                                    "Growth": "17.03%",
                                    "Literacy": "71.91000366210938",
                                    "Sex_Ratio": "947",
                                    "Population": "2677333",
                                    "Area_km2": "7732"
                                },
                                {
                                    "District": "Simdega",
                                    "State": "Jharkhand",
                                    "Growth": "16.58%",
                                    "Literacy": "67.98999786376953",
                                    "Sex_Ratio": "997",
                                    "Population": "599578",
                                    "Area_km2": "3774"
                                },
                                {
                                    "District": "Sindhudurg",
                                    "State": "Maharashtra",
                                    "Growth": "-2.21%",
                                    "Literacy": "85.55999755859375",
                                    "Sex_Ratio": "1036",
                                    "Population": "849651",
                                    "Area_km2": "5207"
                                },
                                {
                                    "District": "Singrauli",
                                    "State": "Madhya Pradesh",
                                    "Growth": "28.05%",
                                    "Literacy": "60.40999984741211",
                                    "Sex_Ratio": "920",
                                    "Population": "1178273",
                                    "Area_km2": "5675"
                                },
                                {
                                    "District": "Sirmaur",
                                    "State": "Himachal Pradesh",
                                    "Growth": "15.54%",
                                    "Literacy": "78.80000305175781",
                                    "Sex_Ratio": "918",
                                    "Population": "529855",
                                    "Area_km2": "2825"
                                },
                                {
                                    "District": "Sirohi",
                                    "State": "Rajasthan",
                                    "Growth": "21.76%",
                                    "Literacy": "55.25",
                                    "Sex_Ratio": "940",
                                    "Population": "1036346",
                                    "Area_km2": "5136"
                                },
                                {
                                    "District": "Sirsa",
                                    "State": "Haryana",
                                    "Growth": "15.99%",
                                    "Literacy": "68.81999969482422",
                                    "Sex_Ratio": "897",
                                    "Population": "1295189",
                                    "Area_km2": "4277"
                                },
                                {
                                    "District": "Sitamarhi",
                                    "State": "Bihar",
                                    "Growth": "27.62%",
                                    "Literacy": "52.04999923706055",
                                    "Sex_Ratio": "899",
                                    "Population": "3423574",
                                    "Area_km2": "2294"
                                },
                                {
                                    "District": "Sitapur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "23.88%",
                                    "Literacy": "61.119998931884766",
                                    "Sex_Ratio": "888",
                                    "Population": "4483992",
                                    "Area_km2": "5743"
                                },
                                {
                                    "District": "Sivaganga",
                                    "State": "Tamil Nadu",
                                    "Growth": "15.90%",
                                    "Literacy": "79.8499984741211",
                                    "Sex_Ratio": "1003",
                                    "Population": "1339101",
                                    "Area_km2": "4233"
                                },
                                {
                                    "District": "Sivasagar",
                                    "State": "Assam",
                                    "Growth": "9.44%",
                                    "Literacy": "80.41000366210938",
                                    "Sex_Ratio": "954",
                                    "Population": "1151050",
                                    "Area_km2": "2668"
                                },
                                {
                                    "District": "Siwan",
                                    "State": "Bihar",
                                    "Growth": "22.70%",
                                    "Literacy": "69.44999694824219",
                                    "Sex_Ratio": "988",
                                    "Population": "3330464",
                                    "Area_km2": "2219"
                                },
                                {
                                    "District": "Solan",
                                    "State": "Himachal Pradesh",
                                    "Growth": "15.93%",
                                    "Literacy": "83.68000030517578",
                                    "Sex_Ratio": "880",
                                    "Population": "580320",
                                    "Area_km2": "1936"
                                },
                                {
                                    "District": "Solapur",
                                    "State": "Maharashtra",
                                    "Growth": "12.16%",
                                    "Literacy": "77.0199966430664",
                                    "Sex_Ratio": "938",
                                    "Population": "4317756",
                                    "Area_km2": "14895"
                                },
                                {
                                    "District": "Sonbhadra",
                                    "State": "Uttar Pradesh",
                                    "Growth": "27.27%",
                                    "Literacy": "64.02999877929688",
                                    "Sex_Ratio": "918",
                                    "Population": "1862559",
                                    "Area_km2": "6905"
                                },
                                {
                                    "District": "Sonipat",
                                    "State": "Haryana",
                                    "Growth": "13.35%",
                                    "Literacy": "79.12000274658203",
                                    "Sex_Ratio": "856",
                                    "Population": "1450001",
                                    "Area_km2": "2122"
                                },
                                {
                                    "District": "Sonitpur",
                                    "State": "Assam",
                                    "Growth": "15.55%",
                                    "Literacy": "67.33999633789062",
                                    "Sex_Ratio": "956",
                                    "Population": "1924110",
                                    "Area_km2": "5204"
                                },
                                {
                                    "District": "South Andaman",
                                    "State": "Andaman And Nicobar Islands",
                                    "Growth": "14.23%",
                                    "Literacy": "89.12999725341797",
                                    "Sex_Ratio": "871",
                                    "Population": "238142",
                                    "Area_km2": "2672"
                                },
                                {
                                    "District": "South Delhi",
                                    "State": "Delhi",
                                    "Growth": "20.51%",
                                    "Literacy": "86.56999969482422",
                                    "Sex_Ratio": "862",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "South Garo Hills",
                                    "State": "Meghalaya",
                                    "Growth": "40.95%",
                                    "Literacy": "71.72000122070312",
                                    "Sex_Ratio": "945",
                                    "Population": "142334",
                                    "Area_km2": "1887"
                                },
                                {
                                    "District": "South Goa",
                                    "State": "Goa",
                                    "Growth": "8.73%",
                                    "Literacy": "87.58999633789062",
                                    "Sex_Ratio": "986",
                                    "Population": "640537",
                                    "Area_km2": "1966"
                                },
                                {
                                    "District": "South Sikkim",
                                    "State": "Sikkim",
                                    "Growth": "11.65%",
                                    "Literacy": "81.41999816894531",
                                    "Sex_Ratio": "915",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "South Tripura",
                                    "State": "Tripura",
                                    "Growth": "14.15%",
                                    "Literacy": "84.66000366210938",
                                    "Sex_Ratio": "957",
                                    "Population": "876001",
                                    "Area_km2": "3057"
                                },
                                {
                                    "District": "South Twenty Four Parganas",
                                    "State": "West Bengal",
                                    "Growth": "18.17%",
                                    "Literacy": "77.51000213623047",
                                    "Sex_Ratio": "956",
                                    "Population": "8161961",
                                    "Area_km2": "9960"
                                },
                                {
                                    "District": "South West Delhi",
                                    "State": "Delhi",
                                    "Growth": "30.65%",
                                    "Literacy": "88.27999877929688",
                                    "Sex_Ratio": "840",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "Sri Potti Sriramulu Nellore",
                                    "State": "Andhra Pradesh",
                                    "Growth": "11.05%",
                                    "Literacy": "68.9000015258789",
                                    "Sex_Ratio": "985",
                                    "Population": "2963557",
                                    "Area_km2": "13076"
                                },
                                {
                                    "District": "Srikakulam",
                                    "State": "Andhra Pradesh",
                                    "Growth": "6.52%",
                                    "Literacy": "61.7400016784668",
                                    "Sex_Ratio": "1015",
                                    "Population": "2703114",
                                    "Area_km2": "5837"
                                },
                                {
                                    "District": "Srinagar",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "20.35%",
                                    "Literacy": "69.41000366210938",
                                    "Sex_Ratio": "900",
                                    "Population": "1236829",
                                    "Area_km2": "1979"
                                },
                                {
                                    "District": "Subarnapur",
                                    "State": "Orissa",
                                    "Growth": "12.61%",
                                    "Literacy": "74.41999816894531",
                                    "Sex_Ratio": "960",
                                    "Population": "610183",
                                    "Area_km2": "2337"
                                },
                                {
                                    "District": "Sultanpur",
                                    "State": "Uttar Pradesh",
                                    "Growth": "18.11%",
                                    "Literacy": "69.2699966430664",
                                    "Sex_Ratio": "983",
                                    "Population": "3797117",
                                    "Area_km2": "4436"
                                },
                                {
                                    "District": "Sundargarh",
                                    "State": "Orissa",
                                    "Growth": "14.35%",
                                    "Literacy": "73.33999633789062",
                                    "Sex_Ratio": "973",
                                    "Population": "2093437",
                                    "Area_km2": "9712"
                                },
                                {
                                    "District": "Supaul",
                                    "State": "Bihar",
                                    "Growth": "28.66%",
                                    "Literacy": "57.66999816894531",
                                    "Sex_Ratio": "929",
                                    "Population": "2229076",
                                    "Area_km2": "2425"
                                },
                                {
                                    "District": "Surat",
                                    "State": "Gujarat",
                                    "Growth": "42.24%",
                                    "Literacy": "85.52999877929688",
                                    "Sex_Ratio": "787",
                                    "Population": "6081322",
                                    "Area_km2": "4549"
                                },
                                {
                                    "District": "Surendranagar",
                                    "State": "Gujarat",
                                    "Growth": "15.91%",
                                    "Literacy": "72.12999725341797",
                                    "Sex_Ratio": "930",
                                    "Population": "1756268",
                                    "Area_km2": "10423"
                                },
                                {
                                    "District": "Surguja",
                                    "State": "Chhattisgarh",
                                    "Growth": "19.66%",
                                    "Literacy": "60.0099983215332",
                                    "Sex_Ratio": "978",
                                    "Population": "2359886",
                                    "Area_km2": "15732"
                                },
                                {
                                    "District": "Tamenglong",
                                    "State": "Manipur",
                                    "Growth": "26.15%",
                                    "Literacy": "70.05000305175781",
                                    "Sex_Ratio": "943",
                                    "Population": "140651",
                                    "Area_km2": "4391"
                                },
                                {
                                    "District": "Tapi",
                                    "State": "Gujarat",
                                    "Growth": "12.14%",
                                    "Literacy": "68.26000213623047",
                                    "Sex_Ratio": "1007",
                                    "Population": "807022",
                                    "Area_km2": "3139"
                                },
                                {
                                    "District": "Tarn Taran",
                                    "State": "Punjab",
                                    "Growth": "19.23%",
                                    "Literacy": "67.80999755859375",
                                    "Sex_Ratio": "900",
                                    "Population": "1119627",
                                    "Area_km2": "2414"
                                },
                                {
                                    "District": "Tawang",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "28.40%",
                                    "Literacy": "59",
                                    "Sex_Ratio": "714",
                                    "Population": "49977",
                                    "Area_km2": "2172"
                                },
                                {
                                    "District": "Tehri Garhwal",
                                    "State": "Uttarakhand",
                                    "Growth": "2.35%",
                                    "Literacy": "76.36000061035156",
                                    "Sex_Ratio": "1077",
                                    "Population": "618931",
                                    "Area_km2": "3642"
                                },
                                {
                                    "District": "Thane",
                                    "State": "Maharashtra",
                                    "Growth": "36.01%",
                                    "Literacy": "84.52999877929688",
                                    "Sex_Ratio": "886",
                                    "Population": "11060148",
                                    "Area_km2": "9558"
                                },
                                {
                                    "District": "Thanjavur",
                                    "State": "Tamil Nadu",
                                    "Growth": "8.56%",
                                    "Literacy": "82.63999938964844",
                                    "Sex_Ratio": "1035",
                                    "Population": "2405890",
                                    "Area_km2": "3411"
                                },
                                {
                                    "District": "The Dangs",
                                    "State": "Gujarat",
                                    "Growth": "22.26%",
                                    "Literacy": "75.16000366210938",
                                    "Sex_Ratio": "1006",
                                    "Population": "228291",
                                    "Area_km2": "1766"
                                },
                                {
                                    "District": "The Nilgiris",
                                    "State": "Tamil Nadu",
                                    "Growth": "-3.51%",
                                    "Literacy": "85.19999694824219",
                                    "Sex_Ratio": "1042",
                                    "Population": "735394",
                                    "Area_km2": "2565"
                                },
                                {
                                    "District": "Theni",
                                    "State": "Tamil Nadu",
                                    "Growth": "13.89%",
                                    "Literacy": "77.26000213623047",
                                    "Sex_Ratio": "991",
                                    "Population": "1245899",
                                    "Area_km2": "2868"
                                },
                                {
                                    "District": "Thiruvallur",
                                    "State": "Tamil Nadu",
                                    "Growth": "35.33%",
                                    "Literacy": "84.02999877929688",
                                    "Sex_Ratio": "987",
                                    "Population": "3728104",
                                    "Area_km2": "3394"
                                },
                                {
                                    "District": "Thiruvananthapuram",
                                    "State": "Kerala",
                                    "Growth": "2.07%",
                                    "Literacy": "93.0199966430664",
                                    "Sex_Ratio": "1087",
                                    "Population": "3301427",
                                    "Area_km2": "2189"
                                },
                                {
                                    "District": "Thiruvarur",
                                    "State": "Tamil Nadu",
                                    "Growth": "8.11%",
                                    "Literacy": "82.86000061035156",
                                    "Sex_Ratio": "1017",
                                    "Population": "1264277",
                                    "Area_km2": "2274"
                                },
                                {
                                    "District": "Thoothukkudi",
                                    "State": "Tamil Nadu",
                                    "Growth": "11.32%",
                                    "Literacy": "86.16000366210938",
                                    "Sex_Ratio": "1023",
                                    "Population": "1750176",
                                    "Area_km2": "4745"
                                },
                                {
                                    "District": "Thoubal",
                                    "State": "Manipur",
                                    "Growth": "15.94%",
                                    "Literacy": "74.47000122070312",
                                    "Sex_Ratio": "1002",
                                    "Population": "422168",
                                    "Area_km2": "514"
                                },
                                {
                                    "District": "Thrissur",
                                    "State": "Kerala",
                                    "Growth": "4.94%",
                                    "Literacy": "95.08000183105469",
                                    "Sex_Ratio": "1108",
                                    "Population": "3121200",
                                    "Area_km2": "3027"
                                },
                                {
                                    "District": "Tikamgarh",
                                    "State": "Madhya Pradesh",
                                    "Growth": "20.13%",
                                    "Literacy": "61.43000030517578",
                                    "Sex_Ratio": "901",
                                    "Population": "1445166",
                                    "Area_km2": "5048"
                                },
                                {
                                    "District": "Tinsukia",
                                    "State": "Assam",
                                    "Growth": "15.47%",
                                    "Literacy": "69.66000366210938",
                                    "Sex_Ratio": "952",
                                    "Population": "1327929",
                                    "Area_km2": "3790"
                                },
                                {
                                    "District": "Tirap",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "11.61%",
                                    "Literacy": "52.189998626708984",
                                    "Sex_Ratio": "944",
                                    "Population": "111975",
                                    "Area_km2": "2362"
                                },
                                {
                                    "District": "Tiruchirappalli",
                                    "State": "Tamil Nadu",
                                    "Growth": "12.57%",
                                    "Literacy": "83.2300033569336",
                                    "Sex_Ratio": "1013",
                                    "Population": "2722290",
                                    "Area_km2": "4509"
                                },
                                {
                                    "District": "Tirunelveli",
                                    "State": "Tamil Nadu",
                                    "Growth": "12.97%",
                                    "Literacy": "82.5",
                                    "Sex_Ratio": "1023",
                                    "Population": "3077233",
                                    "Area_km2": "6693"
                                },
                                {
                                    "District": "Tiruppur",
                                    "State": "Tamil Nadu",
                                    "Growth": "29.11%",
                                    "Literacy": "78.68000030517578",
                                    "Sex_Ratio": "989",
                                    "Population": "2479052",
                                    "Area_km2": "5187"
                                },
                                {
                                    "District": "Tiruvannamalai",
                                    "State": "Tamil Nadu",
                                    "Growth": "12.75%",
                                    "Literacy": "74.20999908447266",
                                    "Sex_Ratio": "994",
                                    "Population": "2464875",
                                    "Area_km2": "6188"
                                },
                                {
                                    "District": "Tonk",
                                    "State": "Rajasthan",
                                    "Growth": "17.30%",
                                    "Literacy": "61.58000183105469",
                                    "Sex_Ratio": "952",
                                    "Population": "1421326",
                                    "Area_km2": "7194"
                                },
                                {
                                    "District": "Tuensang",
                                    "State": "Nagaland",
                                    "Growth": "94.83%",
                                    "Literacy": "73.08000183105469",
                                    "Sex_Ratio": "929",
                                    "Population": "196596",
                                    "Area_km2": "2536"
                                },
                                {
                                    "District": "Tumkur",
                                    "State": "Karnataka",
                                    "Growth": "3.65%",
                                    "Literacy": "75.13999938964844",
                                    "Sex_Ratio": "984",
                                    "Population": "2678980",
                                    "Area_km2": "10597"
                                },
                                {
                                    "District": "Udaipur",
                                    "State": "Rajasthan",
                                    "Growth": "23.69%",
                                    "Literacy": "61.81999969482422",
                                    "Sex_Ratio": "958",
                                    "Population": "3068420",
                                    "Area_km2": "11724"
                                },
                                {
                                    "District": "Udalguri",
                                    "State": "Assam",
                                    "Growth": "9.61%",
                                    "Literacy": "65.41000366210938",
                                    "Sex_Ratio": "973",
                                    "Population": "831668",
                                    "Area_km2": "2012"
                                },
                                {
                                    "District": "Udham Singh Nagar",
                                    "State": "Uttarakhand",
                                    "Growth": "33.45%",
                                    "Literacy": "73.0999984741211",
                                    "Sex_Ratio": "920",
                                    "Population": "1648902",
                                    "Area_km2": "2542"
                                },
                                {
                                    "District": "Udhampur",
                                    "State": "Jammu and Kashmir",
                                    "Growth": "20.78%",
                                    "Literacy": "68.48999786376953",
                                    "Sex_Ratio": "870",
                                    "Population": "554985",
                                    "Area_km2": "2637"
                                },
                                {
                                    "District": "Udupi",
                                    "State": "Karnataka",
                                    "Growth": "5.85%",
                                    "Literacy": "86.23999786376953",
                                    "Sex_Ratio": "1094",
                                    "Population": "1177361",
                                    "Area_km2": "3582"
                                },
                                {
                                    "District": "Ujjain",
                                    "State": "Madhya Pradesh",
                                    "Growth": "16.12%",
                                    "Literacy": "72.33999633789062",
                                    "Sex_Ratio": "955",
                                    "Population": "1986864",
                                    "Area_km2": "6091"
                                },
                                {
                                    "District": "Ukhrul",
                                    "State": "Manipur",
                                    "Growth": "30.70%",
                                    "Literacy": "81.3499984741211",
                                    "Sex_Ratio": "943",
                                    "Population": "183998",
                                    "Area_km2": "4544"
                                },
                                {
                                    "District": "Umaria",
                                    "State": "Madhya Pradesh",
                                    "Growth": "24.96%",
                                    "Literacy": "65.88999938964844",
                                    "Sex_Ratio": "950",
                                    "Population": "644758",
                                    "Area_km2": "4076"
                                },
                                {
                                    "District": "Una",
                                    "State": "Himachal Pradesh",
                                    "Growth": "16.26%",
                                    "Literacy": "86.52999877929688",
                                    "Sex_Ratio": "976",
                                    "Population": "521173",
                                    "Area_km2": "1540"
                                },
                                {
                                    "District": "Unnao",
                                    "State": "Uttar Pradesh",
                                    "Growth": "15.11%",
                                    "Literacy": "66.37000274658203",
                                    "Sex_Ratio": "907",
                                    "Population": "3108367",
                                    "Area_km2": "4558"
                                },
                                {
                                    "District": "Upper Siang",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "5.87%",
                                    "Literacy": "59.9900016784668",
                                    "Sex_Ratio": "889",
                                    "Population": "35320",
                                    "Area_km2": "6590"
                                },
                                {
                                    "District": "Upper Subansiri",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "50.78%",
                                    "Literacy": "63.79999923706055",
                                    "Sex_Ratio": "998",
                                    "Population": "83448",
                                    "Area_km2": "7032"
                                },
                                {
                                    "District": "Uttar Dinajpur",
                                    "State": "West Bengal",
                                    "Growth": "23.15%",
                                    "Literacy": "59.06999969482422",
                                    "Sex_Ratio": "939",
                                    "Population": "3007134",
                                    "Area_km2": "3140"
                                },
                                {
                                    "District": "Uttara Kannada",
                                    "State": "Karnataka",
                                    "Growth": "6.17%",
                                    "Literacy": "84.05999755859375",
                                    "Sex_Ratio": "979",
                                    "Population": "1437169",
                                    "Area_km2": "10277"
                                },
                                {
                                    "District": "Uttarkashi",
                                    "State": "Uttarakhand",
                                    "Growth": "11.89%",
                                    "Literacy": "75.80999755859375",
                                    "Sex_Ratio": "958",
                                    "Population": "330086",
                                    "Area_km2": "8016"
                                },
                                {
                                    "District": "Vadodara",
                                    "State": "Gujarat",
                                    "Growth": "14.38%",
                                    "Literacy": "78.91999816894531",
                                    "Sex_Ratio": "934",
                                    "Population": "4165626",
                                    "Area_km2": "7546"
                                },
                                {
                                    "District": "Vaishali",
                                    "State": "Bihar",
                                    "Growth": "28.57%",
                                    "Literacy": "66.5999984741211",
                                    "Sex_Ratio": "895",
                                    "Population": "3495021",
                                    "Area_km2": "2036"
                                },
                                {
                                    "District": "Valsad",
                                    "State": "Gujarat",
                                    "Growth": "20.92%",
                                    "Literacy": "78.55000305175781",
                                    "Sex_Ratio": "922",
                                    "Population": "1705678",
                                    "Area_km2": "3008"
                                },
                                {
                                    "District": "Varanasi",
                                    "State": "Uttar Pradesh",
                                    "Growth": "17.15%",
                                    "Literacy": "75.5999984741211",
                                    "Sex_Ratio": "913",
                                    "Population": "3676841",
                                    "Area_km2": "1535"
                                },
                                {
                                    "District": "Vellore",
                                    "State": "Tamil Nadu",
                                    "Growth": "13.20%",
                                    "Literacy": "79.16999816894531",
                                    "Sex_Ratio": "1007",
                                    "Population": "3936331",
                                    "Area_km2": "6075"
                                },
                                {
                                    "District": "Vidisha",
                                    "State": "Madhya Pradesh",
                                    "Growth": "20.09%",
                                    "Literacy": "70.52999877929688",
                                    "Sex_Ratio": "896",
                                    "Population": "1458875",
                                    "Area_km2": "7371"
                                },
                                {
                                    "District": "Viluppuram",
                                    "State": "Tamil Nadu",
                                    "Growth": "16.84%",
                                    "Literacy": "71.87999725341797",
                                    "Sex_Ratio": "987",
                                    "Population": "3458873",
                                    "Area_km2": "7194"
                                },
                                {
                                    "District": "Virudhunagar",
                                    "State": "Tamil Nadu",
                                    "Growth": "10.91%",
                                    "Literacy": "80.1500015258789",
                                    "Sex_Ratio": "1007",
                                    "Population": "1942288",
                                    "Area_km2": "4241"
                                },
                                {
                                    "District": "Visakhapatnam",
                                    "State": "Andhra Pradesh",
                                    "Growth": "11.96%",
                                    "Literacy": "66.91000366210938",
                                    "Sex_Ratio": "1006",
                                    "Population": "4290589",
                                    "Area_km2": "11161"
                                },
                                {
                                    "District": "Vizianagaram",
                                    "State": "Andhra Pradesh",
                                    "Growth": "4.23%",
                                    "Literacy": "58.88999938964844",
                                    "Sex_Ratio": "1019",
                                    "Population": "2344474",
                                    "Area_km2": "6539"
                                },
                                {
                                    "District": "Warangal",
                                    "State": "Andhra Pradesh",
                                    "Growth": "8.21%",
                                    "Literacy": "65.11000061035156",
                                    "Sex_Ratio": "997",
                                    "Population": "3512576",
                                    "Area_km2": "12846"
                                },
                                {
                                    "District": "Wardha",
                                    "State": "Maharashtra",
                                    "Growth": "5.18%",
                                    "Literacy": "86.98999786376953",
                                    "Sex_Ratio": "946",
                                    "Population": "1300774",
                                    "Area_km2": "6309"
                                },
                                {
                                    "District": "Washim",
                                    "State": "Maharashtra",
                                    "Growth": "17.34%",
                                    "Literacy": "83.25",
                                    "Sex_Ratio": "930",
                                    "Population": "1197160",
                                    "Area_km2": "4898"
                                },
                                {
                                    "District": "Wayanad",
                                    "State": "Kerala",
                                    "Growth": "4.71%",
                                    "Literacy": "89.02999877929688",
                                    "Sex_Ratio": "1035",
                                    "Population": "817420",
                                    "Area_km2": "2130"
                                },
                                {
                                    "District": "West Delhi",
                                    "State": "Delhi",
                                    "Growth": "19.46%",
                                    "Literacy": "86.9800033569336",
                                    "Sex_Ratio": "875",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "West Garo Hills",
                                    "State": "Meghalaya",
                                    "Growth": "24.09%",
                                    "Literacy": "67.58000183105469",
                                    "Sex_Ratio": "984",
                                    "Population": "643291",
                                    "Area_km2": "3677"
                                },
                                {
                                    "District": "West Godavari",
                                    "State": "Andhra Pradesh",
                                    "Growth": "3.51%",
                                    "Literacy": "74.62999725341797",
                                    "Sex_Ratio": "1004",
                                    "Population": "3936966",
                                    "Area_km2": "7742"
                                },
                                {
                                    "District": "West Kameng",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "12.53%",
                                    "Literacy": "67.06999969482422",
                                    "Sex_Ratio": "819",
                                    "Population": "83947",
                                    "Area_km2": "7422"
                                },
                                {
                                    "District": "West Khasi Hills",
                                    "State": "Meghalaya",
                                    "Growth": "29.53%",
                                    "Literacy": "77.87000274658203",
                                    "Sex_Ratio": "980",
                                    "Population": "383461",
                                    "Area_km2": "5247"
                                },
                                {
                                    "District": "West Nimar",
                                    "State": "Madhya Pradesh",
                                    "Growth": "22.85%",
                                    "Literacy": "62.70000076293945",
                                    "Sex_Ratio": "965",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "West Siang",
                                    "State": "Arunachal Pradesh",
                                    "Growth": "8.04%",
                                    "Literacy": "66.45999908447266",
                                    "Sex_Ratio": "930",
                                    "Population": "112274",
                                    "Area_km2": "8325"
                                },
                                {
                                    "District": "West Sikkim",
                                    "State": "Sikkim",
                                    "Growth": "10.69%",
                                    "Literacy": "77.38999938964844",
                                    "Sex_Ratio": "942",
                                    "Population": "NULL",
                                    "Area_km2": "NULL"
                                },
                                {
                                    "District": "West Tripura",
                                    "State": "Tripura",
                                    "Growth": "12.57%",
                                    "Literacy": "88.69000244140625",
                                    "Sex_Ratio": "962",
                                    "Population": "1725739",
                                    "Area_km2": "2993"
                                },
                                {
                                    "District": "Wokha",
                                    "State": "Nagaland",
                                    "Growth": "98.81%",
                                    "Literacy": "87.69000244140625",
                                    "Sex_Ratio": "968",
                                    "Population": "166343",
                                    "Area_km2": "1628"
                                },
                                {
                                    "District": "Yadgir",
                                    "State": "Karnataka",
                                    "Growth": "22.81%",
                                    "Literacy": "51.83000183105469",
                                    "Sex_Ratio": "989",
                                    "Population": "1174271",
                                    "Area_km2": "5270"
                                },
                                {
                                    "District": "Yamunanagar",
                                    "State": "Haryana",
                                    "Growth": "16.57%",
                                    "Literacy": "77.98999786376953",
                                    "Sex_Ratio": "877",
                                    "Population": "1214205",
                                    "Area_km2": "1768"
                                },
                                {
                                    "District": "Yanam",
                                    "State": "Puducherry",
                                    "Growth": "77.19%",
                                    "Literacy": "79.47000122070312",
                                    "Sex_Ratio": "1038",
                                    "Population": "55626",
                                    "Area_km2": "30"
                                },
                                {
                                    "District": "Yavatmal",
                                    "State": "Maharashtra",
                                    "Growth": "12.78%",
                                    "Literacy": "82.81999969482422",
                                    "Sex_Ratio": "952",
                                    "Population": "2772348",
                                    "Area_km2": "13582"
                                },
                                {
                                    "District": "YSR",
                                    "State": "Andhra Pradesh",
                                    "Growth": "10.79%",
                                    "Literacy": "67.30000305175781",
                                    "Sex_Ratio": "985",
                                    "Population": "2882469",
                                    "Area_km2": "15359"
                                },
                                {
                                    "District": "Zunheboto",
                                    "State": "Nagaland",
                                    "Growth": "78.05%",
                                    "Literacy": "85.26000213623047",
                                    "Sex_Ratio": "976",
                                    "Population": "140757",
                                    "Area_km2": "1255"
                                }
                            ]
                        },
                        "text/html": "<table><tr><th>District</th><th>State</th><th>Growth</th><th>Literacy</th><th>Sex_Ratio</th><th>Population</th><th>Area_km2</th></tr><tr><td>Adilabad</td><td>Andhra Pradesh</td><td>10.18%</td><td>61.0099983215332</td><td>1001</td><td>2741239</td><td>16105</td></tr><tr><td>Agra</td><td>Uttar Pradesh</td><td>22.05%</td><td>71.58000183105469</td><td>868</td><td>4418797</td><td>4041</td></tr><tr><td>Ahmadabad</td><td>Gujarat</td><td>24.03%</td><td>85.30999755859375</td><td>904</td><td>7214225</td><td>8107</td></tr><tr><td>Ahmadnagar</td><td>Maharashtra</td><td>12.44%</td><td>79.05000305175781</td><td>939</td><td>4543159</td><td>17048</td></tr><tr><td>Aizawl</td><td>Mizoram</td><td>22.92%</td><td>97.88999938964844</td><td>1009</td><td>400309</td><td>3576</td></tr><tr><td>Ajmer</td><td>Rajasthan</td><td>18.40%</td><td>69.33000183105469</td><td>951</td><td>2583052</td><td>8481</td></tr><tr><td>Akola</td><td>Maharashtra</td><td>11.27%</td><td>88.05000305175781</td><td>946</td><td>1813906</td><td>5676</td></tr><tr><td>Alappuzha</td><td>Kerala</td><td>0.88%</td><td>95.72000122070312</td><td>1100</td><td>2127789</td><td>1415</td></tr><tr><td>Aligarh</td><td>Uttar Pradesh</td><td>22.78%</td><td>67.5199966430664</td><td>882</td><td>3673889</td><td>3650</td></tr><tr><td>Alirajpur</td><td>Madhya Pradesh</td><td>19.45%</td><td>36.099998474121094</td><td>1011</td><td>728999</td><td>3182</td></tr><tr><td>Allahabad</td><td>Uttar Pradesh</td><td>20.63%</td><td>72.31999969482422</td><td>901</td><td>5954391</td><td>5482</td></tr><tr><td>Almora</td><td>Uttarakhand</td><td>-1.28%</td><td>80.47000122070312</td><td>1139</td><td>622506</td><td>3144</td></tr><tr><td>Alwar</td><td>Rajasthan</td><td>22.78%</td><td>70.72000122070312</td><td>895</td><td>3674179</td><td>8380</td></tr><tr><td>Ambala</td><td>Haryana</td><td>11.23%</td><td>81.75</td><td>885</td><td>1128350</td><td>1574</td></tr><tr><td>Ambedkar Nagar</td><td>Uttar Pradesh</td><td>18.30%</td><td>72.2300033569336</td><td>978</td><td>2397888</td><td>2350</td></tr><tr><td>Amravati</td><td>Maharashtra</td><td>10.79%</td><td>87.37999725341797</td><td>951</td><td>2888445</td><td>12210</td></tr><tr><td>Amreli</td><td>Gujarat</td><td>8.63%</td><td>74.25</td><td>964</td><td>1514190</td><td>7397</td></tr><tr><td>Amritsar</td><td>Punjab</td><td>15.47%</td><td>76.2699966430664</td><td>889</td><td>2490656</td><td>2683</td></tr><tr><td>Anand</td><td>Gujarat</td><td>12.70%</td><td>84.37000274658203</td><td>925</td><td>2092745</td><td>3204</td></tr><tr><td>Anantapur</td><td>Andhra Pradesh</td><td>12.10%</td><td>63.56999969482422</td><td>977</td><td>4081148</td><td>19130</td></tr><tr><td>Anantnag</td><td>Jammu and Kashmir</td><td>38.58%</td><td>62.689998626708984</td><td>927</td><td>1078692</td><td>3574</td></tr><tr><td>Anjaw</td><td>Arunachal Pradesh</td><td>14.19%</td><td>56.459999084472656</td><td>839</td><td>21167</td><td>6190</td></tr><tr><td>Anugul</td><td>Orissa</td><td>11.74%</td><td>77.52999877929688</td><td>943</td><td>1273821</td><td>6375</td></tr><tr><td>Anuppur</td><td>Madhya Pradesh</td><td>12.30%</td><td>67.87999725341797</td><td>976</td><td>749237</td><td>3747</td></tr><tr><td>Araria</td><td>Bihar</td><td>30.25%</td><td>53.529998779296875</td><td>921</td><td>2811569</td><td>2830</td></tr><tr><td>Ariyalur</td><td>Tamil Nadu</td><td>8.54%</td><td>71.33999633789062</td><td>1015</td><td>754894</td><td>1940</td></tr><tr><td>Arwal</td><td>Bihar</td><td>18.89%</td><td>67.43000030517578</td><td>928</td><td>700843</td><td>638</td></tr><tr><td>Ashoknagar</td><td>Madhya Pradesh</td><td>22.66%</td><td>66.41999816894531</td><td>904</td><td>845071</td><td>4674</td></tr><tr><td>Auraiya</td><td>Uttar Pradesh</td><td>16.91%</td><td>78.94999694824219</td><td>864</td><td>1379545</td><td>2016</td></tr><tr><td>Aurangabad</td><td>Bihar</td><td>26.18%</td><td>70.31999969482422</td><td>926</td><td>2540073</td><td>3305</td></tr><tr><td>Aurangabad</td><td>Bihar</td><td>26.18%</td><td>70.31999969482422</td><td>926</td><td>3701282</td><td>10107</td></tr><tr><td>Aurangabad</td><td>Maharashtra</td><td>27.76%</td><td>79.0199966430664</td><td>923</td><td>2540073</td><td>3305</td></tr><tr><td>Aurangabad</td><td>Maharashtra</td><td>27.76%</td><td>79.0199966430664</td><td>923</td><td>3701282</td><td>10107</td></tr><tr><td>Azamgarh</td><td>Uttar Pradesh</td><td>17.11%</td><td>70.93000030517578</td><td>1019</td><td>4613913</td><td>4054</td></tr><tr><td>Badgam</td><td>Jammu and Kashmir</td><td>24.14%</td><td>56.08000183105469</td><td>894</td><td>753745</td><td>1361</td></tr><tr><td>Bagalkot</td><td>Karnataka</td><td>14.40%</td><td>68.81999969482422</td><td>989</td><td>1889752</td><td>6552</td></tr><tr><td>Bageshwar</td><td>Uttarakhand</td><td>4.18%</td><td>80.01000213623047</td><td>1090</td><td>259898</td><td>2241</td></tr><tr><td>Baghpat</td><td>Uttar Pradesh</td><td>11.95%</td><td>72.01000213623047</td><td>861</td><td>1303048</td><td>1321</td></tr><tr><td>Bahraich</td><td>Uttar Pradesh</td><td>46.48%</td><td>49.36000061035156</td><td>892</td><td>3487731</td><td>5237</td></tr><tr><td>Baksa</td><td>Assam</td><td>10.74%</td><td>69.25</td><td>974</td><td>950075</td><td>2457</td></tr><tr><td>Balaghat</td><td>Madhya Pradesh</td><td>13.60%</td><td>77.08999633789062</td><td>1021</td><td>1701698</td><td>9229</td></tr><tr><td>Balangir</td><td>Orissa</td><td>23.32%</td><td>64.72000122070312</td><td>987</td><td>1648997</td><td>6575</td></tr><tr><td>Baleshwar</td><td>Orissa</td><td>14.62%</td><td>79.79000091552734</td><td>957</td><td>2320529</td><td>3806</td></tr><tr><td>Ballia</td><td>Uttar Pradesh</td><td>17.31%</td><td>70.94000244140625</td><td>937</td><td>3239774</td><td>2981</td></tr><tr><td>Balrampur</td><td>Uttar Pradesh</td><td>27.72%</td><td>49.5099983215332</td><td>928</td><td>2148665</td><td>3349</td></tr><tr><td>Banaskantha</td><td>Gujarat</td><td>24.61%</td><td>65.31999969482422</td><td>938</td><td>3120506</td><td>10743</td></tr><tr><td>Banda</td><td>Uttar Pradesh</td><td>17.05%</td><td>66.66999816894531</td><td>863</td><td>1799410</td><td>4408</td></tr><tr><td>Bandipora</td><td>Jammu and Kashmir</td><td>28.65%</td><td>56.279998779296875</td><td>889</td><td>392232</td><td>345</td></tr><tr><td>Bangalore</td><td>Karnataka</td><td>47.18%</td><td>87.66999816894531</td><td>916</td><td>9621551</td><td>2196</td></tr><tr><td>Bangalore Rural</td><td>Karnataka</td><td>16.45%</td><td>77.93000030517578</td><td>946</td><td>990923</td><td>2298</td></tr><tr><td>Banka</td><td>Bihar</td><td>26.48%</td><td>58.16999816894531</td><td>907</td><td>2034763</td><td>3020</td></tr><tr><td>Bankura</td><td>West Bengal</td><td>12.65%</td><td>70.26000213623047</td><td>957</td><td>3596674</td><td>6882</td></tr><tr><td>Banswara</td><td>Rajasthan</td><td>26.53%</td><td>56.33000183105469</td><td>980</td><td>1797485</td><td>4522</td></tr><tr><td>Barabanki</td><td>Uttar Pradesh</td><td>21.96%</td><td>61.75</td><td>910</td><td>3260699</td><td>4402</td></tr><tr><td>Baramula</td><td>Jammu and Kashmir</td><td>19.45%</td><td>64.62999725341797</td><td>885</td><td>1008039</td><td>4243</td></tr><tr><td>Baran</td><td>Rajasthan</td><td>19.68%</td><td>66.66000366210938</td><td>929</td><td>1222755</td><td>6992</td></tr><tr><td>Barddhaman</td><td>West Bengal</td><td>11.92%</td><td>76.20999908447266</td><td>945</td><td>7717563</td><td>7024</td></tr><tr><td>Bareilly</td><td>Uttar Pradesh</td><td>22.93%</td><td>58.4900016784668</td><td>887</td><td>4448359</td><td>4120</td></tr><tr><td>Bargarh</td><td>Orissa</td><td>10.02%</td><td>74.62000274658203</td><td>977</td><td>1481255</td><td>5837</td></tr><tr><td>Barmer</td><td>Rajasthan</td><td>32.52%</td><td>56.529998779296875</td><td>902</td><td>2603751</td><td>28387</td></tr><tr><td>Barnala</td><td>Punjab</td><td>13.02%</td><td>67.81999969482422</td><td>876</td><td>595527</td><td>1482</td></tr><tr><td>Barpeta</td><td>Assam</td><td>21.43%</td><td>63.810001373291016</td><td>953</td><td>1693622</td><td>2282</td></tr><tr><td>Barwani</td><td>Madhya Pradesh</td><td>27.57%</td><td>49.08000183105469</td><td>982</td><td>1385881</td><td>5427</td></tr><tr><td>Bastar</td><td>Chhattisgarh</td><td>17.96%</td><td>54.400001525878906</td><td>1023</td><td>1413199</td><td>10470</td></tr><tr><td>Basti</td><td>Uttar Pradesh</td><td>18.21%</td><td>67.22000122070312</td><td>963</td><td>2464464</td><td>2688</td></tr><tr><td>Bathinda</td><td>Punjab</td><td>17.34%</td><td>68.27999877929688</td><td>868</td><td>1388525</td><td>3353</td></tr><tr><td>Baudh</td><td>Orissa</td><td>18.16%</td><td>71.61000061035156</td><td>991</td><td>441162</td><td>3098</td></tr><tr><td>Begusarai</td><td>Bihar</td><td>26.44%</td><td>63.869998931884766</td><td>895</td><td>2970541</td><td>1918</td></tr><tr><td>Belgaum</td><td>Karnataka</td><td>13.41%</td><td>73.4800033569336</td><td>973</td><td>4779661</td><td>13433</td></tr><tr><td>Bellary</td><td>Karnataka</td><td>20.99%</td><td>67.43000030517578</td><td>983</td><td>2452595</td><td>8461</td></tr><tr><td>Betul</td><td>Madhya Pradesh</td><td>12.92%</td><td>68.9000015258789</td><td>971</td><td>1575362</td><td>10043</td></tr><tr><td>Bhadrak</td><td>Orissa</td><td>12.94%</td><td>82.77999877929688</td><td>981</td><td>1506337</td><td>2505</td></tr><tr><td>Bhagalpur</td><td>Bihar</td><td>25.36%</td><td>63.13999938964844</td><td>880</td><td>3037766</td><td>2569</td></tr><tr><td>Bhandara</td><td>Maharashtra</td><td>5.65%</td><td>83.76000213623047</td><td>982</td><td>1200334</td><td>4087</td></tr><tr><td>Bharatpur</td><td>Rajasthan</td><td>21.29%</td><td>70.11000061035156</td><td>880</td><td>2548462</td><td>5066</td></tr><tr><td>Bharuch</td><td>Gujarat</td><td>13.16%</td><td>81.51000213623047</td><td>925</td><td>1551019</td><td>6509</td></tr><tr><td>Bhavnagar</td><td>Gujarat</td><td>16.63%</td><td>75.5199966430664</td><td>933</td><td>2880365</td><td>10034</td></tr><tr><td>Bhilwara</td><td>Rajasthan</td><td>19.60%</td><td>61.369998931884766</td><td>973</td><td>2408523</td><td>10455</td></tr><tr><td>Bhind</td><td>Madhya Pradesh</td><td>19.21%</td><td>75.26000213623047</td><td>837</td><td>1703005</td><td>4459</td></tr><tr><td>Bhiwani</td><td>Haryana</td><td>14.70%</td><td>75.20999908447266</td><td>886</td><td>1634445</td><td>4778</td></tr><tr><td>Bhojpur</td><td>Bihar</td><td>21.63%</td><td>70.47000122070312</td><td>907</td><td>2728407</td><td>2395</td></tr><tr><td>Bhopal</td><td>Madhya Pradesh</td><td>28.62%</td><td>80.37000274658203</td><td>918</td><td>2371061</td><td>2772</td></tr><tr><td>Bid</td><td>Maharashtra</td><td>19.61%</td><td>76.98999786376953</td><td>916</td><td>2585049</td><td>10693</td></tr><tr><td>Bidar</td><td>Karnataka</td><td>13.37%</td><td>70.51000213623047</td><td>956</td><td>1703300</td><td>5448</td></tr><tr><td>Bijapur</td><td>Chhattisgarh</td><td>8.78%</td><td>40.86000061035156</td><td>984</td><td>255230</td><td>8530</td></tr><tr><td>Bijapur</td><td>Chhattisgarh</td><td>8.78%</td><td>40.86000061035156</td><td>984</td><td>2177331</td><td>10498</td></tr><tr><td>Bijapur</td><td>Karnataka</td><td>20.50%</td><td>67.1500015258789</td><td>960</td><td>255230</td><td>8530</td></tr><tr><td>Bijapur</td><td>Karnataka</td><td>20.50%</td><td>67.1500015258789</td><td>960</td><td>2177331</td><td>10498</td></tr><tr><td>Bijnor</td><td>Uttar Pradesh</td><td>17.60%</td><td>68.4800033569336</td><td>917</td><td>3682713</td><td>4561</td></tr><tr><td>Bikaner</td><td>Rajasthan</td><td>41.19%</td><td>65.12999725341797</td><td>905</td><td>2363937</td><td>30239</td></tr><tr><td>Bilaspur</td><td>Chhattisgarh</td><td>33.29%</td><td>70.77999877929688</td><td>971</td><td>381956</td><td>1167</td></tr><tr><td>Bilaspur</td><td>Chhattisgarh</td><td>33.29%</td><td>70.77999877929688</td><td>971</td><td>2663629</td><td>8272</td></tr><tr><td>Bilaspur</td><td>Himachal Pradesh</td><td>12.05%</td><td>84.58999633789062</td><td>981</td><td>381956</td><td>1167</td></tr><tr><td>Bilaspur</td><td>Himachal Pradesh</td><td>12.05%</td><td>84.58999633789062</td><td>981</td><td>2663629</td><td>8272</td></tr><tr><td>Birbhum</td><td>West Bengal</td><td>16.15%</td><td>70.68000030517578</td><td>956</td><td>3502404</td><td>4545</td></tr><tr><td>Bishnupur</td><td>Manipur</td><td>13.93%</td><td>75.8499984741211</td><td>999</td><td>237399</td><td>496</td></tr><tr><td>Bokaro</td><td>Jharkhand</td><td>16.01%</td><td>72.01000213623047</td><td>922</td><td>2062330</td><td>2883</td></tr><tr><td>Bongaigaon</td><td>Assam</td><td>20.59%</td><td>69.73999786376953</td><td>966</td><td>738804</td><td>1093</td></tr><tr><td>Budaun</td><td>Uttar Pradesh</td><td>19.95%</td><td>51.290000915527344</td><td>871</td><td>3681896</td><td>5168</td></tr><tr><td>Bulandshahar</td><td>Uttar Pradesh</td><td>20.12%</td><td>68.87999725341797</td><td>896</td><td>3499171</td><td>4512</td></tr><tr><td>Buldana</td><td>Maharashtra</td><td>15.85%</td><td>83.4000015258789</td><td>934</td><td>2586258</td><td>9661</td></tr><tr><td>Bundi</td><td>Rajasthan</td><td>15.40%</td><td>61.52000045776367</td><td>925</td><td>1110906</td><td>5776</td></tr><tr><td>Burhanpur</td><td>Madhya Pradesh</td><td>19.37%</td><td>64.36000061035156</td><td>951</td><td>757847</td><td>3427</td></tr><tr><td>Buxar</td><td>Bihar</td><td>21.67%</td><td>70.13999938964844</td><td>922</td><td>1706352</td><td>1703</td></tr><tr><td>Cachar</td><td>Assam</td><td>20.19%</td><td>79.33999633789062</td><td>959</td><td>1736617</td><td>3786</td></tr><tr><td>Central Delhi</td><td>Delhi</td><td>-9.91%</td><td>85.13999938964844</td><td>892</td><td>NULL</td><td>NULL</td></tr><tr><td>Chamarajanagar</td><td>Karnataka</td><td>5.73%</td><td>61.43000030517578</td><td>993</td><td>1020791</td><td>5648</td></tr><tr><td>Chamba</td><td>Himachal Pradesh</td><td>12.63%</td><td>72.16999816894531</td><td>986</td><td>519080</td><td>6522</td></tr><tr><td>Chamoli</td><td>Uttarakhand</td><td>5.74%</td><td>82.6500015258789</td><td>1019</td><td>391605</td><td>8030</td></tr><tr><td>Champawat</td><td>Uttarakhand</td><td>15.63%</td><td>79.83000183105469</td><td>980</td><td>259648</td><td>1766</td></tr><tr><td>Champhai</td><td>Mizoram</td><td>16.01%</td><td>95.91000366210938</td><td>984</td><td>125745</td><td>3185</td></tr><tr><td>Chandauli</td><td>Uttar Pradesh</td><td>18.83%</td><td>71.4800033569336</td><td>918</td><td>1952756</td><td>2541</td></tr><tr><td>Chandel</td><td>Manipur</td><td>21.85%</td><td>71.11000061035156</td><td>933</td><td>144182</td><td>3313</td></tr><tr><td>Chandigarh</td><td>Chandigarh</td><td>17.19%</td><td>86.05000305175781</td><td>818</td><td>1055450</td><td>114</td></tr><tr><td>Chandrapur</td><td>Maharashtra</td><td>6.43%</td><td>80.01000213623047</td><td>961</td><td>2204307</td><td>11443</td></tr><tr><td>Changlang</td><td>Arunachal Pradesh</td><td>18.18%</td><td>59.79999923706055</td><td>926</td><td>148226</td><td>4662</td></tr><tr><td>Chatra</td><td>Jharkhand</td><td>31.77%</td><td>60.18000030517578</td><td>953</td><td>1042886</td><td>3718</td></tr><tr><td>Chennai</td><td>Tamil Nadu</td><td>6.98%</td><td>90.18000030517578</td><td>989</td><td>4646732</td><td>175</td></tr><tr><td>Chhattarpur</td><td>Madhya Pradesh</td><td>19.51%</td><td>63.7400016784668</td><td>883</td><td>NULL</td><td>NULL</td></tr><tr><td>Chhindwara</td><td>Madhya Pradesh</td><td>13.07%</td><td>71.16000366210938</td><td>964</td><td>2090922</td><td>11815</td></tr><tr><td>Chikkaballapura</td><td>Karnataka</td><td>9.23%</td><td>69.76000213623047</td><td>972</td><td>1255104</td><td>4244</td></tr><tr><td>Chikmagalur</td><td>Karnataka</td><td>-0.26%</td><td>79.25</td><td>1008</td><td>1137961</td><td>7202</td></tr><tr><td>Chirang</td><td>Assam</td><td>11.34%</td><td>63.54999923706055</td><td>969</td><td>482162</td><td>1923</td></tr><tr><td>Chitradurga</td><td>Karnataka</td><td>9.33%</td><td>73.70999908447266</td><td>974</td><td>1659456</td><td>8436</td></tr><tr><td>Chitrakoot</td><td>Uttar Pradesh</td><td>29.43%</td><td>65.05000305175781</td><td>879</td><td>991730</td><td>3216</td></tr><tr><td>Chittaurgarh</td><td>Rajasthan</td><td>16.08%</td><td>61.709999084472656</td><td>972</td><td>1544338</td><td>7822</td></tr><tr><td>Chittoor</td><td>Andhra Pradesh</td><td>11.43%</td><td>71.52999877929688</td><td>997</td><td>4174064</td><td>15152</td></tr><tr><td>Churachandpur</td><td>Manipur</td><td>20.29%</td><td>82.77999877929688</td><td>975</td><td>274143</td><td>4570</td></tr><tr><td>Churu</td><td>Rajasthan</td><td>6.01%</td><td>66.75</td><td>940</td><td>2039547</td><td>13835</td></tr><tr><td>Coimbatore</td><td>Tamil Nadu</td><td>18.56%</td><td>83.9800033569336</td><td>1000</td><td>3458045</td><td>4732</td></tr><tr><td>Cuddalore</td><td>Tamil Nadu</td><td>14.02%</td><td>78.04000091552734</td><td>987</td><td>2605914</td><td>3703</td></tr><tr><td>Cuttack</td><td>Orissa</td><td>12.10%</td><td>85.5</td><td>940</td><td>2624470</td><td>3932</td></tr><tr><td>Dadra and Nagar Haveli</td><td>Dadra and Nagar Haveli</td><td>55.88%</td><td>76.23999786376953</td><td>774</td><td>NULL</td><td>NULL</td></tr><tr><td>Dakshin Dinajpur</td><td>West Bengal</td><td>11.52%</td><td>72.81999969482422</td><td>956</td><td>1676276</td><td>2219</td></tr><tr><td>Dakshina Kannada</td><td>Karnataka</td><td>10.11%</td><td>88.56999969482422</td><td>1020</td><td>2089649</td><td>4861</td></tr><tr><td>Daman</td><td>Daman and Diu</td><td>67.71%</td><td>88.06999969482422</td><td>534</td><td>191173</td><td>72</td></tr><tr><td>Damoh</td><td>Madhya Pradesh</td><td>16.63%</td><td>69.7300033569336</td><td>910</td><td>1264219</td><td>7306</td></tr><tr><td>Dantewada</td><td>Chhattisgarh</td><td>12.08%</td><td>42.119998931884766</td><td>1020</td><td>NULL</td><td>NULL</td></tr><tr><td>Darbhanga</td><td>Bihar</td><td>19.47%</td><td>56.560001373291016</td><td>911</td><td>3937385</td><td>2279</td></tr><tr><td>Darjiling</td><td>West Bengal</td><td>14.77%</td><td>79.55999755859375</td><td>970</td><td>1846823</td><td>3149</td></tr><tr><td>Darrang</td><td>Assam</td><td>22.19%</td><td>63.08000183105469</td><td>954</td><td>928500</td><td>1585</td></tr><tr><td>Datia</td><td>Madhya Pradesh</td><td>18.46%</td><td>72.62999725341797</td><td>873</td><td>786754</td><td>2902</td></tr><tr><td>Dausa</td><td>Rajasthan</td><td>24.09%</td><td>68.16000366210938</td><td>905</td><td>1634409</td><td>3432</td></tr><tr><td>Davanagere</td><td>Karnataka</td><td>8.63%</td><td>75.73999786376953</td><td>972</td><td>1945497</td><td>5924</td></tr><tr><td>Debagarh</td><td>Orissa</td><td>14.01%</td><td>72.56999969482422</td><td>975</td><td>312520</td><td>2940</td></tr><tr><td>Dehradun</td><td>Uttarakhand</td><td>32.33%</td><td>84.25</td><td>902</td><td>1696694</td><td>3088</td></tr><tr><td>Deoghar</td><td>Jharkhand</td><td>28.03%</td><td>64.8499984741211</td><td>925</td><td>1492073</td><td>2477</td></tr><tr><td>Deoria</td><td>Uttar Pradesh</td><td>14.31%</td><td>71.12999725341797</td><td>1017</td><td>3100946</td><td>2540</td></tr><tr><td>Dewas</td><td>Madhya Pradesh</td><td>19.53%</td><td>69.3499984741211</td><td>942</td><td>1563715</td><td>7020</td></tr><tr><td>Dhalai</td><td>Tripura</td><td>22.85%</td><td>85.72000122070312</td><td>944</td><td>378230</td><td>2400</td></tr><tr><td>Dhamtari</td><td>Chhattisgarh</td><td>13.19%</td><td>78.36000061035156</td><td>1010</td><td>799781</td><td>4084</td></tr><tr><td>Dhanbad</td><td>Jharkhand</td><td>11.99%</td><td>74.5199966430664</td><td>909</td><td>2684487</td><td>2040</td></tr><tr><td>Dhar</td><td>Madhya Pradesh</td><td>25.60%</td><td>59</td><td>964</td><td>2185793</td><td>8153</td></tr><tr><td>Dharmapuri</td><td>Tamil Nadu</td><td>16.34%</td><td>68.54000091552734</td><td>946</td><td>1506843</td><td>4497</td></tr><tr><td>Dharwad</td><td>Karnataka</td><td>15.13%</td><td>80</td><td>971</td><td>1847023</td><td>4260</td></tr><tr><td>Dhaulpur</td><td>Rajasthan</td><td>22.71%</td><td>69.08000183105469</td><td>846</td><td>1206516</td><td>3033</td></tr><tr><td>Dhemaji</td><td>Assam</td><td>19.97%</td><td>72.69999694824219</td><td>953</td><td>686133</td><td>3237</td></tr><tr><td>Dhenkanal</td><td>Orissa</td><td>11.80%</td><td>78.76000213623047</td><td>947</td><td>1192811</td><td>4452</td></tr><tr><td>Dhubri</td><td>Assam</td><td>24.44%</td><td>58.34000015258789</td><td>953</td><td>1949258</td><td>2176</td></tr><tr><td>Dhule</td><td>Maharashtra</td><td>20.08%</td><td>72.80000305175781</td><td>946</td><td>2050862</td><td>7195</td></tr><tr><td>Dibang Valley</td><td>Arunachal Pradesh</td><td>10.07%</td><td>64.0999984741211</td><td>813</td><td>8004</td><td>9129</td></tr><tr><td>Dibrugarh</td><td>Assam</td><td>11.92%</td><td>76.05000305175781</td><td>961</td><td>1326335</td><td>3381</td></tr><tr><td>Dima Hasao</td><td>Assam</td><td>13.84%</td><td>77.54000091552734</td><td>932</td><td>214102</td><td>4888</td></tr><tr><td>Dimapur</td><td>Nagaland</td><td>127.29%</td><td>84.79000091552734</td><td>919</td><td>378811</td><td>927</td></tr><tr><td>Dindigul</td><td>Tamil Nadu</td><td>12.31%</td><td>76.26000213623047</td><td>998</td><td>2159775</td><td>6036</td></tr><tr><td>Dindori</td><td>Madhya Pradesh</td><td>21.32%</td><td>63.900001525878906</td><td>1002</td><td>704524</td><td>7470</td></tr><tr><td>Diu</td><td>Daman and Diu</td><td>17.77%</td><td>83.45999908447266</td><td>1031</td><td>52074</td><td>39</td></tr><tr><td>Doda</td><td>Jammu and Kashmir</td><td>28.00%</td><td>64.68000030517578</td><td>919</td><td>409936</td><td>8912</td></tr><tr><td>Dohad</td><td>Gujarat</td><td>29.98%</td><td>58.81999969482422</td><td>990</td><td>NULL</td><td>NULL</td></tr><tr><td>Dumka</td><td>Jharkhand</td><td>19.42%</td><td>61.02000045776367</td><td>977</td><td>1321442</td><td>3761</td></tr><tr><td>Dungarpur</td><td>Rajasthan</td><td>25.36%</td><td>59.459999084472656</td><td>994</td><td>1388552</td><td>3770</td></tr><tr><td>Durg</td><td>Chhattisgarh</td><td>18.98%</td><td>79.05999755859375</td><td>988</td><td>3343872</td><td>8535</td></tr><tr><td>East Delhi</td><td>Delhi</td><td>16.79%</td><td>89.30999755859375</td><td>884</td><td>NULL</td><td>NULL</td></tr><tr><td>East Garo Hills</td><td>Meghalaya</td><td>26.87%</td><td>73.94999694824219</td><td>972</td><td>317917</td><td>2603</td></tr><tr><td>East Godavari</td><td>Andhra Pradesh</td><td>5.16%</td><td>70.98999786376953</td><td>1006</td><td>5154296</td><td>10807</td></tr><tr><td>East Kameng</td><td>Arunachal Pradesh</td><td>37.62%</td><td>60.02000045776367</td><td>1029</td><td>78690</td><td>4134</td></tr><tr><td>East Khasi Hills</td><td>Meghalaya</td><td>24.96%</td><td>84.1500015258789</td><td>1011</td><td>825922</td><td>2748</td></tr><tr><td>East Nimar</td><td>Madhya Pradesh</td><td>21.50%</td><td>66.38999938964844</td><td>943</td><td>NULL</td><td>NULL</td></tr><tr><td>East Siang</td><td>Arunachal Pradesh</td><td>13.52%</td><td>72.54000091552734</td><td>980</td><td>99214</td><td>3603</td></tr><tr><td>East Sikkim</td><td>Sikkim</td><td>15.73%</td><td>83.8499984741211</td><td>873</td><td>NULL</td><td>NULL</td></tr><tr><td>Ernakulam</td><td>Kerala</td><td>5.69%</td><td>95.88999938964844</td><td>1027</td><td>3282388</td><td>3063</td></tr><tr><td>Erode</td><td>Tamil Nadu</td><td>11.66%</td><td>72.58000183105469</td><td>993</td><td>2251744</td><td>5760</td></tr><tr><td>Etah</td><td>Uttar Pradesh</td><td>13.62%</td><td>70.80999755859375</td><td>873</td><td>1774480</td><td>2431</td></tr><tr><td>Etawah</td><td>Uttar Pradesh</td><td>18.15%</td><td>78.41000366210938</td><td>870</td><td>1581810</td><td>2311</td></tr><tr><td>Faizabad</td><td>Uttar Pradesh</td><td>18.29%</td><td>68.7300033569336</td><td>962</td><td>2470996</td><td>2341</td></tr><tr><td>Faridabad</td><td>Haryana</td><td>32.54%</td><td>81.69999694824219</td><td>873</td><td>1809733</td><td>741</td></tr><tr><td>Faridkot</td><td>Punjab</td><td>12.09%</td><td>69.55000305175781</td><td>890</td><td>617508</td><td>1458</td></tr><tr><td>Farrukhabad</td><td>Uttar Pradesh</td><td>20.05%</td><td>69.04000091552734</td><td>874</td><td>1885204</td><td>2181</td></tr><tr><td>Fatehabad</td><td>Haryana</td><td>16.85%</td><td>67.91999816894531</td><td>902</td><td>942011</td><td>2538</td></tr><tr><td>Fatehgarh Sahib</td><td>Punjab</td><td>11.46%</td><td>79.3499984741211</td><td>871</td><td>600163</td><td>1180</td></tr><tr><td>Fatehpur</td><td>Uttar Pradesh</td><td>14.05%</td><td>67.43000030517578</td><td>901</td><td>2632733</td><td>4152</td></tr><tr><td>Firozabad</td><td>Uttar Pradesh</td><td>21.69%</td><td>71.91999816894531</td><td>875</td><td>2498156</td><td>2407</td></tr><tr><td>Firozpur</td><td>Punjab</td><td>16.21%</td><td>68.91999816894531</td><td>893</td><td>2029074</td><td>5305</td></tr><tr><td>Gadag</td><td>Karnataka</td><td>9.54%</td><td>75.12000274658203</td><td>982</td><td>1064570</td><td>4657</td></tr><tr><td>Gadchiroli</td><td>Maharashtra</td><td>10.58%</td><td>74.36000061035156</td><td>982</td><td>1072942</td><td>14412</td></tr><tr><td>Gajapati</td><td>Orissa</td><td>11.37%</td><td>53.4900016784668</td><td>1043</td><td>577817</td><td>4325</td></tr><tr><td>Ganderbal</td><td>Jammu and Kashmir</td><td>36.50%</td><td>58.040000915527344</td><td>874</td><td>297446</td><td>259</td></tr><tr><td>Gandhinagar</td><td>Gujarat</td><td>4.29%</td><td>84.16000366210938</td><td>923</td><td>1391753</td><td>2140</td></tr><tr><td>Ganganagar</td><td>Rajasthan</td><td>10.04%</td><td>69.63999938964844</td><td>887</td><td>1969168</td><td>10978</td></tr><tr><td>Ganjam</td><td>Orissa</td><td>11.66%</td><td>71.08999633789062</td><td>983</td><td>3529031</td><td>8206</td></tr><tr><td>Garhwa</td><td>Jharkhand</td><td>27.75%</td><td>60.33000183105469</td><td>935</td><td>1322784</td><td>4093</td></tr><tr><td>Gautam Buddha Nagar</td><td>Uttar Pradesh</td><td>37.11%</td><td>80.12000274658203</td><td>851</td><td>1648115</td><td>1282</td></tr><tr><td>Gaya</td><td>Bihar</td><td>26.43%</td><td>63.66999816894531</td><td>937</td><td>4391418</td><td>4976</td></tr><tr><td>Ghaziabad</td><td>Uttar Pradesh</td><td>42.27%</td><td>78.06999969482422</td><td>881</td><td>4681645</td><td>1179</td></tr><tr><td>Ghazipur</td><td>Uttar Pradesh</td><td>19.18%</td><td>71.77999877929688</td><td>952</td><td>3620268</td><td>3377</td></tr><tr><td>Giridih</td><td>Jharkhand</td><td>28.41%</td><td>63.13999938964844</td><td>944</td><td>2445474</td><td>4962</td></tr><tr><td>Goalpara</td><td>Assam</td><td>22.64%</td><td>67.37000274658203</td><td>964</td><td>1008183</td><td>1824</td></tr><tr><td>Godda</td><td>Jharkhand</td><td>25.35%</td><td>56.400001525878906</td><td>938</td><td>1313551</td><td>2266</td></tr><tr><td>Golaghat</td><td>Assam</td><td>12.75%</td><td>77.43000030517578</td><td>964</td><td>1066888</td><td>3502</td></tr><tr><td>Gonda</td><td>Uttar Pradesh</td><td>24.17%</td><td>58.709999084472656</td><td>921</td><td>3433919</td><td>4003</td></tr><tr><td>Gondiya</td><td>Maharashtra</td><td>10.14%</td><td>84.94999694824219</td><td>999</td><td>1322507</td><td>5234</td></tr><tr><td>Gopalganj</td><td>Bihar</td><td>19.02%</td><td>65.47000122070312</td><td>1021</td><td>2562012</td><td>2033</td></tr><tr><td>Gorakhpur</td><td>Uttar Pradesh</td><td>17.81%</td><td>70.83000183105469</td><td>950</td><td>4440895</td><td>3321</td></tr><tr><td>Gulbarga</td><td>Karnataka</td><td>18.01%</td><td>64.8499984741211</td><td>971</td><td>2566326</td><td>10954</td></tr><tr><td>Gumla</td><td>Jharkhand</td><td>23.16%</td><td>65.7300033569336</td><td>993</td><td>1025213</td><td>5360</td></tr><tr><td>Guna</td><td>Madhya Pradesh</td><td>26.97%</td><td>63.22999954223633</td><td>912</td><td>1241519</td><td>6390</td></tr><tr><td>Guntur</td><td>Andhra Pradesh</td><td>9.47%</td><td>67.4000015258789</td><td>1003</td><td>4887813</td><td>11391</td></tr><tr><td>Gurdaspur</td><td>Punjab</td><td>9.26%</td><td>79.94999694824219</td><td>895</td><td>2298323</td><td>3551</td></tr><tr><td>Gurgaon</td><td>Haryana</td><td>73.96%</td><td>84.69999694824219</td><td>854</td><td>1514432</td><td>1258</td></tr><tr><td>Gwalior</td><td>Madhya Pradesh</td><td>24.50%</td><td>76.6500015258789</td><td>864</td><td>2032036</td><td>4560</td></tr><tr><td>Hailakandi</td><td>Assam</td><td>21.45%</td><td>74.33000183105469</td><td>951</td><td>659296</td><td>1327</td></tr><tr><td>Hamirpur</td><td>Himachal Pradesh</td><td>10.19%</td><td>88.1500015258789</td><td>1095</td><td>454768</td><td>1118</td></tr><tr><td>Hamirpur</td><td>Himachal Pradesh</td><td>10.19%</td><td>88.1500015258789</td><td>1095</td><td>1104285</td><td>4021</td></tr><tr><td>Hamirpur</td><td>Uttar Pradesh</td><td>5.80%</td><td>68.7699966430664</td><td>861</td><td>454768</td><td>1118</td></tr><tr><td>Hamirpur</td><td>Uttar Pradesh</td><td>5.80%</td><td>68.7699966430664</td><td>861</td><td>1104285</td><td>4021</td></tr><tr><td>Hanumangarh</td><td>Rajasthan</td><td>16.91%</td><td>67.12999725341797</td><td>906</td><td>1774692</td><td>9656</td></tr><tr><td>Haora</td><td>West Bengal</td><td>13.50%</td><td>83.30999755859375</td><td>939</td><td>4850029</td><td>1467</td></tr><tr><td>Harda</td><td>Madhya Pradesh</td><td>20.25%</td><td>72.5</td><td>935</td><td>570465</td><td>3334</td></tr><tr><td>Hardoi</td><td>Uttar Pradesh</td><td>20.44%</td><td>64.56999969482422</td><td>868</td><td>4092845</td><td>5986</td></tr><tr><td>Haridwar</td><td>Uttarakhand</td><td>30.63%</td><td>73.43000030517578</td><td>880</td><td>NULL</td><td>NULL</td></tr><tr><td>Hassan</td><td>Karnataka</td><td>3.18%</td><td>76.06999969482422</td><td>1010</td><td>1776421</td><td>6814</td></tr><tr><td>Haveri</td><td>Karnataka</td><td>11.02%</td><td>77.4000015258789</td><td>950</td><td>1597668</td><td>4823</td></tr><tr><td>Hazaribagh</td><td>Jharkhand</td><td>20.65%</td><td>69.75</td><td>947</td><td>1734495</td><td>3555</td></tr><tr><td>Hingoli</td><td>Maharashtra</td><td>19.27%</td><td>78.16999816894531</td><td>942</td><td>1177345</td><td>4827</td></tr><tr><td>Hisar</td><td>Haryana</td><td>13.45%</td><td>72.88999938964844</td><td>872</td><td>1743931</td><td>3983</td></tr><tr><td>Hoshangabad</td><td>Madhya Pradesh</td><td>14.49%</td><td>75.29000091552734</td><td>914</td><td>1241350</td><td>6703</td></tr><tr><td>Hoshiarpur</td><td>Punjab</td><td>7.11%</td><td>84.58999633789062</td><td>961</td><td>1586625</td><td>3386</td></tr><tr><td>Hugli</td><td>West Bengal</td><td>9.46%</td><td>81.80000305175781</td><td>961</td><td>5519145</td><td>3149</td></tr><tr><td>Hyderabad</td><td>Andhra Pradesh</td><td>2.97%</td><td>83.25</td><td>954</td><td>3943323</td><td>217</td></tr><tr><td>Idukki</td><td>Kerala</td><td>-1.79%</td><td>91.98999786376953</td><td>1006</td><td>1108974</td><td>4356</td></tr><tr><td>Imphal East</td><td>Manipur</td><td>15.51%</td><td>81.94999694824219</td><td>1017</td><td>456113</td><td>709</td></tr><tr><td>Imphal West</td><td>Manipur</td><td>16.56%</td><td>86.08000183105469</td><td>1031</td><td>517992</td><td>519</td></tr><tr><td>Indore</td><td>Madhya Pradesh</td><td>32.88%</td><td>80.87000274658203</td><td>928</td><td>3276697</td><td>3898</td></tr><tr><td>Jabalpur</td><td>Madhya Pradesh</td><td>14.51%</td><td>81.06999969482422</td><td>929</td><td>2463289</td><td>5211</td></tr><tr><td>Jagatsinghapur</td><td>Orissa</td><td>7.50%</td><td>86.58999633789062</td><td>968</td><td>1136971</td><td>1668</td></tr><tr><td>Jaintia Hills</td><td>Meghalaya</td><td>32.10%</td><td>61.63999938964844</td><td>1013</td><td>395124</td><td>3819</td></tr><tr><td>Jaipur</td><td>Rajasthan</td><td>26.19%</td><td>75.51000213623047</td><td>910</td><td>6626178</td><td>11143</td></tr><tr><td>Jaisalmer</td><td>Rajasthan</td><td>31.81%</td><td>57.220001220703125</td><td>852</td><td>669919</td><td>38401</td></tr><tr><td>Jajapur</td><td>Orissa</td><td>12.49%</td><td>80.12999725341797</td><td>973</td><td>1827192</td><td>2899</td></tr><tr><td>Jalandhar</td><td>Punjab</td><td>11.76%</td><td>82.4800033569336</td><td>915</td><td>2193590</td><td>2624</td></tr><tr><td>Jalaun</td><td>Uttar Pradesh</td><td>16.19%</td><td>73.75</td><td>865</td><td>1689974</td><td>4565</td></tr><tr><td>Jalgaon</td><td>Maharashtra</td><td>14.86%</td><td>78.19999694824219</td><td>925</td><td>4229917</td><td>11765</td></tr><tr><td>Jalna</td><td>Maharashtra</td><td>21.46%</td><td>71.5199966430664</td><td>937</td><td>1959046</td><td>7718</td></tr><tr><td>Jalor</td><td>Rajasthan</td><td>26.21%</td><td>54.86000061035156</td><td>952</td><td>1828730</td><td>10640</td></tr><tr><td>Jalpaiguri</td><td>West Bengal</td><td>13.87%</td><td>73.25</td><td>953</td><td>3872846</td><td>6227</td></tr><tr><td>Jammu</td><td>Jammu and Kashmir</td><td>12.74%</td><td>83.44999694824219</td><td>880</td><td>1529958</td><td>2342</td></tr><tr><td>Jamnagar</td><td>Gujarat</td><td>13.44%</td><td>73.6500015258789</td><td>939</td><td>2160119</td><td>14184</td></tr><tr><td>Jamtara</td><td>Jharkhand</td><td>21.12%</td><td>64.58999633789062</td><td>954</td><td>791042</td><td>1811</td></tr><tr><td>Jamui</td><td>Bihar</td><td>25.85%</td><td>59.790000915527344</td><td>922</td><td>1760405</td><td>3098</td></tr><tr><td>Janjgir Champa</td><td>Chhattisgarh</td><td>22.94%</td><td>73.06999969482422</td><td>986</td><td>NULL</td><td>NULL</td></tr><tr><td>Jashpur</td><td>Chhattisgarh</td><td>14.60%</td><td>67.91999816894531</td><td>1005</td><td>851669</td><td>5838</td></tr><tr><td>Jaunpur</td><td>Uttar Pradesh</td><td>14.89%</td><td>71.55000305175781</td><td>1024</td><td>4494204</td><td>4038</td></tr><tr><td>Jehanabad</td><td>Bihar</td><td>21.68%</td><td>66.80000305175781</td><td>922</td><td>1125313</td><td>931</td></tr><tr><td>Jhabua</td><td>Madhya Pradesh</td><td>30.70%</td><td>43.29999923706055</td><td>990</td><td>1025048</td><td>3600</td></tr><tr><td>Jhajjar</td><td>Haryana</td><td>8.90%</td><td>80.6500015258789</td><td>862</td><td>958405</td><td>1834</td></tr><tr><td>Jhalawar</td><td>Rajasthan</td><td>19.55%</td><td>61.5</td><td>946</td><td>1411129</td><td>6219</td></tr><tr><td>Jhansi</td><td>Uttar Pradesh</td><td>14.54%</td><td>75.05000305175781</td><td>890</td><td>1998603</td><td>5024</td></tr><tr><td>Jharsuguda</td><td>Orissa</td><td>13.69%</td><td>78.86000061035156</td><td>953</td><td>579505</td><td>2114</td></tr><tr><td>Jhunjhunun</td><td>Rajasthan</td><td>11.67%</td><td>74.12999725341797</td><td>950</td><td>2137045</td><td>5928</td></tr><tr><td>Jind</td><td>Haryana</td><td>12.13%</td><td>71.44000244140625</td><td>871</td><td>1334152</td><td>2702</td></tr><tr><td>Jodhpur</td><td>Rajasthan</td><td>27.74%</td><td>65.94000244140625</td><td>916</td><td>3687165</td><td>22850</td></tr><tr><td>Jorhat</td><td>Assam</td><td>9.31%</td><td>82.1500015258789</td><td>962</td><td>1092256</td><td>2851</td></tr><tr><td>Junagadh</td><td>Gujarat</td><td>12.05%</td><td>75.80000305175781</td><td>953</td><td>2743082</td><td>8831</td></tr><tr><td>Jyotiba Phule Nagar</td><td>Uttar Pradesh</td><td>22.76%</td><td>63.84000015258789</td><td>910</td><td>1840221</td><td>2249</td></tr><tr><td>Kabirdham</td><td>Chhattisgarh</td><td>40.71%</td><td>60.849998474121094</td><td>996</td><td>822526</td><td>4235</td></tr><tr><td>Kachchh</td><td>Gujarat</td><td>32.16%</td><td>70.58999633789062</td><td>908</td><td>2092371</td><td>45674</td></tr><tr><td>Kaimur</td><td>Bihar</td><td>26.17%</td><td>69.33999633789062</td><td>920</td><td>1626384</td><td>3332</td></tr><tr><td>Kaithal</td><td>Haryana</td><td>13.55%</td><td>69.1500015258789</td><td>881</td><td>1074304</td><td>2317</td></tr><tr><td>Kalahandi</td><td>Orissa</td><td>18.07%</td><td>59.220001220703125</td><td>1003</td><td>1576869</td><td>7920</td></tr><tr><td>Kamrup</td><td>Assam</td><td>15.69%</td><td>75.55000305175781</td><td>949</td><td>1517542</td><td>3105</td></tr><tr><td>Kamrup Metropolitan</td><td>Assam</td><td>18.34%</td><td>88.70999908447266</td><td>936</td><td>1253938</td><td>955</td></tr><tr><td>Kancheepuram</td><td>Tamil Nadu</td><td>38.95%</td><td>84.48999786376953</td><td>986</td><td>3998252</td><td>4483</td></tr><tr><td>Kandhamal</td><td>Orissa</td><td>13.10%</td><td>64.12999725341797</td><td>1037</td><td>733110</td><td>8021</td></tr><tr><td>Kangra</td><td>Himachal Pradesh</td><td>12.77%</td><td>85.66999816894531</td><td>1012</td><td>1510075</td><td>5739</td></tr><tr><td>Kanker</td><td>Chhattisgarh</td><td>15.06%</td><td>70.29000091552734</td><td>1006</td><td>NULL</td><td>NULL</td></tr><tr><td>Kannauj</td><td>Uttar Pradesh</td><td>19.27%</td><td>72.69999694824219</td><td>879</td><td>1656616</td><td>2093</td></tr><tr><td>Kanniyakumari</td><td>Tamil Nadu</td><td>11.60%</td><td>91.75</td><td>1019</td><td>1870374</td><td>1684</td></tr><tr><td>Kannur</td><td>Kerala</td><td>4.73%</td><td>95.0999984741211</td><td>1136</td><td>2523003</td><td>2961</td></tr><tr><td>Kanpur Nagar</td><td>Uttar Pradesh</td><td>9.92%</td><td>79.6500015258789</td><td>862</td><td>4581268</td><td>3155</td></tr><tr><td>Kanshiram Nagar</td><td>Uttar Pradesh</td><td>16.93%</td><td>61.02000045776367</td><td>880</td><td>1436719</td><td>1955</td></tr><tr><td>Kapurthala</td><td>Punjab</td><td>8.04%</td><td>79.06999969482422</td><td>912</td><td>815168</td><td>1633</td></tr><tr><td>Karaikal</td><td>Puducherry</td><td>17.23%</td><td>87.05000305175781</td><td>1047</td><td>200222</td><td>157</td></tr><tr><td>Karauli</td><td>Rajasthan</td><td>20.55%</td><td>66.22000122070312</td><td>861</td><td>1458248</td><td>5524</td></tr><tr><td>Karbi Anglong</td><td>Assam</td><td>17.58%</td><td>69.25</td><td>951</td><td>956313</td><td>10434</td></tr><tr><td>Kargil</td><td>Jammu and Kashmir</td><td>18.02%</td><td>71.33999633789062</td><td>810</td><td>140802</td><td>14036</td></tr><tr><td>Karimganj</td><td>Assam</td><td>21.90%</td><td>78.22000122070312</td><td>963</td><td>1228686</td><td>1809</td></tr><tr><td>Karimnagar</td><td>Andhra Pradesh</td><td>8.15%</td><td>64.1500015258789</td><td>1008</td><td>3776269</td><td>11823</td></tr><tr><td>Karnal</td><td>Haryana</td><td>18.14%</td><td>74.7300033569336</td><td>887</td><td>1505324</td><td>2520</td></tr><tr><td>Karur</td><td>Tamil Nadu</td><td>13.77%</td><td>75.5999984741211</td><td>1015</td><td>1064493</td><td>2904</td></tr><tr><td>Kasaragod</td><td>Kerala</td><td>8.58%</td><td>90.08999633789062</td><td>1080</td><td>1307375</td><td>1989</td></tr><tr><td>Kathua</td><td>Jammu and Kashmir</td><td>20.53%</td><td>73.08999633789062</td><td>890</td><td>616435</td><td>2502</td></tr><tr><td>Katihar</td><td>Bihar</td><td>28.35%</td><td>52.2400016784668</td><td>919</td><td>3071029</td><td>3057</td></tr><tr><td>Katni</td><td>Madhya Pradesh</td><td>21.41%</td><td>71.9800033569336</td><td>952</td><td>1292042</td><td>4950</td></tr><tr><td>Kaushambi</td><td>Uttar Pradesh</td><td>23.70%</td><td>61.279998779296875</td><td>908</td><td>1599596</td><td>1779</td></tr><tr><td>Kendrapara</td><td>Orissa</td><td>10.63%</td><td>85.1500015258789</td><td>1007</td><td>1440361</td><td>2644</td></tr><tr><td>Kendujhar</td><td>Orissa</td><td>15.35%</td><td>68.23999786376953</td><td>988</td><td>1801733</td><td>8303</td></tr><tr><td>Khagaria</td><td>Bihar</td><td>30.19%</td><td>57.91999816894531</td><td>886</td><td>1666886</td><td>1486</td></tr><tr><td>Khammam</td><td>Andhra Pradesh</td><td>8.47%</td><td>64.80999755859375</td><td>1011</td><td>2797370</td><td>16029</td></tr><tr><td>Kheda</td><td>Gujarat</td><td>13.62%</td><td>82.6500015258789</td><td>940</td><td>2299885</td><td>3953</td></tr><tr><td>Kheri</td><td>Uttar Pradesh</td><td>25.38%</td><td>60.560001373291016</td><td>894</td><td>4021243</td><td>7680</td></tr><tr><td>Khordha</td><td>Orissa</td><td>19.94%</td><td>86.87999725341797</td><td>929</td><td>2251673</td><td>2813</td></tr><tr><td>Khunti</td><td>Jharkhand</td><td>22.32%</td><td>63.86000061035156</td><td>997</td><td>531885</td><td>2535</td></tr><tr><td>Kinnaur</td><td>Himachal Pradesh</td><td>7.39%</td><td>80</td><td>819</td><td>84121</td><td>6401</td></tr><tr><td>Kiphire</td><td>Nagaland</td><td>38.58%</td><td>69.54000091552734</td><td>956</td><td>74004</td><td>1130</td></tr><tr><td>Kishanganj</td><td>Bihar</td><td>30.40%</td><td>55.459999084472656</td><td>950</td><td>1690400</td><td>1884</td></tr><tr><td>Kishtwar</td><td>Jammu and Kashmir</td><td>20.88%</td><td>56.20000076293945</td><td>920</td><td>230696</td><td>1644</td></tr><tr><td>Koch Bihar</td><td>West Bengal</td><td>13.71%</td><td>74.77999877929688</td><td>942</td><td>2819086</td><td>3387</td></tr><tr><td>Kodagu</td><td>Karnataka</td><td>1.09%</td><td>82.61000061035156</td><td>1019</td><td>554519</td><td>4102</td></tr><tr><td>Kodarma</td><td>Jharkhand</td><td>43.42%</td><td>66.83999633789062</td><td>950</td><td>716259</td><td>2540</td></tr><tr><td>Kohima</td><td>Nagaland</td><td>131.81%</td><td>85.2300033569336</td><td>928</td><td>267988</td><td>1463</td></tr><tr><td>Kokrajhar</td><td>Assam</td><td>5.21%</td><td>65.22000122070312</td><td>959</td><td>887142</td><td>3296</td></tr><tr><td>Kolar</td><td>Karnataka</td><td>10.77%</td><td>74.38999938964844</td><td>979</td><td>1536401</td><td>3979</td></tr><tr><td>Kolasib</td><td>Mizoram</td><td>27.28%</td><td>93.5</td><td>956</td><td>83955</td><td>1382</td></tr><tr><td>Kolhapur</td><td>Maharashtra</td><td>10.01%</td><td>81.51000213623047</td><td>957</td><td>3876001</td><td>7685</td></tr><tr><td>Kolkata</td><td>West Bengal</td><td>-1.67%</td><td>86.30999755859375</td><td>908</td><td>4496694</td><td>185</td></tr><tr><td>Kollam</td><td>Kerala</td><td>1.94%</td><td>94.08999633789062</td><td>1113</td><td>2635375</td><td>2483</td></tr><tr><td>Koppal</td><td>Karnataka</td><td>16.21%</td><td>68.08999633789062</td><td>986</td><td>1389920</td><td>5570</td></tr><tr><td>Koraput</td><td>Orissa</td><td>16.86%</td><td>49.209999084472656</td><td>1032</td><td>1379647</td><td>8807</td></tr><tr><td>Korba</td><td>Chhattisgarh</td><td>19.25%</td><td>72.37000274658203</td><td>969</td><td>1206640</td><td>6598</td></tr><tr><td>Korea</td><td>Chhattisgarh</td><td>12.38%</td><td>70.63999938964844</td><td>968</td><td>NULL</td><td>NULL</td></tr><tr><td>Kota</td><td>Rajasthan</td><td>24.39%</td><td>76.55999755859375</td><td>911</td><td>1951014</td><td>5217</td></tr><tr><td>Kottayam</td><td>Kerala</td><td>1.07%</td><td>97.20999908447266</td><td>1039</td><td>1974551</td><td>2206</td></tr><tr><td>Kozhikode</td><td>Kerala</td><td>7.20%</td><td>95.08000183105469</td><td>1098</td><td>3086293</td><td>2345</td></tr><tr><td>Krishna</td><td>Andhra Pradesh</td><td>7.87%</td><td>73.73999786376953</td><td>992</td><td>4517398</td><td>8727</td></tr><tr><td>Krishnagiri</td><td>Tamil Nadu</td><td>20.41%</td><td>71.45999908447266</td><td>958</td><td>1879809</td><td>5129</td></tr><tr><td>Kulgam</td><td>Jammu and Kashmir</td><td>7.73%</td><td>59.22999954223633</td><td>951</td><td>424483</td><td>410</td></tr><tr><td>Kullu</td><td>Himachal Pradesh</td><td>14.76%</td><td>79.4000015258789</td><td>942</td><td>437903</td><td>5503</td></tr><tr><td>Kupwara</td><td>Jammu and Kashmir</td><td>33.82%</td><td>64.51000213623047</td><td>835</td><td>870354</td><td>2379</td></tr><tr><td>Kurnool</td><td>Andhra Pradesh</td><td>14.85%</td><td>59.970001220703125</td><td>988</td><td>4053463</td><td>17658</td></tr><tr><td>Kurukshetra</td><td>Haryana</td><td>16.86%</td><td>76.30999755859375</td><td>888</td><td>964655</td><td>1530</td></tr><tr><td>Kurung Kumey</td><td>Arunachal Pradesh</td><td>116.56%</td><td>48.75</td><td>1032</td><td>92076</td><td>6040</td></tr><tr><td>Kushinagar</td><td>Uttar Pradesh</td><td>23.20%</td><td>65.25</td><td>961</td><td>3564544</td><td>2905</td></tr><tr><td>Lahul and Spiti</td><td>Himachal Pradesh</td><td>-5.00%</td><td>76.80999755859375</td><td>903</td><td>NULL</td><td>NULL</td></tr><tr><td>Lakhimpur</td><td>Assam</td><td>17.22%</td><td>77.19999694824219</td><td>968</td><td>1042137</td><td>2277</td></tr><tr><td>Lakhisarai</td><td>Bihar</td><td>24.77%</td><td>62.41999816894531</td><td>902</td><td>1000912</td><td>1228</td></tr><tr><td>Lakshadweep</td><td>Lakshadweep</td><td>6.30%</td><td>91.8499984741211</td><td>946</td><td>64473</td><td>30</td></tr><tr><td>Lalitpur</td><td>Uttar Pradesh</td><td>24.94%</td><td>63.52000045776367</td><td>906</td><td>1221592</td><td>5039</td></tr><tr><td>Latehar</td><td>Jharkhand</td><td>29.61%</td><td>59.5099983215332</td><td>967</td><td>726978</td><td>4291</td></tr><tr><td>Latur</td><td>Maharashtra</td><td>17.97%</td><td>77.26000213623047</td><td>928</td><td>2454196</td><td>7157</td></tr><tr><td>Lawngtlai</td><td>Mizoram</td><td>60.14%</td><td>65.87999725341797</td><td>945</td><td>117894</td><td>2557</td></tr><tr><td>Leh</td><td>Jammu and Kashmir</td><td>13.87%</td><td>77.19999694824219</td><td>690</td><td>133487</td><td>45110</td></tr><tr><td>Lohardaga</td><td>Jharkhand</td><td>26.68%</td><td>67.61000061035156</td><td>985</td><td>461790</td><td>1502</td></tr><tr><td>Lohit</td><td>Arunachal Pradesh</td><td>16.59%</td><td>68.18000030517578</td><td>912</td><td>145726</td><td>5212</td></tr><tr><td>Longleng</td><td>Nagaland</td><td>-21.57%</td><td>72.16999816894531</td><td>905</td><td>50484</td><td>562</td></tr><tr><td>Lower Dibang Valley</td><td>Arunachal Pradesh</td><td>7.20%</td><td>69.12999725341797</td><td>928</td><td>54080</td><td>3900</td></tr><tr><td>Lower Subansiri</td><td>Arunachal Pradesh</td><td>49.00%</td><td>74.3499984741211</td><td>984</td><td>83030</td><td>3508</td></tr><tr><td>Lucknow</td><td>Uttar Pradesh</td><td>25.82%</td><td>77.29000091552734</td><td>917</td><td>4589838</td><td>2528</td></tr><tr><td>Ludhiana</td><td>Punjab</td><td>15.36%</td><td>82.19999694824219</td><td>873</td><td>3498739</td><td>3578</td></tr><tr><td>Lunglei</td><td>Mizoram</td><td>17.64%</td><td>88.86000061035156</td><td>947</td><td>161428</td><td>4536</td></tr><tr><td>Madhepura</td><td>Bihar</td><td>31.12%</td><td>52.25</td><td>911</td><td>2001762</td><td>1788</td></tr><tr><td>Madhubani</td><td>Bihar</td><td>25.51%</td><td>58.619998931884766</td><td>926</td><td>4487379</td><td>3501</td></tr><tr><td>Madurai</td><td>Tamil Nadu</td><td>17.84%</td><td>83.44999694824219</td><td>990</td><td>3038252</td><td>3710</td></tr><tr><td>Mahamaya Nagar</td><td>Uttar Pradesh</td><td>17.12%</td><td>71.58999633789062</td><td>871</td><td>1564708</td><td>1840</td></tr><tr><td>Maharajganj</td><td>Uttar Pradesh</td><td>23.50%</td><td>62.7599983215332</td><td>943</td><td>2684703</td><td>2952</td></tr><tr><td>Mahasamund</td><td>Chhattisgarh</td><td>20.05%</td><td>71.0199966430664</td><td>1017</td><td>1032754</td><td>4790</td></tr><tr><td>Mahbubnagar</td><td>Andhra Pradesh</td><td>15.34%</td><td>55.040000915527344</td><td>977</td><td>4053028</td><td>18432</td></tr><tr><td>Mahe</td><td>Puducherry</td><td>13.54%</td><td>97.87000274658203</td><td>1184</td><td>41816</td><td>9</td></tr><tr><td>Mahendragarh</td><td>Haryana</td><td>13.48%</td><td>77.72000122070312</td><td>895</td><td>922088</td><td>1899</td></tr><tr><td>Mahesana</td><td>Gujarat</td><td>10.73%</td><td>83.61000061035156</td><td>926</td><td>2035064</td><td>4401</td></tr><tr><td>Mahoba</td><td>Uttar Pradesh</td><td>23.64%</td><td>65.2699966430664</td><td>878</td><td>875958</td><td>3144</td></tr><tr><td>Mainpuri</td><td>Uttar Pradesh</td><td>17.02%</td><td>75.98999786376953</td><td>881</td><td>1868529</td><td>2760</td></tr><tr><td>Malappuram</td><td>Kerala</td><td>13.45%</td><td>93.56999969482422</td><td>1098</td><td>4112920</td><td>3554</td></tr><tr><td>Maldah</td><td>West Bengal</td><td>21.22%</td><td>61.72999954223633</td><td>944</td><td>3988845</td><td>3733</td></tr><tr><td>Malkangiri</td><td>Orissa</td><td>21.62%</td><td>48.540000915527344</td><td>1020</td><td>613192</td><td>5791</td></tr><tr><td>Mamit</td><td>Mizoram</td><td>37.56%</td><td>84.93000030517578</td><td>927</td><td>86364</td><td>3025</td></tr><tr><td>Mandi</td><td>Himachal Pradesh</td><td>10.92%</td><td>81.52999877929688</td><td>1007</td><td>999777</td><td>3950</td></tr><tr><td>Mandla</td><td>Madhya Pradesh</td><td>17.97%</td><td>66.87000274658203</td><td>1008</td><td>1054905</td><td>5800</td></tr><tr><td>Mandsaur</td><td>Madhya Pradesh</td><td>13.24%</td><td>71.77999877929688</td><td>963</td><td>1340411</td><td>5535</td></tr><tr><td>Mandya</td><td>Karnataka</td><td>2.38%</td><td>70.4000015258789</td><td>995</td><td>1805769</td><td>4962</td></tr><tr><td>Mansa</td><td>Punjab</td><td>11.76%</td><td>61.83000183105469</td><td>883</td><td>769751</td><td>2198</td></tr><tr><td>Mathura</td><td>Uttar Pradesh</td><td>22.78%</td><td>70.36000061035156</td><td>863</td><td>2547184</td><td>3340</td></tr><tr><td>Mau</td><td>Uttar Pradesh</td><td>18.98%</td><td>73.08999633789062</td><td>979</td><td>2205968</td><td>1713</td></tr><tr><td>Mayurbhanj</td><td>Orissa</td><td>13.33%</td><td>63.16999816894531</td><td>1006</td><td>2519738</td><td>10418</td></tr><tr><td>Medak</td><td>Andhra Pradesh</td><td>13.60%</td><td>61.41999816894531</td><td>992</td><td>3033288</td><td>9699</td></tr><tr><td>Meerut</td><td>Uttar Pradesh</td><td>14.89%</td><td>72.83999633789062</td><td>886</td><td>3443689</td><td>2559</td></tr><tr><td>Mewat</td><td>Haryana</td><td>37.93%</td><td>54.08000183105469</td><td>907</td><td>1089263</td><td>1507</td></tr><tr><td>Mirzapur</td><td>Uttar Pradesh</td><td>18.00%</td><td>68.4800033569336</td><td>903</td><td>2496970</td><td>4405</td></tr><tr><td>Moga</td><td>Punjab</td><td>11.28%</td><td>70.68000030517578</td><td>893</td><td>995746</td><td>2242</td></tr><tr><td>Mohali</td><td>Punjab</td><td>33.15%</td><td>83.80000305175781</td><td>879</td><td>NULL</td><td>NULL</td></tr><tr><td>Mokokchung</td><td>Nagaland</td><td>60.94%</td><td>91.62000274658203</td><td>925</td><td>194622</td><td>1615</td></tr><tr><td>Mon</td><td>Nagaland</td><td>80.36%</td><td>56.9900016784668</td><td>899</td><td>250260</td><td>1786</td></tr><tr><td>Moradabad</td><td>Uttar Pradesh</td><td>25.22%</td><td>56.77000045776367</td><td>906</td><td>4772006</td><td>3718</td></tr><tr><td>Morena</td><td>Madhya Pradesh</td><td>23.44%</td><td>71.02999877929688</td><td>840</td><td>1965970</td><td>4989</td></tr><tr><td>Morigaon</td><td>Assam</td><td>23.34%</td><td>68.02999877929688</td><td>967</td><td>957423</td><td>1551</td></tr><tr><td>Muktsar</td><td>Punjab</td><td>16.00%</td><td>65.80999755859375</td><td>896</td><td>901896</td><td>2593</td></tr><tr><td>Mumbai City</td><td>Maharashtra</td><td>-7.57%</td><td>89.20999908447266</td><td>832</td><td>NULL</td><td>NULL</td></tr><tr><td>Mumbai Suburban</td><td>Maharashtra</td><td>8.29%</td><td>89.91000366210938</td><td>860</td><td>9356962</td><td>446</td></tr><tr><td>Munger</td><td>Bihar</td><td>20.21%</td><td>70.45999908447266</td><td>876</td><td>1367765</td><td>1419</td></tr><tr><td>Murshidabad</td><td>West Bengal</td><td>21.09%</td><td>66.58999633789062</td><td>958</td><td>7103807</td><td>5324</td></tr><tr><td>Muzaffarnagar</td><td>Uttar Pradesh</td><td>16.94%</td><td>69.12000274658203</td><td>889</td><td>4143512</td><td>4008</td></tr><tr><td>Muzaffarpur</td><td>Bihar</td><td>28.14%</td><td>63.43000030517578</td><td>900</td><td>4801062</td><td>3172</td></tr><tr><td>Mysore</td><td>Karnataka</td><td>13.63%</td><td>72.79000091552734</td><td>985</td><td>3001127</td><td>6307</td></tr><tr><td>Nabarangapur</td><td>Orissa</td><td>19.03%</td><td>46.43000030517578</td><td>1019</td><td>1220946</td><td>5291</td></tr><tr><td>Nadia</td><td>West Bengal</td><td>12.22%</td><td>74.97000122070312</td><td>947</td><td>5167600</td><td>3927</td></tr><tr><td>Nagaon</td><td>Assam</td><td>22.00%</td><td>72.37000274658203</td><td>962</td><td>2823768</td><td>3973</td></tr><tr><td>Nagapattinam</td><td>Tamil Nadu</td><td>8.57%</td><td>83.58999633789062</td><td>1025</td><td>1616450</td><td>2569</td></tr><tr><td>Nagaur</td><td>Rajasthan</td><td>19.20%</td><td>62.79999923706055</td><td>950</td><td>3307743</td><td>17718</td></tr><tr><td>Nagpur</td><td>Maharashtra</td><td>14.40%</td><td>88.38999938964844</td><td>951</td><td>4653570</td><td>9892</td></tr><tr><td>Nainital</td><td>Uttarakhand</td><td>25.13%</td><td>83.87999725341797</td><td>934</td><td>954605</td><td>4251</td></tr><tr><td>Nalanda</td><td>Bihar</td><td>21.39%</td><td>64.43000030517578</td><td>922</td><td>2877653</td><td>2355</td></tr><tr><td>Nalbari</td><td>Assam</td><td>11.99%</td><td>78.62999725341797</td><td>949</td><td>771639</td><td>1052</td></tr><tr><td>Nalgonda</td><td>Andhra Pradesh</td><td>7.41%</td><td>64.19999694824219</td><td>983</td><td>3488809</td><td>14240</td></tr><tr><td>Namakkal</td><td>Tamil Nadu</td><td>15.61%</td><td>74.62999725341797</td><td>986</td><td>1726601</td><td>3420</td></tr><tr><td>Nanded</td><td>Maharashtra</td><td>16.86%</td><td>75.44999694824219</td><td>943</td><td>3361292</td><td>10528</td></tr><tr><td>Nandurbar</td><td>Maharashtra</td><td>25.66%</td><td>64.37999725341797</td><td>978</td><td>1648295</td><td>5955</td></tr><tr><td>Narayanpur</td><td>Chhattisgarh</td><td>19.16%</td><td>48.619998931884766</td><td>994</td><td>139820</td><td>4653</td></tr><tr><td>Narmada</td><td>Gujarat</td><td>14.75%</td><td>72.30999755859375</td><td>961</td><td>590297</td><td>2817</td></tr><tr><td>Narsimhapur</td><td>Madhya Pradesh</td><td>14.01%</td><td>75.69000244140625</td><td>920</td><td>1091854</td><td>5133</td></tr><tr><td>Nashik</td><td>Maharashtra</td><td>22.30%</td><td>82.30999755859375</td><td>934</td><td>6107187</td><td>15530</td></tr><tr><td>Navsari</td><td>Gujarat</td><td>8.15%</td><td>83.87999725341797</td><td>961</td><td>1329672</td><td>2246</td></tr><tr><td>Nawada</td><td>Bihar</td><td>22.63%</td><td>59.7599983215332</td><td>939</td><td>2219146</td><td>2494</td></tr><tr><td>Nayagarh</td><td>Orissa</td><td>11.37%</td><td>80.41999816894531</td><td>915</td><td>962789</td><td>3890</td></tr><tr><td>Neemuch</td><td>Madhya Pradesh</td><td>13.77%</td><td>70.80000305175781</td><td>954</td><td>826067</td><td>4256</td></tr><tr><td>New Delhi</td><td>Delhi</td><td>-20.72%</td><td>88.33999633789062</td><td>822</td><td>142004</td><td>35</td></tr><tr><td>Nicobars</td><td>Andaman And Nicobar Islands</td><td>-12.42%</td><td>78.05999755859375</td><td>777</td><td>36842</td><td>1841</td></tr><tr><td>Nizamabad</td><td>Andhra Pradesh</td><td>8.77%</td><td>61.25</td><td>1040</td><td>2551335</td><td>7956</td></tr><tr><td>North And Middle Andaman</td><td>Andaman And Nicobar Islands</td><td>-0.02%</td><td>83.91000366210938</td><td>925</td><td>NULL</td><td>NULL</td></tr><tr><td>North Delhi</td><td>Delhi</td><td>13.62%</td><td>86.8499984741211</td><td>869</td><td>NULL</td><td>NULL</td></tr><tr><td>North East Delhi</td><td>Delhi</td><td>26.78%</td><td>83.08999633789062</td><td>886</td><td>NULL</td><td>NULL</td></tr><tr><td>North Goa</td><td>Goa</td><td>7.84%</td><td>89.56999969482422</td><td>963</td><td>818008</td><td>1736</td></tr><tr><td>North Sikkim</td><td>Sikkim</td><td>6.53%</td><td>78.01000213623047</td><td>767</td><td>NULL</td><td>NULL</td></tr><tr><td>North Tripura</td><td>Tripura</td><td>17.44%</td><td>87.5</td><td>967</td><td>693947</td><td>2036</td></tr><tr><td>North Twenty Four Parganas</td><td>West Bengal</td><td>12.04%</td><td>84.05999755859375</td><td>955</td><td>10009781</td><td>4094</td></tr><tr><td>North West Delhi</td><td>Delhi</td><td>27.81%</td><td>84.44999694824219</td><td>865</td><td>NULL</td><td>NULL</td></tr><tr><td>Nuapada</td><td>Orissa</td><td>15.02%</td><td>57.349998474121094</td><td>1021</td><td>610382</td><td>3852</td></tr><tr><td>Osmanabad</td><td>Maharashtra</td><td>11.50%</td><td>78.44000244140625</td><td>924</td><td>1657576</td><td>7569</td></tr><tr><td>Pakur</td><td>Jharkhand</td><td>28.33%</td><td>48.81999969482422</td><td>989</td><td>900422</td><td>1811</td></tr><tr><td>Palakkad</td><td>Kerala</td><td>7.35%</td><td>89.30999755859375</td><td>1067</td><td>2809934</td><td>4482</td></tr><tr><td>Palamu</td><td>Jharkhand</td><td>26.17%</td><td>63.630001068115234</td><td>928</td><td>1939869</td><td>4393</td></tr><tr><td>Pali</td><td>Rajasthan</td><td>11.94%</td><td>62.38999938964844</td><td>987</td><td>2037573</td><td>12387</td></tr><tr><td>Palwal</td><td>Haryana</td><td>25.76%</td><td>69.31999969482422</td><td>880</td><td>1042708</td><td>1359</td></tr><tr><td>Panchkula</td><td>Haryana</td><td>19.83%</td><td>81.87999725341797</td><td>873</td><td>561293</td><td>898</td></tr><tr><td>PanchMahal</td><td>Gujarat</td><td>18.05%</td><td>70.98999786376953</td><td>949</td><td>2390776</td><td>5231</td></tr><tr><td>Panipat</td><td>Haryana</td><td>24.60%</td><td>75.94000244140625</td><td>864</td><td>1205437</td><td>1268</td></tr><tr><td>Panna</td><td>Madhya Pradesh</td><td>18.67%</td><td>64.79000091552734</td><td>905</td><td>1016520</td><td>7135</td></tr><tr><td>Papumpare</td><td>Arunachal Pradesh</td><td>44.73%</td><td>79.94999694824219</td><td>980</td><td>NULL</td><td>NULL</td></tr><tr><td>Parbhani</td><td>Maharashtra</td><td>20.19%</td><td>73.33999633789062</td><td>947</td><td>1836086</td><td>6214</td></tr><tr><td>Paschim Medinipur</td><td>West Bengal</td><td>13.86%</td><td>78</td><td>966</td><td>5913457</td><td>9368</td></tr><tr><td>Pashchim Champaran</td><td>Bihar</td><td>29.29%</td><td>55.70000076293945</td><td>909</td><td>3935042</td><td>5228</td></tr><tr><td>Pashchimi Singhbhum</td><td>Jharkhand</td><td>21.75%</td><td>58.630001068115234</td><td>1005</td><td>1502338</td><td>7224</td></tr><tr><td>Patan</td><td>Gujarat</td><td>13.61%</td><td>72.30000305175781</td><td>935</td><td>1343734</td><td>5792</td></tr><tr><td>Pathanamthitta</td><td>Kerala</td><td>-2.97%</td><td>96.55000305175781</td><td>1132</td><td>1197412</td><td>2652</td></tr><tr><td>Patiala</td><td>Punjab</td><td>19.62%</td><td>75.27999877929688</td><td>891</td><td>1895686</td><td>3325</td></tr><tr><td>Patna</td><td>Bihar</td><td>23.73%</td><td>70.68000030517578</td><td>897</td><td>5838465</td><td>3202</td></tr><tr><td>Pauri Garhwal</td><td>Uttarakhand</td><td>-1.41%</td><td>82.0199966430664</td><td>1103</td><td>NULL</td><td>NULL</td></tr><tr><td>Perambalur</td><td>Tamil Nadu</td><td>14.50%</td><td>74.31999969482422</td><td>1003</td><td>565223</td><td>1756</td></tr><tr><td>Peren</td><td>Nagaland</td><td>104.15%</td><td>77.94999694824219</td><td>915</td><td>95219</td><td>1651</td></tr><tr><td>Phek</td><td>Nagaland</td><td>111.84%</td><td>78.05000305175781</td><td>951</td><td>163418</td><td>2026</td></tr><tr><td>Pilibhit</td><td>Uttar Pradesh</td><td>23.45%</td><td>61.470001220703125</td><td>895</td><td>2031007</td><td>3686</td></tr><tr><td>Pithoragarh</td><td>Uttarakhand</td><td>4.58%</td><td>82.25</td><td>1020</td><td>483439</td><td>7090</td></tr><tr><td>Porbandar</td><td>Gujarat</td><td>9.06%</td><td>75.77999877929688</td><td>950</td><td>585449</td><td>2316</td></tr><tr><td>Prakasam</td><td>Andhra Pradesh</td><td>11.05%</td><td>63.08000183105469</td><td>981</td><td>3397448</td><td>17626</td></tr><tr><td>Pratapgarh</td><td>Rajasthan</td><td>22.78%</td><td>55.970001220703125</td><td>983</td><td>867848</td><td>4449</td></tr><tr><td>Pratapgarh</td><td>Rajasthan</td><td>22.78%</td><td>55.970001220703125</td><td>983</td><td>3209141</td><td>3717</td></tr><tr><td>Pratapgarh</td><td>Uttar Pradesh</td><td>17.50%</td><td>70.08999633789062</td><td>998</td><td>867848</td><td>4449</td></tr><tr><td>Pratapgarh</td><td>Uttar Pradesh</td><td>17.50%</td><td>70.08999633789062</td><td>998</td><td>3209141</td><td>3717</td></tr><tr><td>Puducherry</td><td>Puducherry</td><td>29.23%</td><td>85.44000244140625</td><td>1029</td><td>950289</td><td>294</td></tr><tr><td>Pudukkottai</td><td>Tamil Nadu</td><td>10.88%</td><td>77.19000244140625</td><td>1015</td><td>1618345</td><td>4644</td></tr><tr><td>Pulwama</td><td>Jammu and Kashmir</td><td>27.00%</td><td>63.47999954223633</td><td>912</td><td>560440</td><td>1086</td></tr><tr><td>Punch</td><td>Jammu and Kashmir</td><td>27.97%</td><td>66.73999786376953</td><td>893</td><td>476835</td><td>1674</td></tr><tr><td>Pune</td><td>Maharashtra</td><td>30.37%</td><td>86.1500015258789</td><td>915</td><td>9429408</td><td>15643</td></tr><tr><td>Purba Medinipur</td><td>West Bengal</td><td>15.36%</td><td>87.0199966430664</td><td>938</td><td>5095875</td><td>4713</td></tr><tr><td>Purbi Champaran</td><td>Bihar</td><td>29.43%</td><td>55.790000915527344</td><td>902</td><td>NULL</td><td>NULL</td></tr><tr><td>Purbi Singhbhum</td><td>Jharkhand</td><td>15.68%</td><td>75.48999786376953</td><td>949</td><td>2293919</td><td>3562</td></tr><tr><td>Puri</td><td>Orissa</td><td>13.05%</td><td>84.66999816894531</td><td>963</td><td>1698730</td><td>3479</td></tr><tr><td>Purnia</td><td>Bihar</td><td>28.33%</td><td>51.08000183105469</td><td>921</td><td>3264619</td><td>3229</td></tr><tr><td>Puruliya</td><td>West Bengal</td><td>15.52%</td><td>64.4800033569336</td><td>957</td><td>2930115</td><td>6259</td></tr><tr><td>Rae Bareli</td><td>Uttar Pradesh</td><td>18.56%</td><td>67.25</td><td>943</td><td>3405559</td><td>4609</td></tr><tr><td>Raichur</td><td>Karnataka</td><td>15.51%</td><td>59.560001373291016</td><td>1000</td><td>1928812</td><td>8442</td></tr><tr><td>Raigarh</td><td>Chhattisgarh</td><td>18.05%</td><td>73.26000213623047</td><td>991</td><td>1493984</td><td>7086</td></tr><tr><td>Raigarh</td><td>Chhattisgarh</td><td>18.05%</td><td>73.26000213623047</td><td>991</td><td>2634200</td><td>7152</td></tr><tr><td>Raigarh</td><td>Maharashtra</td><td>19.31%</td><td>83.13999938964844</td><td>959</td><td>1493984</td><td>7086</td></tr><tr><td>Raigarh</td><td>Maharashtra</td><td>19.31%</td><td>83.13999938964844</td><td>959</td><td>2634200</td><td>7152</td></tr><tr><td>Raipur</td><td>Chhattisgarh</td><td>34.70%</td><td>75.55999755859375</td><td>984</td><td>4063872</td><td>12383</td></tr><tr><td>Raisen</td><td>Madhya Pradesh</td><td>18.35%</td><td>72.9800033569336</td><td>901</td><td>1331597</td><td>8466</td></tr><tr><td>Rajgarh</td><td>Madhya Pradesh</td><td>23.26%</td><td>61.209999084472656</td><td>956</td><td>1545814</td><td>6153</td></tr><tr><td>Rajkot</td><td>Gujarat</td><td>20.02%</td><td>80.95999908447266</td><td>927</td><td>3804558</td><td>11198</td></tr><tr><td>Rajnandgaon</td><td>Chhattisgarh</td><td>19.79%</td><td>75.95999908447266</td><td>1015</td><td>1537133</td><td>8070</td></tr><tr><td>Rajouri</td><td>Jammu and Kashmir</td><td>32.93%</td><td>68.16999816894531</td><td>860</td><td>642415</td><td>2630</td></tr><tr><td>Rajsamand</td><td>Rajasthan</td><td>17.18%</td><td>63.13999938964844</td><td>990</td><td>1156597</td><td>4655</td></tr><tr><td>Ramabai Nagar</td><td>Uttar Pradesh</td><td>14.89%</td><td>75.77999877929688</td><td>865</td><td>NULL</td><td>NULL</td></tr><tr><td>Ramanagara</td><td>Karnataka</td><td>5.05%</td><td>69.22000122070312</td><td>976</td><td>1082636</td><td>3516</td></tr><tr><td>Ramanathapuram</td><td>Tamil Nadu</td><td>13.96%</td><td>80.72000122070312</td><td>983</td><td>1353445</td><td>4104</td></tr><tr><td>Ramban</td><td>Jammu and Kashmir</td><td>31.99%</td><td>54.27000045776367</td><td>902</td><td>283713</td><td>1329</td></tr><tr><td>Ramgarh</td><td>Jharkhand</td><td>13.10%</td><td>73.16999816894531</td><td>921</td><td>949443</td><td>1341</td></tr><tr><td>Rampur</td><td>Uttar Pradesh</td><td>21.42%</td><td>53.34000015258789</td><td>909</td><td>2335819</td><td>2367</td></tr><tr><td>Ranchi</td><td>Jharkhand</td><td>23.98%</td><td>76.05999755859375</td><td>949</td><td>2914253</td><td>5097</td></tr><tr><td>Rangareddy</td><td>Andhra Pradesh</td><td>48.16%</td><td>75.87000274658203</td><td>961</td><td>5296741</td><td>7493</td></tr><tr><td>Ratlam</td><td>Madhya Pradesh</td><td>19.72%</td><td>66.77999877929688</td><td>971</td><td>1455069</td><td>4861</td></tr><tr><td>Ratnagiri</td><td>Maharashtra</td><td>-4.82%</td><td>82.18000030517578</td><td>1122</td><td>1615069</td><td>8208</td></tr><tr><td>Rayagada</td><td>Orissa</td><td>16.46%</td><td>49.7599983215332</td><td>1051</td><td>967911</td><td>7073</td></tr><tr><td>Reasi</td><td>Jammu and Kashmir</td><td>27.04%</td><td>58.150001525878906</td><td>890</td><td>314667</td><td>1719</td></tr><tr><td>Rewa</td><td>Madhya Pradesh</td><td>19.86%</td><td>71.62000274658203</td><td>931</td><td>2365106</td><td>6314</td></tr><tr><td>Rewari</td><td>Haryana</td><td>17.64%</td><td>80.98999786376953</td><td>898</td><td>900332</td><td>1594</td></tr><tr><td>Ri Bhoi</td><td>Meghalaya</td><td>34.26%</td><td>75.66999816894531</td><td>953</td><td>NULL</td><td>NULL</td></tr><tr><td>Rohtak</td><td>Haryana</td><td>12.88%</td><td>80.22000122070312</td><td>867</td><td>1061204</td><td>1745</td></tr><tr><td>Rohtas</td><td>Bihar</td><td>20.78%</td><td>73.37000274658203</td><td>918</td><td>2959918</td><td>3881</td></tr><tr><td>Rudraprayag</td><td>Uttarakhand</td><td>6.53%</td><td>81.30000305175781</td><td>1114</td><td>242285</td><td>1984</td></tr><tr><td>Rupnagar</td><td>Punjab</td><td>8.87%</td><td>82.19000244140625</td><td>915</td><td>684627</td><td>1356</td></tr><tr><td>Sabarkantha</td><td>Gujarat</td><td>16.62%</td><td>75.79000091552734</td><td>952</td><td>2428589</td><td>7394</td></tr><tr><td>Sagar</td><td>Madhya Pradesh</td><td>17.63%</td><td>76.45999908447266</td><td>893</td><td>2378458</td><td>10252</td></tr><tr><td>Saharanpur</td><td>Uttar Pradesh</td><td>19.66%</td><td>70.48999786376953</td><td>890</td><td>3466382</td><td>3689</td></tr><tr><td>Saharsa</td><td>Bihar</td><td>26.02%</td><td>53.20000076293945</td><td>906</td><td>1900661</td><td>1687</td></tr><tr><td>Sahibganj</td><td>Jharkhand</td><td>24.01%</td><td>52.040000915527344</td><td>952</td><td>1150567</td><td>2063</td></tr><tr><td>Saiha</td><td>Mizoram</td><td>-7.34%</td><td>90.01000213623047</td><td>979</td><td>56574</td><td>1399</td></tr><tr><td>Salem</td><td>Tamil Nadu</td><td>15.44%</td><td>72.86000061035156</td><td>954</td><td>3482056</td><td>5237</td></tr><tr><td>Samastipur</td><td>Bihar</td><td>25.53%</td><td>61.86000061035156</td><td>911</td><td>4261566</td><td>2904</td></tr><tr><td>Samba</td><td>Jammu and Kashmir</td><td>17.01%</td><td>81.41000366210938</td><td>886</td><td>318898</td><td>904</td></tr><tr><td>Sambalpur</td><td>Orissa</td><td>11.27%</td><td>76.22000122070312</td><td>976</td><td>1041099</td><td>6624</td></tr><tr><td>Sangli</td><td>Maharashtra</td><td>9.24%</td><td>81.4800033569336</td><td>966</td><td>2822143</td><td>8572</td></tr><tr><td>Sangrur</td><td>Punjab</td><td>12.35%</td><td>67.98999786376953</td><td>885</td><td>1655169</td><td>3625</td></tr><tr><td>Sant Kabir Nagar</td><td>Uttar Pradesh</td><td>20.77%</td><td>66.72000122070312</td><td>972</td><td>1715183</td><td>1646</td></tr><tr><td>Sant Ravidas Nagar</td><td>Uttar Pradesh</td><td>16.58%</td><td>68.97000122070312</td><td>955</td><td>1578213</td><td>1015</td></tr><tr><td>Saraikela Kharsawan</td><td>Jharkhand</td><td>25.47%</td><td>67.69999694824219</td><td>956</td><td>NULL</td><td>NULL</td></tr><tr><td>Saran</td><td>Bihar</td><td>21.64%</td><td>65.95999908447266</td><td>954</td><td>3951862</td><td>2641</td></tr><tr><td>Satara</td><td>Maharashtra</td><td>6.93%</td><td>82.87000274658203</td><td>988</td><td>3003741</td><td>10480</td></tr><tr><td>Satna</td><td>Madhya Pradesh</td><td>19.19%</td><td>72.26000213623047</td><td>926</td><td>2228935</td><td>7502</td></tr><tr><td>Sawai Madhopur</td><td>Rajasthan</td><td>19.56%</td><td>65.38999938964844</td><td>897</td><td>1335551</td><td>4498</td></tr><tr><td>Sehore</td><td>Madhya Pradesh</td><td>21.54%</td><td>70.05999755859375</td><td>918</td><td>1311332</td><td>6578</td></tr><tr><td>Senapati</td><td>Manipur</td><td>68.94%</td><td>63.599998474121094</td><td>937</td><td>479148</td><td>3271</td></tr><tr><td>Seoni</td><td>Madhya Pradesh</td><td>18.22%</td><td>72.12000274658203</td><td>982</td><td>1379131</td><td>8758</td></tr><tr><td>Serchhip</td><td>Mizoram</td><td>20.56%</td><td>97.91000366210938</td><td>977</td><td>64937</td><td>1421</td></tr><tr><td>Shahdol</td><td>Madhya Pradesh</td><td>17.39%</td><td>66.66999816894531</td><td>974</td><td>1066063</td><td>6205</td></tr><tr><td>Shahid Bhagat Singh Nagar</td><td>Punjab</td><td>4.23%</td><td>79.77999877929688</td><td>954</td><td>612310</td><td>1282</td></tr><tr><td>Shahjahanpur</td><td>Uttar Pradesh</td><td>18.00%</td><td>59.540000915527344</td><td>872</td><td>3006538</td><td>4388</td></tr><tr><td>Shajapur</td><td>Madhya Pradesh</td><td>17.20%</td><td>69.08999633789062</td><td>938</td><td>1512681</td><td>6195</td></tr><tr><td>Sheikhpura</td><td>Bihar</td><td>21.09%</td><td>63.86000061035156</td><td>930</td><td>636342</td><td>689</td></tr><tr><td>Sheohar</td><td>Bihar</td><td>27.19%</td><td>53.779998779296875</td><td>893</td><td>656246</td><td>349</td></tr><tr><td>Sheopur</td><td>Madhya Pradesh</td><td>22.94%</td><td>57.43000030517578</td><td>901</td><td>687861</td><td>6606</td></tr><tr><td>Shimla</td><td>Himachal Pradesh</td><td>12.67%</td><td>83.63999938964844</td><td>915</td><td>814010</td><td>5131</td></tr><tr><td>Shimoga</td><td>Karnataka</td><td>6.71%</td><td>80.44999694824219</td><td>998</td><td>1752753</td><td>8478</td></tr><tr><td>Shivpuri</td><td>Madhya Pradesh</td><td>22.76%</td><td>62.54999923706055</td><td>877</td><td>1726050</td><td>10066</td></tr><tr><td>Shrawasti</td><td>Uttar Pradesh</td><td>-5.02%</td><td>46.7400016784668</td><td>881</td><td>1117361</td><td>1640</td></tr><tr><td>Shupiyan</td><td>Jammu and Kashmir</td><td>25.97%</td><td>60.7599983215332</td><td>951</td><td>266215</td><td>312</td></tr><tr><td>Siddharth Nagar</td><td>Uttar Pradesh</td><td>25.45%</td><td>59.25</td><td>976</td><td>NULL</td><td>NULL</td></tr><tr><td>Sidhi</td><td>Madhya Pradesh</td><td>23.72%</td><td>64.43000030517578</td><td>957</td><td>1127033</td><td>4851</td></tr><tr><td>Sikar</td><td>Rajasthan</td><td>17.03%</td><td>71.91000366210938</td><td>947</td><td>2677333</td><td>7732</td></tr><tr><td>Simdega</td><td>Jharkhand</td><td>16.58%</td><td>67.98999786376953</td><td>997</td><td>599578</td><td>3774</td></tr><tr><td>Sindhudurg</td><td>Maharashtra</td><td>-2.21%</td><td>85.55999755859375</td><td>1036</td><td>849651</td><td>5207</td></tr><tr><td>Singrauli</td><td>Madhya Pradesh</td><td>28.05%</td><td>60.40999984741211</td><td>920</td><td>1178273</td><td>5675</td></tr><tr><td>Sirmaur</td><td>Himachal Pradesh</td><td>15.54%</td><td>78.80000305175781</td><td>918</td><td>529855</td><td>2825</td></tr><tr><td>Sirohi</td><td>Rajasthan</td><td>21.76%</td><td>55.25</td><td>940</td><td>1036346</td><td>5136</td></tr><tr><td>Sirsa</td><td>Haryana</td><td>15.99%</td><td>68.81999969482422</td><td>897</td><td>1295189</td><td>4277</td></tr><tr><td>Sitamarhi</td><td>Bihar</td><td>27.62%</td><td>52.04999923706055</td><td>899</td><td>3423574</td><td>2294</td></tr><tr><td>Sitapur</td><td>Uttar Pradesh</td><td>23.88%</td><td>61.119998931884766</td><td>888</td><td>4483992</td><td>5743</td></tr><tr><td>Sivaganga</td><td>Tamil Nadu</td><td>15.90%</td><td>79.8499984741211</td><td>1003</td><td>1339101</td><td>4233</td></tr><tr><td>Sivasagar</td><td>Assam</td><td>9.44%</td><td>80.41000366210938</td><td>954</td><td>1151050</td><td>2668</td></tr><tr><td>Siwan</td><td>Bihar</td><td>22.70%</td><td>69.44999694824219</td><td>988</td><td>3330464</td><td>2219</td></tr><tr><td>Solan</td><td>Himachal Pradesh</td><td>15.93%</td><td>83.68000030517578</td><td>880</td><td>580320</td><td>1936</td></tr><tr><td>Solapur</td><td>Maharashtra</td><td>12.16%</td><td>77.0199966430664</td><td>938</td><td>4317756</td><td>14895</td></tr><tr><td>Sonbhadra</td><td>Uttar Pradesh</td><td>27.27%</td><td>64.02999877929688</td><td>918</td><td>1862559</td><td>6905</td></tr><tr><td>Sonipat</td><td>Haryana</td><td>13.35%</td><td>79.12000274658203</td><td>856</td><td>1450001</td><td>2122</td></tr><tr><td>Sonitpur</td><td>Assam</td><td>15.55%</td><td>67.33999633789062</td><td>956</td><td>1924110</td><td>5204</td></tr><tr><td>South Andaman</td><td>Andaman And Nicobar Islands</td><td>14.23%</td><td>89.12999725341797</td><td>871</td><td>238142</td><td>2672</td></tr><tr><td>South Delhi</td><td>Delhi</td><td>20.51%</td><td>86.56999969482422</td><td>862</td><td>NULL</td><td>NULL</td></tr><tr><td>South Garo Hills</td><td>Meghalaya</td><td>40.95%</td><td>71.72000122070312</td><td>945</td><td>142334</td><td>1887</td></tr><tr><td>South Goa</td><td>Goa</td><td>8.73%</td><td>87.58999633789062</td><td>986</td><td>640537</td><td>1966</td></tr><tr><td>South Sikkim</td><td>Sikkim</td><td>11.65%</td><td>81.41999816894531</td><td>915</td><td>NULL</td><td>NULL</td></tr><tr><td>South Tripura</td><td>Tripura</td><td>14.15%</td><td>84.66000366210938</td><td>957</td><td>876001</td><td>3057</td></tr><tr><td>South Twenty Four Parganas</td><td>West Bengal</td><td>18.17%</td><td>77.51000213623047</td><td>956</td><td>8161961</td><td>9960</td></tr><tr><td>South West Delhi</td><td>Delhi</td><td>30.65%</td><td>88.27999877929688</td><td>840</td><td>NULL</td><td>NULL</td></tr><tr><td>Sri Potti Sriramulu Nellore</td><td>Andhra Pradesh</td><td>11.05%</td><td>68.9000015258789</td><td>985</td><td>2963557</td><td>13076</td></tr><tr><td>Srikakulam</td><td>Andhra Pradesh</td><td>6.52%</td><td>61.7400016784668</td><td>1015</td><td>2703114</td><td>5837</td></tr><tr><td>Srinagar</td><td>Jammu and Kashmir</td><td>20.35%</td><td>69.41000366210938</td><td>900</td><td>1236829</td><td>1979</td></tr><tr><td>Subarnapur</td><td>Orissa</td><td>12.61%</td><td>74.41999816894531</td><td>960</td><td>610183</td><td>2337</td></tr><tr><td>Sultanpur</td><td>Uttar Pradesh</td><td>18.11%</td><td>69.2699966430664</td><td>983</td><td>3797117</td><td>4436</td></tr><tr><td>Sundargarh</td><td>Orissa</td><td>14.35%</td><td>73.33999633789062</td><td>973</td><td>2093437</td><td>9712</td></tr><tr><td>Supaul</td><td>Bihar</td><td>28.66%</td><td>57.66999816894531</td><td>929</td><td>2229076</td><td>2425</td></tr><tr><td>Surat</td><td>Gujarat</td><td>42.24%</td><td>85.52999877929688</td><td>787</td><td>6081322</td><td>4549</td></tr><tr><td>Surendranagar</td><td>Gujarat</td><td>15.91%</td><td>72.12999725341797</td><td>930</td><td>1756268</td><td>10423</td></tr><tr><td>Surguja</td><td>Chhattisgarh</td><td>19.66%</td><td>60.0099983215332</td><td>978</td><td>2359886</td><td>15732</td></tr><tr><td>Tamenglong</td><td>Manipur</td><td>26.15%</td><td>70.05000305175781</td><td>943</td><td>140651</td><td>4391</td></tr><tr><td>Tapi</td><td>Gujarat</td><td>12.14%</td><td>68.26000213623047</td><td>1007</td><td>807022</td><td>3139</td></tr><tr><td>Tarn Taran</td><td>Punjab</td><td>19.23%</td><td>67.80999755859375</td><td>900</td><td>1119627</td><td>2414</td></tr><tr><td>Tawang</td><td>Arunachal Pradesh</td><td>28.40%</td><td>59</td><td>714</td><td>49977</td><td>2172</td></tr><tr><td>Tehri Garhwal</td><td>Uttarakhand</td><td>2.35%</td><td>76.36000061035156</td><td>1077</td><td>618931</td><td>3642</td></tr><tr><td>Thane</td><td>Maharashtra</td><td>36.01%</td><td>84.52999877929688</td><td>886</td><td>11060148</td><td>9558</td></tr><tr><td>Thanjavur</td><td>Tamil Nadu</td><td>8.56%</td><td>82.63999938964844</td><td>1035</td><td>2405890</td><td>3411</td></tr><tr><td>The Dangs</td><td>Gujarat</td><td>22.26%</td><td>75.16000366210938</td><td>1006</td><td>228291</td><td>1766</td></tr><tr><td>The Nilgiris</td><td>Tamil Nadu</td><td>-3.51%</td><td>85.19999694824219</td><td>1042</td><td>735394</td><td>2565</td></tr><tr><td>Theni</td><td>Tamil Nadu</td><td>13.89%</td><td>77.26000213623047</td><td>991</td><td>1245899</td><td>2868</td></tr><tr><td>Thiruvallur</td><td>Tamil Nadu</td><td>35.33%</td><td>84.02999877929688</td><td>987</td><td>3728104</td><td>3394</td></tr><tr><td>Thiruvananthapuram</td><td>Kerala</td><td>2.07%</td><td>93.0199966430664</td><td>1087</td><td>3301427</td><td>2189</td></tr><tr><td>Thiruvarur</td><td>Tamil Nadu</td><td>8.11%</td><td>82.86000061035156</td><td>1017</td><td>1264277</td><td>2274</td></tr><tr><td>Thoothukkudi</td><td>Tamil Nadu</td><td>11.32%</td><td>86.16000366210938</td><td>1023</td><td>1750176</td><td>4745</td></tr><tr><td>Thoubal</td><td>Manipur</td><td>15.94%</td><td>74.47000122070312</td><td>1002</td><td>422168</td><td>514</td></tr><tr><td>Thrissur</td><td>Kerala</td><td>4.94%</td><td>95.08000183105469</td><td>1108</td><td>3121200</td><td>3027</td></tr><tr><td>Tikamgarh</td><td>Madhya Pradesh</td><td>20.13%</td><td>61.43000030517578</td><td>901</td><td>1445166</td><td>5048</td></tr><tr><td>Tinsukia</td><td>Assam</td><td>15.47%</td><td>69.66000366210938</td><td>952</td><td>1327929</td><td>3790</td></tr><tr><td>Tirap</td><td>Arunachal Pradesh</td><td>11.61%</td><td>52.189998626708984</td><td>944</td><td>111975</td><td>2362</td></tr><tr><td>Tiruchirappalli</td><td>Tamil Nadu</td><td>12.57%</td><td>83.2300033569336</td><td>1013</td><td>2722290</td><td>4509</td></tr><tr><td>Tirunelveli</td><td>Tamil Nadu</td><td>12.97%</td><td>82.5</td><td>1023</td><td>3077233</td><td>6693</td></tr><tr><td>Tiruppur</td><td>Tamil Nadu</td><td>29.11%</td><td>78.68000030517578</td><td>989</td><td>2479052</td><td>5187</td></tr><tr><td>Tiruvannamalai</td><td>Tamil Nadu</td><td>12.75%</td><td>74.20999908447266</td><td>994</td><td>2464875</td><td>6188</td></tr><tr><td>Tonk</td><td>Rajasthan</td><td>17.30%</td><td>61.58000183105469</td><td>952</td><td>1421326</td><td>7194</td></tr><tr><td>Tuensang</td><td>Nagaland</td><td>94.83%</td><td>73.08000183105469</td><td>929</td><td>196596</td><td>2536</td></tr><tr><td>Tumkur</td><td>Karnataka</td><td>3.65%</td><td>75.13999938964844</td><td>984</td><td>2678980</td><td>10597</td></tr><tr><td>Udaipur</td><td>Rajasthan</td><td>23.69%</td><td>61.81999969482422</td><td>958</td><td>3068420</td><td>11724</td></tr><tr><td>Udalguri</td><td>Assam</td><td>9.61%</td><td>65.41000366210938</td><td>973</td><td>831668</td><td>2012</td></tr><tr><td>Udham Singh Nagar</td><td>Uttarakhand</td><td>33.45%</td><td>73.0999984741211</td><td>920</td><td>1648902</td><td>2542</td></tr><tr><td>Udhampur</td><td>Jammu and Kashmir</td><td>20.78%</td><td>68.48999786376953</td><td>870</td><td>554985</td><td>2637</td></tr><tr><td>Udupi</td><td>Karnataka</td><td>5.85%</td><td>86.23999786376953</td><td>1094</td><td>1177361</td><td>3582</td></tr><tr><td>Ujjain</td><td>Madhya Pradesh</td><td>16.12%</td><td>72.33999633789062</td><td>955</td><td>1986864</td><td>6091</td></tr><tr><td>Ukhrul</td><td>Manipur</td><td>30.70%</td><td>81.3499984741211</td><td>943</td><td>183998</td><td>4544</td></tr><tr><td>Umaria</td><td>Madhya Pradesh</td><td>24.96%</td><td>65.88999938964844</td><td>950</td><td>644758</td><td>4076</td></tr><tr><td>Una</td><td>Himachal Pradesh</td><td>16.26%</td><td>86.52999877929688</td><td>976</td><td>521173</td><td>1540</td></tr><tr><td>Unnao</td><td>Uttar Pradesh</td><td>15.11%</td><td>66.37000274658203</td><td>907</td><td>3108367</td><td>4558</td></tr><tr><td>Upper Siang</td><td>Arunachal Pradesh</td><td>5.87%</td><td>59.9900016784668</td><td>889</td><td>35320</td><td>6590</td></tr><tr><td>Upper Subansiri</td><td>Arunachal Pradesh</td><td>50.78%</td><td>63.79999923706055</td><td>998</td><td>83448</td><td>7032</td></tr><tr><td>Uttar Dinajpur</td><td>West Bengal</td><td>23.15%</td><td>59.06999969482422</td><td>939</td><td>3007134</td><td>3140</td></tr><tr><td>Uttara Kannada</td><td>Karnataka</td><td>6.17%</td><td>84.05999755859375</td><td>979</td><td>1437169</td><td>10277</td></tr><tr><td>Uttarkashi</td><td>Uttarakhand</td><td>11.89%</td><td>75.80999755859375</td><td>958</td><td>330086</td><td>8016</td></tr><tr><td>Vadodara</td><td>Gujarat</td><td>14.38%</td><td>78.91999816894531</td><td>934</td><td>4165626</td><td>7546</td></tr><tr><td>Vaishali</td><td>Bihar</td><td>28.57%</td><td>66.5999984741211</td><td>895</td><td>3495021</td><td>2036</td></tr><tr><td>Valsad</td><td>Gujarat</td><td>20.92%</td><td>78.55000305175781</td><td>922</td><td>1705678</td><td>3008</td></tr><tr><td>Varanasi</td><td>Uttar Pradesh</td><td>17.15%</td><td>75.5999984741211</td><td>913</td><td>3676841</td><td>1535</td></tr><tr><td>Vellore</td><td>Tamil Nadu</td><td>13.20%</td><td>79.16999816894531</td><td>1007</td><td>3936331</td><td>6075</td></tr><tr><td>Vidisha</td><td>Madhya Pradesh</td><td>20.09%</td><td>70.52999877929688</td><td>896</td><td>1458875</td><td>7371</td></tr><tr><td>Viluppuram</td><td>Tamil Nadu</td><td>16.84%</td><td>71.87999725341797</td><td>987</td><td>3458873</td><td>7194</td></tr><tr><td>Virudhunagar</td><td>Tamil Nadu</td><td>10.91%</td><td>80.1500015258789</td><td>1007</td><td>1942288</td><td>4241</td></tr><tr><td>Visakhapatnam</td><td>Andhra Pradesh</td><td>11.96%</td><td>66.91000366210938</td><td>1006</td><td>4290589</td><td>11161</td></tr><tr><td>Vizianagaram</td><td>Andhra Pradesh</td><td>4.23%</td><td>58.88999938964844</td><td>1019</td><td>2344474</td><td>6539</td></tr><tr><td>Warangal</td><td>Andhra Pradesh</td><td>8.21%</td><td>65.11000061035156</td><td>997</td><td>3512576</td><td>12846</td></tr><tr><td>Wardha</td><td>Maharashtra</td><td>5.18%</td><td>86.98999786376953</td><td>946</td><td>1300774</td><td>6309</td></tr><tr><td>Washim</td><td>Maharashtra</td><td>17.34%</td><td>83.25</td><td>930</td><td>1197160</td><td>4898</td></tr><tr><td>Wayanad</td><td>Kerala</td><td>4.71%</td><td>89.02999877929688</td><td>1035</td><td>817420</td><td>2130</td></tr><tr><td>West Delhi</td><td>Delhi</td><td>19.46%</td><td>86.9800033569336</td><td>875</td><td>NULL</td><td>NULL</td></tr><tr><td>West Garo Hills</td><td>Meghalaya</td><td>24.09%</td><td>67.58000183105469</td><td>984</td><td>643291</td><td>3677</td></tr><tr><td>West Godavari</td><td>Andhra Pradesh</td><td>3.51%</td><td>74.62999725341797</td><td>1004</td><td>3936966</td><td>7742</td></tr><tr><td>West Kameng</td><td>Arunachal Pradesh</td><td>12.53%</td><td>67.06999969482422</td><td>819</td><td>83947</td><td>7422</td></tr><tr><td>West Khasi Hills</td><td>Meghalaya</td><td>29.53%</td><td>77.87000274658203</td><td>980</td><td>383461</td><td>5247</td></tr><tr><td>West Nimar</td><td>Madhya Pradesh</td><td>22.85%</td><td>62.70000076293945</td><td>965</td><td>NULL</td><td>NULL</td></tr><tr><td>West Siang</td><td>Arunachal Pradesh</td><td>8.04%</td><td>66.45999908447266</td><td>930</td><td>112274</td><td>8325</td></tr><tr><td>West Sikkim</td><td>Sikkim</td><td>10.69%</td><td>77.38999938964844</td><td>942</td><td>NULL</td><td>NULL</td></tr><tr><td>West Tripura</td><td>Tripura</td><td>12.57%</td><td>88.69000244140625</td><td>962</td><td>1725739</td><td>2993</td></tr><tr><td>Wokha</td><td>Nagaland</td><td>98.81%</td><td>87.69000244140625</td><td>968</td><td>166343</td><td>1628</td></tr><tr><td>Yadgir</td><td>Karnataka</td><td>22.81%</td><td>51.83000183105469</td><td>989</td><td>1174271</td><td>5270</td></tr><tr><td>Yamunanagar</td><td>Haryana</td><td>16.57%</td><td>77.98999786376953</td><td>877</td><td>1214205</td><td>1768</td></tr><tr><td>Yanam</td><td>Puducherry</td><td>77.19%</td><td>79.47000122070312</td><td>1038</td><td>55626</td><td>30</td></tr><tr><td>Yavatmal</td><td>Maharashtra</td><td>12.78%</td><td>82.81999969482422</td><td>952</td><td>2772348</td><td>13582</td></tr><tr><td>YSR</td><td>Andhra Pradesh</td><td>10.79%</td><td>67.30000305175781</td><td>985</td><td>2882469</td><td>15359</td></tr><tr><td>Zunheboto</td><td>Nagaland</td><td>78.05%</td><td>85.26000213623047</td><td>976</td><td>140757</td><td>1255</td></tr></table>"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 4
        },
        {
            "cell_type": "code",
            "source": [
                "SELECT"
            ],
            "metadata": {
                "azdata_cell_guid": "b69746da-a539-4c72-a39f-ef5d8fa01e12",
                "language": "sql",
                "tags": []
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}