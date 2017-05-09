2017-05-10

## はじめての<br>SpringBoot

Satoshi Ueno


--

自己紹介


ヤフー株式会社 ショッピングカンパニー  
上埜 敏司


--

コンテンツ

1. SpringBootの始め方
2. Consoleアプリケーション
3. Web API
4. DIを活用


--

注意事項

- 本日のハンズオンはPivotal-Japanの[getting-started-with-springboot](https://github.com/Pivotal-Japan/getting-started-with-spring-boot)の一部を踏襲したものです。


-----

コンテンツ

1. **SpringBootの始め方**
2. Consoleアプリケーション
3. Web API
4. DIを活用


--

とりあえず **Spring Initializr**

[https://start.spring.io](https://start.spring.io)
<iframe src="https://start.spring.io/" width="90%" height="480px">



--

**Spring Initializr**

- SpringBootの雛形アプリケーション生成サービス
- 最初にスターターや依存ライブラリを簡単に設定
- Gradle,Mavenで選択可能
- WebAPIも提供


--

展開された雛形

```tree
.
├── mvnw
├── mvnw.cmd
├── pom.xml
└── src
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── example
    │   │           └── HelloApplication.java
    │   └── resources
    │       └── application.properties
    └── test
        └── java
            └── com
                └── example
                    └── HelloApplicationTests.java
```

そのまま実行可能
```bash
$ ./gradlew bootRun          # Gradle
$ ./mvnw spring-boot:run # Maven
```


--

ビルドしてjarにパッケージング

Mavenの場合

```bash
# 実行可能な1ファイルに圧縮
$ ./mvnw clean package

$ java -jar ./target/hello-0.0.1-SNAPSHOT.jar
```

Gradleの場合

```bash
# 実行可能な1ファイルに圧縮
$ ./gradlew build

$ java -jar ./build/lib/hello-0.0.1-SNAPSHOT.jar
```


--

STSにインポート

![sts import](https://cloud.githubusercontent.com/assets/4545820/25573521/1a971d7a-2e81-11e7-9944-c329d65176e1.png)


--

STSにインポート(Maven)

![sts import maven](https://cloud.githubusercontent.com/assets/4545820/25573704/dacb9958-2e82-11e7-89dc-98812dbc757a.png)


--

STSにインポート（Gradleの場合はPluginが必要）

![sts import gradle](https://cloud.githubusercontent.com/assets/4545820/25575085/c80b58c4-2e8e-11e7-865d-6146c9c6f853.png)


--

STSにインポート

![sts import app](https://cloud.githubusercontent.com/assets/4545820/25573705/daf3e7f0-2e82-11e7-9f76-6b1f409e0477.png)


--

STSで実行

![sts build](https://cloud.githubusercontent.com/assets/4545820/25573901/5e83030c-2e84-11e7-8257-0b46dd2abeb0.png)


--

SpringBootの開発

1. Initializrで雛形をダウンロード
2. STSやIntelliJ IDEAでインポート
3. **開発**
4. ビルド・jarファイルをPush



-----

コンテンツ

1. SpringBootの始め方
2. **Consoleアプリケーション**
3. Web API
4. DIを活用


--

エントリポイントを確認

- src/main/java/com/example/HelloApplication.java

```java
package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HelloApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloApplication.class, args);
	}
}
```


--

CommandLineRunnerインターフェースを実装

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-hello-console/src/main/java/com/example/HelloApplication.java)
（[修正箇所](https://github.com/Piyoshi/hello-springboot/compare/maven-hello-init...maven-hello-console)）

```java
・・
import org.springframework.boot.CommandLineRunner;
・・
・

@SpringBootApplication
public class HelloApplication implements CommandLineRunner {

	・・
	・

	@Override
	public void run(String... args) throws Exception {
		System.out.println("Hello World!");
	}
}
```


--

runメソッドが起動直後に実行

![hello-console result](https://cloud.githubusercontent.com/assets/4545820/25574033/5db59100-2e85-11e7-9cdd-9a4b13e7f8e2.png)




-----

コンテンツ

1. SpringBootの始め方
2. Consoleアプリケーション
3. **Web API**
4. DIを活用


--

webスターターを使用したアプリケーション開発

![initialize web](https://cloud.githubusercontent.com/assets/4545820/25574352/8f835aca-2e88-11e7-8e66-fe49b7bef38c.png)


--

スターターの依存設定が自動で追加

pom.xml
```xml
<dependencies>
+	<dependency>
+		<groupId>org.springframework.boot</groupId>
+		<artifactId>spring-boot-starter-web</artifactId>
+	</dependency>

・・
・
</dependencies>
```

build.gradle
```groovy
dependencies {
+	compile('org.springframework.boot:spring-boot-starter-web')

・・
・
}
```


--

そのまま実行すると

![web default build](https://cloud.githubusercontent.com/assets/4545820/25795943/8c9acdf4-3412-11e7-9c24-3e61f1269bd9.png)
ポートと紐付いて組み込みTomcatが起動


--

@RestController, @GetMappingを実装

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-rest-first/src/main/java/com/example/HelloRestApplication.java)
（[修正箇所](https://github.com/Piyoshi/hello-springboot/compare/maven-rest-init...maven-rest-first)）
```java
・・
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
・・
・

@SpringBootApplication
@RestController
public class HelloRestApplication {
	@GetMapping("/")
	String hello() {
		return "Hello World!";
	}

	・・
	・
}
```


--

@RestControllerの戻り値がレスポンスのコンテンツに

[http://localhost:8080](http://localhost:8080)  
<iframe src="http://localhost:8080/" style="background-color: white;"></iframe>

※実行後に更新してみてください


--

Rest APIを追加

- 全データ取得  
  => [GET] https://localhost:8080/cities
- データ作成  
  => [POST] https://localhost:8080/cities

--

Cityクラス(Entity)

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-rest-city/src/main/java/com/example/city/City.java)
```java
package com.example.city;

public class City {
	private Integer id;
	private String name;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
```


--

CityControllerクラス(API)

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-rest-city/src/main/java/com/example/city/CityController.java)
```java
package com.example.city;
...

@RestController
@RequestMapping("cities")
public class CityController {
	static List<City> cities = new CopyOnWriteArrayList<>();
	static AtomicInteger counter = new AtomicInteger(0);

	@GetMapping
	List<City> getCities() {
		return cities;
	}

	@PostMapping
	City postCities(@RequestBody City city) {
		city.setId(counter.incrementAndGet());
		cities.add(city);
		return city;
	}
}
```
※通常はServiceやRepositoryを挟むべき


--

起動後にコンソールからAPIへアクセス

```bash
$ curl -X GET http://localhost:8080/cities
[]

$ curl -X POST http://localhost:8080/cities \
> -H "Content-Type: application/json" -d "{\"name\":\"Tokyo\"}"
{"id":1,"name":"Tokyo"}

$ curl -X POST http://localhost:8080/cities \
> -H "Content-Type: application/json" -d "{\"name\":\"Osaka\"}"
{"id":2,"name":"Osaka"}

$ curl -X GET http://localhost:8080/cities
[{"id":1,"name":"Tokyo"},{"id":2,"name":"Osaka"}]
```



-----

コンテンツ

1. SpringBootの始め方
2. Consoleアプリケーション
3. Web API
4. **DIを活用**


--

DI(Dependency Injection) ？

- 依存関係を外部から注入して解決
- SpringではDIコンテナに依存を登録
- フィールドやコンストラクタなどを  
  インジェクション

--

2のConsoleアプリケーションに  
DIを使用してみる


--

インジェクションする型をインタフェースとして作成

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-hello-di/src/main/java/com/example/GreetingService.java)
```java
package com.example;

public interface GreetingService {
	// 出力する文字列を解決
	String greet();
}
```

--

出力は実装した何らかのクラスに任せる  
(実際に依存するクラスは知らなくて良い)

```java
package com.example;
・・・

@SpringBootApplication
public class HelloApplication implements CommandLineRunner {
	// GreetingServiceを実装した何らかのクラス
	private GreetingService greetingService;

	・・・

	@Override
	public void run(String... args) throws Exception {
		System.out.println(greetingService.greet());
	}
}
```


--

@AutowiredをつけることでDIコンテナから  
登録されたGreetingService型のインスタンスが注入

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-hello-di/src/main/java/com/example/HelloApplication.java)
（[修正箇所](https://github.com/Piyoshi/hello-springboot/compare/maven-hello-console...maven-hello-di#diff-dff663fc6729001bf25ea33c8822cdf4R10)）
```java
package com.example;

import org.springframework.beans.factory.annotation.Autowired;
・・・

@SpringBootApplication
public class HelloApplication implements CommandLineRunner {
	@Autowired
	private GreetingService greetingService;

	・・・
}
```


--

DIコンテナから注入する実装クラス  
@ComponentをつけることでDIコンテナへ登録

[ソース](https://github.com/Piyoshi/hello-springboot/blob/maven-hello-di/src/main/java/com/example/SimpleGreetingService.java)
```java
package com.example;

import org.springframework.stereotype.Component;

@Component
public class SimpleGreetingService implements GreetingService {
	@Override
	public String greet() {
		return "Hello Simple World";
	}
}
```


--

実行してみる

![hello di result](https://cloud.githubusercontent.com/assets/4545820/25795944/8c9b7312-3412-11e7-854b-731f57867e9b.png)




-----

#### オプション
Pivotal Cloud FoundryへPush


--

[無料トライアル](https://run.pivotal.io/)
<iframe src="https://run.pivotal.io/" width="90%" height="480px">



--

Cloud Fondry Cliをインストール

[参考](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html)


--

コマンドでトライアルアカウントへログイン

```bash
$ cf login -a api.run.pivotal.io
Email> 登録メールアドレス

Password> パスワード
認証中です...
OK
```


--

jarファイルをpush

```bash
$ cf push アプリ名 -m 256m -p build/libs/◯◯.jar
・・・

OK

・・・
     状態   開始日時                 CPU    メモリー             ディスク           詳細
#0   実行  日時				    0.0%   256M の中の 180.4M   1G の中の 137.1M
```

--

[Web UI](https://console.run.pivotal.io/)から確認

[https://console.run.pivotal.io/](https://console.run.pivotal.io/)

-----

コンテンツ

1. SpringBootの始め方
2. Consoleアプリケーション
3. Web API
4. DIを活用
