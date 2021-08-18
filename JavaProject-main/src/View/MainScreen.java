package View;


import Database.BorrowMovieManager;
import Database.Movies;
import Database.MoviesManager;
import Database.UsersManager;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.fxml.FXML;
import javafx.scene.input.MouseEvent;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.ComboBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;

import javax.swing.*;

import javafx.event.ActionEvent;

import java.net.URL;
import java.sql.SQLException;

import java.util.ResourceBundle;
import java.util.function.Predicate;
import javafx.scene.control.Button;


public class MainScreen {
    @FXML private AnchorPane panelAnasayfa;
    @FXML private AnchorPane panelFilmler;
    @FXML private AnchorPane panelOduncAl;
    @FXML private AnchorPane panelIadeEt;
    @FXML private AnchorPane panelArsivBilgileri;
    @FXML private AnchorPane panelFilmEkle;
    @FXML private AnchorPane panelCikis;
    @FXML private AnchorPane panelProfil;
    @FXML private Label lblAnasayfa;
    @FXML private Label lblFilmler;
    @FXML private Label lblFilmOduncAl;
    @FXML private Label lblFilmIadeEt;
    @FXML private Label lblFilmEkle;
    @FXML private Label lblArsivBilgileri;
    @FXML private Label lblCikis;
    @FXML private TableView<Movies> tableMovie;
    @FXML private TableColumn<Movies, String> columnMovieFilmAdi;
    @FXML private TableColumn<Movies, String> columnMovieOyuncuAdi;
    @FXML private TableColumn<Movies, String> columnMovieYonetmenAdi;
    @FXML private TableColumn<Movies, String> columnMovieImdbPuani;
    @FXML private TableColumn<Movies, String> columnMovieTuru;
    @FXML private TextField textMovieName;
    @FXML private TextField textActorName;
    @FXML private TextField textDirectorName;
    @FXML private TextField textImdbScore;
    @FXML private ComboBox<String> comboBoxType;
    @FXML private TextField textAdminUserName;
    @FXML private PasswordField textAdminPassword;
    @FXML private TextField textMovieSearch;
    @FXML private TextField textBorrowUserName;
    @FXML private TextField textBorrowMovieName;
    @FXML private TextField textReturnMovieName;
    @FXML private TextField textReturnUserName;
    @FXML private Label textNumberOfMovie;
    @FXML private Label labelNumberOfUser;
    @FXML private Label labelName;
    @FXML private Label labelSurname;
    @FXML private Label textProfilName;
    @FXML private Label textProfilUserName;
    @FXML private Label textProfilBorrowMovie;
    @FXML private Button btnProfil;
    @FXML private Button btnBorrow;
    @FXML private Button btnReturn;
    @FXML private Button btnAdd;
    @FXML private Button btnExit;

    ObservableList<Movies> listMovies;

   @Override
    public void initialize(URL url, ResourceBundle rb)
    {
        movieNumber();                                                      // Film Sayısını verir.
        userNumber();                                                      // Kullanıcı sayısını verir.

        labelName.setText(Login.nowNameAndSurname);                        // İsmi ve soyismi anaekrana yazdırır.
        labelSurname.setText(Login.nowUserName);                           // Kullanıcıyı anaekrana yazdırır.

        addComboBoxType();                                                 //Film ekle kısmındaki combobox'a değerler atar.
        comboBoxType.setValue("Türü");                                     //Combobox boş kalmaması için

        textProfilUserName.setText(Login.nowUserName);                     //Profil kısmına kullanıcı adını ekleme
        textProfilName.setText(Login.nowNameAndSurname);                   //Profil ekranına isim-soyisim yazdırma

        profilBorrowMovie();                                                //Profilde ödünç alınan filmi yazması.
        ViewTable();                                                       //Tabloya filmleri aktarır.
    }

    private int menu = 1;

    @FXML
    void menuAnasayfaClick(MouseEvent event)
    {
        menuControl();
        panelAnasayfa.setVisible(true);
        menu = 1;
    }
    @FXML
    void menuCikisClick(MouseEvent event)
    {
        menuControl();
        panelCikis.setVisible(true);
        menu = 2;
    }
    @FXML
    void menuIadeEtClick(MouseEvent event)
    {
        menuControl();
        panelIadeEt.setVisible(true);
        menu = 3;
    }
    @FXML
    void menuFilmEkleClick(MouseEvent event)
    {
        menuControl();
        panelFilmEkle.setVisible(true);
        menu = 4;
    }
    @FXML
    void menuFilmlerClick(MouseEvent event)
    {
        menuControl();
        panelFilmler.setVisible(true);
        menu = 5;
    }
    @FXML
    void menuArsivBilgileriClick(MouseEvent event)
    {
        menuControl();
        panelArsivBilgileri.setVisible(true);
        menu = 6;
    }
    @FXML
    void menuOduncAlClick(MouseEvent event)
    {
        menuControl();
        panelOduncAl.setVisible(true);
        menu = 7;
    }
    @FXML
    void menuProfilClick(MouseEvent event)
    {
        menuControl();
        panelProfil.setVisible(true);
        menu = 8;
    }
    public void menuControl()
    {
        switch (menu)
        {
            case 1:
                panelAnasayfa.setVisible(false);
                break;
            case 2:
                panelCikis.setVisible(false);
                break;
            case 3:
                panelIadeEt.setVisible(false);
                break;
            case 4:
                panelFilmEkle.setVisible(false);
                break;
            case 5:
                panelFilmler.setVisible(false);
                break;
            case 6:
                panelArsivBilgileri.setVisible(false);
                break;
            case 7:
                panelOduncAl.setVisible(false);
                break;
            case 8:
                panelProfil.setVisible(false);
                break;
            default:
                break;
        }
    }

    public void addComboBoxType()
    {
        ObservableList<String> list = FXCollections.observableArrayList("KOMEDİ","BİLİMKURGU","DRAM","AKSİYON","MACERA");
        comboBoxType.setItems(list);
    }

    public void ViewTable()
    {
        columnMovieFilmAdi.setCellValueFactory(new PropertyValueFactory<>("movieName"));
        columnMovieOyuncuAdi.setCellValueFactory(new PropertyValueFactory<>("actorName"));
        columnMovieYonetmenAdi.setCellValueFactory(new PropertyValueFactory<>("directorName"));
        columnMovieImdbPuani.setCellValueFactory(new PropertyValueFactory<>("imdbScore"));
        columnMovieTuru.setCellValueFactory(new PropertyValueFactory<>("type"));

        try{
            MoviesManager moviesManager = new MoviesManager();
            listMovies = moviesManager.getDataMovies();
            tableMovie.setItems(listMovies);
        }catch (SQLException exception)
        {
            System.out.println("hata");
        }

        FilteredList<Movies> filteredList = new FilteredList<>(listMovies, e->true);
        textMovieSearch.setOnKeyReleased(e ->{
            textMovieSearch.textProperty().addListener((observableValue, oldValue, newValue) ->{
                filteredList.setPredicate((Predicate<? super Movies>) Movies ->{
                    if(newValue ==null || newValue.isEmpty()){
                        return true;
                    }
                    String lowerCaseFilter = newValue.toUpperCase();
                    if(Movies.getMovieName().contains(lowerCaseFilter)){
                        return true;
                    }else if(Movies.getActorName().contains(lowerCaseFilter)){
                        return true;
                    }else if(Movies.getDirectorName().contains(lowerCaseFilter)){
                        return true;
                    }else if(Movies.getImdbScore().contains(lowerCaseFilter)){
                        return true;
                    }
                    else if(Movies.getType().contains(lowerCaseFilter)){
                        return true;
                    }
                    return false;
                });
            } );
            SortedList<Movies> sortedList = new SortedList<>(filteredList);
            sortedList.comparatorProperty().bind(tableMovie.comparatorProperty());
            tableMovie.setItems(sortedList);
        });
    }

    public void movieNumber()
    {
        MoviesManager moviesManager1 = new MoviesManager();
        textNumberOfMovie.setText(Integer.toString(moviesManager1.numberOfMovie()));
    }

    public void userNumber()
    {
        UsersManager usersManager = new UsersManager();
        labelNumberOfUser.setText(Integer.toString(usersManager.numberOfUser()));
    }

    public void profilBorrowMovie()
    {
        BorrowMovieManager borrowMovieManager = new BorrowMovieManager();
        textProfilBorrowMovie.setText(borrowMovieManager.userNameControl(Login.nowUserName));
    }

    @FXML
    public void clickExit(ActionEvent event)
    {
        System.exit(0);
    }

    @FXML
    public int addMovieClick(ActionEvent event)
    {
        try{
            Integer.parseInt(textImdbScore.getText());
        }catch (Exception exception){
            JOptionPane.showMessageDialog(null,"IMDB puanını düzgün giriniz!");
            return 0;
        }
        if(comboBoxType.getValue().equals("Türü") || textMovieName.getText().equals("") || textActorName.getText().equals("") || textDirectorName.getText().equals("") || textImdbScore.getText().equals("") || textAdminUserName.getText().equals("") || textAdminPassword.getText().equals("")) {
            JOptionPane.showMessageDialog(null, "Eksik Giriş!!!");
        }
        else if(textAdminUserName.getText().equals("Admin") && textAdminPassword.getText().equals("123456"))
        {
            MoviesManager moviesManager = new MoviesManager();
            moviesManager.insertMovie(textMovieName.getText().toUpperCase(),textActorName.getText().toUpperCase(),textDirectorName.getText().toUpperCase(),textImdbScore.getText(),comboBoxType.getValue().toUpperCase());
            JOptionPane.showMessageDialog(null,"Kayıt Eklendi");
            textMovieName.setText("");
            textActorName.setText("");
            textDirectorName.setText("");
            textImdbScore.setText("");
            comboBoxType.setValue("Türü");
            textAdminUserName.setText("");
            textAdminPassword.setText("");
            ViewTable();
            movieNumber();
            userNumber();
        }
        else {
            JOptionPane.showMessageDialog(null,"Hatalı veya Eksik Giriş!!!");
        }
        return 0;
    }

    @FXML
    public void borrowMovie(ActionEvent event)
    {
        MoviesManager moviesManager = new MoviesManager();
        BorrowMovieManager borrowMovieManager = new BorrowMovieManager();
        int control1 = moviesManager.movieControl(textBorrowMovieName.getText().toUpperCase());
        String control2 = borrowMovieManager.userNameControl(Login.nowUserName);
        if(control1==0 && control2.equals("YOK") && Login.nowUserName.equals(textBorrowUserName.getText()))
        {
            moviesManager.moviesData(textBorrowMovieName.getText().toUpperCase(), Login.nowUserName);
            JOptionPane.showMessageDialog(null,"Film Alındı");
            textBorrowMovieName.setText("");
            textBorrowUserName.setText("");
            movieNumber();
            userNumber();
            ViewTable();
            profilBorrowMovie();
        }
        else {
            if(control1 == 1) {
                JOptionPane.showMessageDialog(null,"Böyle Bir Film Bulunmamaktadır.");
            }
            else if(!control2.equals("YOK")) {
                JOptionPane.showMessageDialog(null,"Şu anda ödünç aldığınız bir film var zaten.");
            }
            else if(!Login.nowUserName.equals(textBorrowUserName.getText())) {
                JOptionPane.showMessageDialog(null, "Kullanıcı adı hatalı");
            }
        }
    }

    @FXML
    public void returnMovie(ActionEvent event)
    {
        BorrowMovieManager borrowMovieManager = new BorrowMovieManager();
        int control = borrowMovieManager.borrowMovieControl(textReturnMovieName.getText().toUpperCase());
        if(control==0 && Login.nowUserName.equals(textReturnUserName.getText()))
        {
            borrowMovieManager.borrowMovieData(textReturnMovieName.getText().toUpperCase());
            JOptionPane.showMessageDialog(null,"Film Geri Verildi");
            textReturnMovieName.setText("");
            textReturnUserName.setText("");
            textProfilBorrowMovie.setText("YOK");
            movieNumber();
            userNumber();
            ViewTable();
        }
        else {
            if(control == 1){
                JOptionPane.showMessageDialog(null,"Böyle Bir Film Ödünç Alınmamış");
            }
            else if(!Login.nowUserName.equals(textReturnUserName.getText())) {
                JOptionPane.showMessageDialog(null,"Hatalı Kullanıcı Adı Girişi");
            }
        }
    }

    //Butonların arka plan renginin ayarlanması için yazılmış kodlar.
    @FXML
    public void enteredAnasayfa (MouseEvent event) { lblAnasayfa.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredFilmler (MouseEvent event) { lblFilmler.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredFilmOduncAl (MouseEvent event) { lblFilmOduncAl.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredFilmIadeEt (MouseEvent event) { lblFilmIadeEt.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredFilmEkle (MouseEvent event) { lblFilmEkle.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredArsivBilgileri (MouseEvent event) { lblArsivBilgileri.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void enteredCikis (MouseEvent event) { lblCikis.styleProperty().set("-fx-background-color: #487eb0"); }
    @FXML
    public void exitedAnasayfa (MouseEvent event) { lblAnasayfa.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedFimler (MouseEvent event) { lblFilmler.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedFilmOduncAl (MouseEvent event) { lblFilmOduncAl.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedFilmIadeEt (MouseEvent event) { lblFilmIadeEt.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedFilmEkle (MouseEvent event) { lblFilmEkle.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedArsivBilgileri (MouseEvent event) { lblArsivBilgileri.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void exitedCikis (MouseEvent event) { lblCikis.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void btnEnteredProfil (MouseEvent event) { btnProfil.styleProperty().set("-fx-background-color: #3F51B5"); }
    @FXML
    public void btnExitedProfil (MouseEvent event) { btnProfil.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void btnEnteredBorrow (MouseEvent event) { btnBorrow.styleProperty().set("-fx-background-color: #3F51B5"); }
    @FXML
    public void btnExitedBorrow (MouseEvent event) { btnBorrow.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void btnEnteredReturn (MouseEvent event) { btnReturn.styleProperty().set("-fx-background-color: #3F51B5"); }
    @FXML
    public void btnExitedRetrun (MouseEvent event) { btnReturn.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void btnEnteredAdd (MouseEvent event) { btnAdd.styleProperty().set("-fx-background-color: #3F51B5"); }
    @FXML
    public void btnExitedAdd (MouseEvent event) { btnAdd.styleProperty().set("-fx-background-color:  #487eb0"); }
    @FXML
    public void btnEnteredExit (MouseEvent event) { btnExit.styleProperty().set("-fx-background-color: #E57373"); }
    @FXML
    public void btnExitedExit (MouseEvent event) { btnExit.styleProperty().set("-fx-background-color:  #ef5350"); }
}
