package main

import (
	"database/sql"
	"fmt"

	"net"

	"strings"

	_ "github.com/go-sql-driver/mysql"
)

func handle(con net.Conn) {
	for {
		//data, err := bufio.NewReader((con)).ReadString('\n')
		//data, err := bufio.NewReader((con)).ReadString('\n')

		buf := make([]byte, 10024)
		data, err := con.Read(buf)

		if err != nil {
			fmt.Println(err)
			fmt.Println(string(data))
			return
		}

		ms := buf

		fmt.Println("message received:" + string(buf))

		con.Write((ms))
	}

	con.Close()
}
func main() {
	fmt.Println("tuto socket")
	//listen
	dstream, err := net.Listen("tcp", "127.0.0.1:8000")
	if err != nil {
		fmt.Println((err))
		return
	}
	defer dstream.Close()
	db, err := sql.Open("mysql", "root:isib@tcp(127.0.0.1:3306)/lunch")
	//db, err := sql.Open("mysql", "root:isib@tcp(127.0.0.1:3306)/gotuto")
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()
	fmt.Println("Succesfully connected ot mysql")

	//we had the opportunity to read the stream before connxexion closing

	for {
		con, err := dstream.Accept()
		fmt.Println("connexion accepted")
		if err != nil {
			fmt.Println((err))
			return
		}

		fmt.Println(" i can receive now")
		//go handle(con)
		//go handle(con)
		//	var nom :=(buf)
		handlelistrecettes(con, *db)
		/*for {

			buf := make([]byte, 1024)
			data, err := con.Read(buf[0:])

			if err != nil {
				fmt.Println(err)
				fmt.Println(string(data))
				return
			}

			//	ms := buf

			fmt.Println("message received:" + string(buf[0:]))
			//fmt.Println("message received:" + string(data))

			sms := string(buf[0:])
			sa := strings.Split(sms, " ")
			fmt.Println(sa[0])
			if sa[0] == "listes" {
				fmt.Println("=>" + sms)
			}

			results, err := db.Query(("SELECT * FROM users"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					Nam string
					id  int
				)
				err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				fmt.Printf("name: %s and  id: %d \n", Nam, id)
				nam += Nam + " , "

			}

			con.Write(([]byte(string(nam))))

		}*/

		con.Close()
	}

	//fmt.Println("go to sql tutorial")
	/*db, err := sql.Open("mysql", "root:isib@tcp(127.0.0.1:3306)/gotuto")
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()*/
	//fmt.Println("Succesfully connected ot mysql")

}

func handlelistrecettes(con net.Conn, db sql.DB) {
	for {

		buf := make([]byte, 1024)
		data, err := con.Read(buf[0:])

		if err != nil {
			fmt.Println(err)
			fmt.Println(string(data))
			return
		}

		//	ms := buf

		fmt.Println("message received:" + string(buf[0:]))
		//fmt.Println("message received:" + string(data))

		sms := string(buf[0:])
		sa := strings.Split(sms, ",")
		fmt.Println(sa[0])

		/*	//demorecette
			if sa[0] == "ajout" {
				//fmt.Println("=>" + sms)
				fmt.Println("=>" + sa[0])
				fmt.Println("=>" + sa[1])
				fmt.Println("=>" + sa[2])

				insert, err := db.Query("INSERT INTO users VALUES('" + sa[1] + "','" + sa[2] + "')")
				if err != nil {
					panic(err.Error())
				}
				defer insert.Close()
				fmt.Println("Succesfully Inserted to mysql")

			} else if sa[0] == "retrieve" {
				fmt.Println("=>" + sms)
				fmt.Println("=>" + sa[0])

				results, err := db.Query(("SELECT * FROM users "))
				if err != nil {
					panic(err.Error())
				}

				var nam = ""
				for results.Next() {
					var (
						//Nam string
						//id  int
						Nam string
						img string
					)
					err = results.Scan(&Nam, &img)
					if err != nil {
						panic(err.Error())

					}
					//con.Write(([]byte(string(Nam))))

					fmt.Printf("name: %s , lien : %s  \n", Nam, img)
					nam += Nam + "*" + img + ","

				}
				con.Write(([]byte(string(nam))))
			}*/
		//findemorectte

		//debut----

		if sa[0] == "listes" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM recettes"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					IDR       string
					RName     string
					origin    string
					Accroname string
					Liens     string
				)
				err = results.Scan(&IDR, &RName, &origin, &Accroname, &Liens)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("IDR: %s , RName: %s , origin: %s , Accronyme: %s,Liens: %s  \n", IDR, RName, origin, Accroname, Liens)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += Liens + "*" + RName + "*" + IDR + "*" + origin + "*" + Accroname + "*" + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "selectIDR" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM recettes WHERE IDR='" + sa[1] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					IDR       string
					RName     string
					origin    string
					Accroname string
					Liens     string
				)
				err = results.Scan(&IDR, &RName, &origin, &Accroname, &Liens)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("IDR: %s , RName: %s , origin: %s , Accronyme: %s,Liens: %s  \n", IDR, RName, origin, Accroname, Liens)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += IDR + "*" + RName + "*" + origin + "*" + Accroname + "*" + Liens + "*" + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "ingredients" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])

			results, err := db.Query(("SELECT * FROM Contenu WHERE CIDR='" + sa[1] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					CIDR     string
					Cnom     string
					quantity string
					unity    string
				)
				err = results.Scan(&CIDR, &Cnom, &quantity, &unity)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				fmt.Printf("Cnom: %s , quantity : %s  %s \n", Cnom, quantity, unity)
				nam += quantity + " " + unity + " " + Cnom + " , "
				fmt.Printf(nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "listesRecettesIng" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM recettes"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					IDR       string
					Liens     string
					RName     string
					origin    string
					Accroname string
				)
				err = results.Scan(&IDR, &RName, &origin, &Accroname, &Liens)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("IDR: %s , RName: %s , origin: %s , Accronyme: %s,Liens: %s  \n", IDR, RName, origin, Accroname, Liens)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += RName + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "ajoutIngredientsContenu" {
			//fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[5])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			fmt.Println("=>" + sa[3])
			fmt.Println("=>" + sa[4])

			insert, err := db.Query("INSERT INTO Contenu VALUES('" + sa[1] + "','" + sa[2] + "','" + sa[3] + "', '" + sa[4] + "')")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully Inserted to mysql")

		} else if sa[0] == "ajoutIngredientsIng" {
			//fmt.Println("=>" + sms)

			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])

			insert, err := db.Query("INSERT INTO Ingredients VALUES('" + sa[1] + "','" + sa[2] + "')")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully Inserted to mysql")

		} else if sa[0] == "ajout" {
			//fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[5])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			fmt.Println("=>" + sa[3])
			fmt.Println("=>" + sa[4])

			insert, err := db.Query("INSERT INTO recettes VALUES('" + sa[1] + "','" + sa[2] + "','" + sa[3] + "', '" + sa[4] + "', '" + sa[5] + "')")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully Inserted to mysql")

		} else if sa[0] == "delete" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			insert, err := db.Query("DELETE FROM recettes WHERE IDR='" + sa[1] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "delete2contenu" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			insert, err := db.Query("DELETE FROM Contenu WHERE CIDR='" + sa[1] + "'and Cnom='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "delete2dayrecette" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			insert, err := db.Query("DELETE FROM DaysRecettes WHERE CIDR='" + sa[1] + "'and Ddays='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "delete3ForIngredi" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			insert, err := db.Query("DELETE FROM Ingredients WHERE nom='" + sa[1] + "'and quantity='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "AjoutContenuForDeleted" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM Contenu WHERE CIDR='" + sa[1] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					CIDR string

					Cnom     string
					quantity string
					unity    string
				)
				err = results.Scan(&CIDR, &Cnom, &quantity, &unity)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("CIDR: %s , Cnom: %s , quantity: %s , unity: %s  \n", CIDR, Cnom, quantity, unity)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += Cnom + "*" + quantity + "*" + unity + "*" + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "AjoutDayrecettesForDeleted" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM DaysRecettes WHERE CIDR='" + sa[1] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					Ddays string
					CIDR  string
				)
				err = results.Scan(&Ddays, &CIDR)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("Ddays: %s , CIDR: %s   \n", Ddays, CIDR)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += Ddays + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "update" {

			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			fmt.Println("=>" + sa[3])
			fmt.Println("=>" + sa[4])

			insert, err := db.Query(" UPDATE recettes SET RName='" + sa[2] + "', origin='" + sa[3] + "', Accroname='" + sa[4] + "' WHERE IDR='" + sa[1] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully appended to mysql")

		} else if sa[0] == "repasdujour" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			if sa[1] == "101" {

				sof := strings.Split(sa[1], " ")
				fmt.Println("=>=>" + sof[1] + ",")
				results, err := db.Query(("SELECT Days,RName, lien FROM daysrecettes inner join recettes on CIDR=IDR where Ddays='" + sa[1] + "'"))
				if err != nil {
					panic(err.Error())
				}

				var nam = ""
				for results.Next() {
					var (
						//Nam string
						//id  int
						Days string

						RName string
						lien  string
					)
					err = results.Scan(&Days, &lien, &RName)
					//	err = results.Scan(&Nam, &id)
					if err != nil {
						panic(err.Error())

					}
					//con.Write(([]byte(string(Nam))))

					//fmt.Printf("name: %s and  id: %d \n", Nam, id)
					fmt.Printf(" Days: %s  RName %s \n Liens %s  ", Days, RName, lien)
					nam += lien + "*" + RName + "*" + " , "

				}

				con.Write(([]byte(string(nam))))

			} else {
				//sof := strings.Split(sa[1], " ")
				fmt.Println("=>=>" + sa[1] + ",")
				results, err := db.Query(("SELECT Ddays,CIDR,RName,lien FROM daysrecettes inner join recettes on CIDR=IDR where Ddays='" + sa[1] + "'"))
				if err != nil {
					panic(err.Error())
				}

				var nam = ""
				for results.Next() {
					var (
						//Nam string
						CIDR  string
						Ddays string
						lien  string
						RName string
					)
					err = results.Scan(&Ddays, &CIDR, &RName, &lien)
					//	err = results.Scan(&Nam, &id)
					if err != nil {
						panic(err.Error())

					}
					//con.Write(([]byte(string(Nam))))

					//fmt.Printf("name: %s and  id: %d \n", Nam, id)
					fmt.Printf(" Days: %s IDR %s  RName: %s Liens: %s \n  ", Ddays, CIDR, RName, lien)
					nam += lien + "*" + CIDR + "*" + RName + "*" + ","

				}

				con.Write(([]byte(string(nam))))

			}

		} else if sa[0] == "days" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM dayss"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int

					days string
				)
				err = results.Scan(&days)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf(" days: %s   \n", days)
				nam += days + " , "

			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "LISTESIDR" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT IDR FROM recettes"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int

					days string
				)
				err = results.Scan(&days)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf(" days: %s   \n", days)
				nam += days + " , "

			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "AjoutRepasduJour" {
			//fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			//sof1 := strings.Split(sa[1], " ")
			//sof2 := strings.Split(sa[2], " ")
			//fmt.Println("=>" + sa[1])
			//fmt.Println("=>" + sa[2])
			insert, err := db.Query("INSERT INTO DaysRecettes VALUES('" + sa[1] + "','" + sa[2] + "')")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully Inserted to mysql")

		} else if sa[0] == "Deleterecettedujour" {
			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			//sof1 := strings.Split(sa[1], " ")
			//sof2 := strings.Split(sa[2], " ")
			insert, err := db.Query("DELETE FROM DaysRecettes WHERE CIDR='" + sa[1] + "' and Ddays='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "listesIngIDRI" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM Contenu  WHERE CIDR='" + sa[1] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					CIDR     string
					Cnom     string
					quantity string
					unity    string
				)
				err = results.Scan(&CIDR, &Cnom, &quantity, &unity)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("IDR: %s , RName: %s , origin: %s , Accronyme: %s,Liens: %s  \n", CIDR, Cnom, quantity, unity)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += Cnom + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "AjoutQuantiteUnity" {
			fmt.Println("=>" + sms)

			results, err := db.Query(("SELECT * FROM Contenu  WHERE CIDR='" + sa[1] + "' and Cnom='" + sa[2] + "'"))
			if err != nil {
				panic(err.Error())
			}

			var nam = ""
			for results.Next() {
				var (
					//Nam string
					//id  int
					CIDR     string
					Cnom     string
					quantity string
					unity    string
				)
				err = results.Scan(&CIDR, &Cnom, &quantity, &unity)
				//err = results.Scan(&Liens, &RName)
				//	err = results.Scan(&Nam, &id)
				if err != nil {
					panic(err.Error())

				}
				//con.Write(([]byte(string(Nam))))

				//fmt.Printf("name: %s and  id: %d \n", Nam, id)
				fmt.Printf("CIDR: %s , Cnom: %s , quantity: %s , unity: %s  \n", CIDR, Cnom, quantity, unity)
				//nam += IDR + "  -  " + RName + " , "
				//fmt.Printf("Liens: %s , RName: %s  \n", Liens, RName)
				//nam += Liens + "*" + RName + ","

				nam += quantity + "*" + unity + "*" + Cnom + "*" + ","
				//fmt.Printf("\n" + nam)
			}

			con.Write(([]byte(string(nam))))

		} else if sa[0] == "deleteIngredients2" {

			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			fmt.Println("=>" + sa[3])
			fmt.Println("=>" + sa[4])

			insert, err := db.Query(" Delete FROM Contenu WHERE CIDR='" + sa[1] + "'and Cnom='" + sa[2] + "'and quantity='" + sa[3] + "'and unity='" + sa[4] + "'")
			if err != nil {
				panic(err.Error())
			}

			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		} else if sa[0] == "deleteIngredients1" {

			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])

			insert, err := db.Query(" Delete FROM Ingredients WHERE nom='" + sa[1] + "'and quantity='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}

			defer insert.Close()
			fmt.Println("Succesfully deleted to mysql")

		}

		//deleteIngredients1  p687
		//deleteIngredients2  p670
		//AjoutQuantiteUnity  p631
		//listesIngIDRI       p592
		//Deleterecettedujour p579
		//AjoutRepasduJour    p563
		//LISTESIDR			  p531
		//days				  p499
		//repasdujour         p425
		//update              p409

		/*else if sa[0] == "updateIngredients1" {

			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])

			insert, err := db.Query(" UPDATE Ingredients SET nom='" + sa[1] + "', quantity='" + sa[2] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully appended to mysql")

		} else if sa[0] == "updateIngredients2" {

			fmt.Println("=>" + sms)
			fmt.Println("=>" + sa[0])
			fmt.Println("=>" + sa[1])
			fmt.Println("=>" + sa[2])
			fmt.Println("=>" + sa[3])
			fmt.Println("=>" + sa[4])

			insert, err := db.Query(" UPDATE Contenu SET CIDR='" + sa[1] + "', Cnom='" + sa[2] + "', quantity='" + sa[3] + "', unity='" + sa[4] + "' WHERE Cnom='" + sa[2] + "' and CIDR='" + sa[1] + "'")
			if err != nil {
				panic(err.Error())
			}
			defer insert.Close()
			fmt.Println("Succesfully appended to mysql")

		}
		*/
		//fin -----

	}
}

//****insert****
/*	insert, err := db.Query("INSERT INTO users VALUES('capernic','12')")
	if err != nil {
		panic(err.Error())
	}
	defer insert.Close()
	fmt.Println("Succesfully Inserted to mysql")*/
