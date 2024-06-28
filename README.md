# Flutter tutorial
## Run
### Để chạy và xây dựng ứng dụng Flutter, bạn cần thực hiện các bước sau:
1. Cài đặt Flutter: Truy cập trang web chính thức của Flutter [https://flutter.dev](https://flutter.dev) và làm theo hướng dẫn để cài đặt Flutter trên hệ điều hành của bạn.
2. Kiểm tra cấu hình Flutter: Mở Command Prompt hoặc Terminal và chạy lệnh sau để kiểm tra xem Flutter đã được cài đặt chính xác hay không: **flutter doctor**
3. Tạo một ứng dụng Flutter mới: Mở Command Prompt hoặc Terminal và chạy lệnh sau để tạo một ứng dụng mới: **flutter create my_app**. Trong đó, my_app là tên bạn muốn đặt cho ứng dụng của mình. Sau khi lệnh này chạy xong, bạn sẽ có một thư mục mới chứa mã nguồn của ứng dụng Flutter.
4. Di chuyển vào thư mục ứng dụng: Trong Command Prompt hoặc Terminal, hãy di chuyển vào thư mục của ứng dụng bằng lệnh: **cd my_app**. Đổi my_app thành tên thư mục ứng dụng bạn đã tạo trong bước trước.
5. Chạy ứng dụng trên thiết bị Android: Kết nối thiết bị Android của bạn với máy tính, sau đó chạy lệnh sau để kiểm tra thiết bị đã được nhận diện và sẵn sàng chạy ứng dụng: **flutter devices** (Làm tương tự nếu muốn chạy trên IOS). Nếu thiết bị của bạn được hiển thị trong danh sách, bạn có thể chạy ứng dụng Flutter trên thiết bị bằng lệnh: **flutter run** Ứng dụng sẽ được biên dịch và chạy trên thiết bị của bạn.
6. Xây dựng ứng dụng thành tệp APK: Nếu bạn muốn xây dựng tệp APK để cài đặt và chạy ứng dụng trên thiết bị Android mà không cần kết nối với máy tính, bạn có thể chạy lệnh sau: **flutter build apk**. Khi quá trình xây dựng hoàn tất, tệp APK sẽ được tạo trong thư mục **build/app/outputs/apk/release** của dự án Flutter của bạn.
7. Xây dựng ứng dụng thành file IPA: Để xây dựng file IPA để cài đặt và chạy ứng dụng trên thiết bị iOS, bạn cần sử dụng Xcode. Mở dự án Flutter bằng Xcode và chọn menu Product -> Archive để tạo file IPA. Xcode sẽ tự động tạo ra file IPA và lưu nó vào thư mục Organizer. (*Lưu ý: Để chạy ứng dụng trên thiết bị iOS, bạn cần có máy tính chạy macOS và phải đăng ký tài khoản phát triển Apple (Apple Developer Account). Bạn cần cung cấp chứng chỉ ký số và cấu hình ứng dụng cho thiết bị iOS trước khi có thể chạy ứng dụng trên thiết bị thật.*)
8. Để sửa hoặc thêm code trong dự án, ta cần mở dự án trong trình soạn thảo mã nguồn như: Visual Studio Code, Android Studio hoặc IntelliJ IDEA. Sau đó mở thư mục **lib**. Tìm các tệp mã nguồn (đuôi **.dart**) tương ứng với các màn hình, widget hoặc chức năng bạn muốn thêm hoặc sửa đổi. Bạn có thể chỉnh sửa mã nguồn trong các tệp này để thay đổi giao diện, xử lý sự kiện hoặc thêm logic mới.


## Widget
Có đến hơn trăm cái Widget có sẵn trong Flutter được google chia theo nhóm như link sau: [https://flutter.dev/docs/development/ui/widgets](https://flutter.dev/docs/development/ui/widgets). Có 5 nhóm chủ đạo như sau:
1. Nhóm **Value Widgets**. Nó dùng để hiển thị 1 dữ liệu gì đấy, dữ liệu có thể từ local, internet hoặc dữ liệu do user nhập vào. Một vài widget tiêu biểu như: Text, TextField, Icon, Image, ElevatedButton,...
2. Nhóm **Layout Widgets**. Nó dùng để bố trí và căn chỉnh các **Value Widget** trên trong 1 layout. Ví dụ: Row (bố trí các widget theo hàng ngang), Column (bố trí các widget theo hàng dọc), Align, Center (căn chỉnh layout), ...
3. Nhóm **Animation Widgets**. Nó giúp tạo ra Animation cho app của bạn thêm đẹp. VD: FadeInImage, Hero, SlideTransition, AnimatedContainer, ...
4. Nhóm **Navigation Widgets**, những widget giúp điều hướng trong app như: BottomNavigationBar, TabBar, AlertDialog,...
5. Nhóm **Interaction Widgets**. Nhóm này giúp chúng ta tạo ra những sự tương tác với View như: Dismissible, Draggable, GestureDetector, ...


## State management
### Trong Flutter, có hai phương pháp chính để quản lý trạng thái trong ứng dụng của bạn: StatefulWidget và StatelessWidget.

1. StatefulWidget:
    + StatefulWidget cho phép bạn tạo các widget có trạng thái, có khả năng thay đổi và tái render khi trạng thái thay đổi.
    + Bạn sẽ cần triển khai hai phương thức chính cho StatefulWidget: createState() và build().
    + Phương thức createState() tạo một đối tượng con của State, chứa trạng thái cụ thể và logic xử lý.
    + Phương thức build() được gọi mỗi khi trạng thái thay đổi và trả về giao diện người dùng tương ứng dựa trên trạng thái hiện tại.
    + Ví dụ về StatefulWidget:
    ```dart
    class MyWidget extends StatefulWidget {
    @override
    _MyWidgetState createState() => _MyWidgetState();
    }

    class _MyWidgetState extends State<MyWidget> {
    int counter = 0;

    void incrementCounter() {
        setState(() {
        counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Column(
        children: [
            Text('Counter: $counter'),
            RaisedButton(
            child: Text('Increment'),
            onPressed: incrementCounter,
            ),
        ],
        );
    }
    }
    ```
2. StatelessWidget:
    + StatelessWidget là một widget không có trạng thái, không thay đổi và không tái render khi trạng thái thay đổi.
    + Bạn chỉ cần triển khai phương thức build() và trả về giao diện người dùng tương ứng.
    + StatelessWidget thích hợp cho các thành phần giao diện người dùng đơn giản không yêu cầu trạng thái riêng.
    + Ví dụ về StatelessWidget:
    ```dart
    class MyWidget extends StatelessWidget {
    final int counter;

    MyWidget(this.counter);

    @override
    Widget build(BuildContext context) {
        return Column(
        children: [
            Text('Counter: $counter'),
            RaisedButton(
            child: Text('Increment'),
            onPressed: () {
                // TODO: Xử lý sự kiện
            },
            ),
        ],
        );
    }
    }
    ```


### Bloc
**Một vài nét cơ bản về Bloc Management trong Flutter:**
1. Bloc: Là một lớp hoặc một thành phần chịu trách nhiệm xử lý logic kinh doanh và cung cấp dữ liệu cho UI. Bloc nhận các sự kiện (events) từ UI và tạo ra các trạng thái (states) tương ứng. Nó cũng có thể nhận dữ liệu từ các nguồn khác nhau như cơ sở dữ liệu, API, hoặc các sự kiện hệ thống.
2. Event: Là các hành động hoặc sự kiện được kích hoạt từ giao diện người dùng hoặc từ các nguồn dữ liệu khác. Event được gửi đến Bloc để xử lý và tạo ra các trạng thái mới.
3. State: Đại diện cho trạng thái hiện tại của ứng dụng. Mỗi khi Bloc nhận được một event và xử lý, nó sẽ tạo ra một trạng thái mới và thông báo cho UI để cập nhật giao diện.

**Để triển khai kiến trúc Bloc trong Flutter, bạn có thể tuân theo các bước sau đây:**
1. Cài đặt Flutter_bloc package: Đầu tiên, bạn cần cài đặt package flutter_bloc trong project Flutter của mình. Bạn có thể thêm flutter_bloc vào phần dependencies trong file pubspec.yaml và chạy lệnh **flutter pub get** để cài đặt package:
```dart
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^7.0.0
```
2. Tạo Bloc: Tạo một lớp **Bloc** để xử lý logic kinh doanh và quản lý trạng thái. Lớp **Bloc** thường được mở rộng từ lớp **Bloc** hoặc **Cubit** trong package **flutter_bloc**. Bạn cần định nghĩa các sự kiện (events) mà Bloc sẽ nhận và các trạng thái mà Bloc sẽ tạo ra. Ví dụ:
```dart
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield state + 1;
    } else if (event is DecrementEvent) {
      yield state - 1;
    }
  }
}

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
```
3. Cung cấp Bloc: Sử dụng BlocProvider để cung cấp Bloc cho cây widget của ứng dụng. Thông thường, bạn sẽ cung cấp Bloc ở cấp cao nhất của ứng dụng để các widget con có thể truy cập Bloc. Ví dụ:

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        // ...
      ),
    );
  }
}
```
4. Sử dụng BlocBuilder hoặc BlocListener: Để cập nhật giao diện người dùng dựa trên các trạng thái của Bloc, bạn có thể sử dụng BlocBuilder hoặc BlocListener. BlocBuilder sẽ xây dựng lại UI khi trạng thái của Bloc thay đổi, trong khi BlocListener sẽ lắng nghe các trạng thái mà không xây dựng lại UI. Ví dụ:
```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                return Text('Count: $count');
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Increment'),
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                ),
                SizedBox(width: 16),
                RaisedButton(
                  child: Text('Decrement'),
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```
Trên đây là các bước cơ bản để triển khai kiến trúc Bloc trong Flutter. Tuy nhiên, cách triển khai cụ thể có thể thay đổi tùy thuộc vào yêu cầu và cấu trúc của ứng dụng.


### Provider
**Một vài nét cơ bản về Provider Management trong Flutter:**
1. Provider: Provider là một lớp hoặc widget được sử dụng để cung cấp dữ liệu trạng thái cho các widget con. Nó đảm bảo rằng các widget con có thể truy cập và sử dụng dữ liệu một cách thuận tiện. Provider cung cấp một cách dễ dàng để quản lý trạng thái ứng dụng và tái sử dụng các thành phần dữ liệu.
2. ChangeNotifier: ChangeNotifier là một lớp trừu tượng trong Flutter, được sử dụng để triển khai mô hình quản lý trạng thái có thể thay đổi. Bằng cách kế thừa ChangeNotifier, bạn có thể tạo ra một lớp trạng thái có khả năng thông báo (notify) về sự thay đổi cho các widget lắng nghe.
3. Consumer: Consumer là một widget được sử dụng để lắng nghe và cập nhật UI dựa trên trạng thái thay đổi. Khi trạng thái của Provider thay đổi, Consumer sẽ tái xây dựng UI của nó và cập nhật lại dữ liệu.
4. MultiProvider: MultiProvider là một widget được sử dụng để cung cấp nhiều Provider cùng một lúc. Điều này cho phép bạn tổ chức và quản lý nhiều Provider trong ứng dụng của mình.
5. ProxyProvider: ProxyProvider là một loại Provider đặc biệt, cho phép bạn tạo và cung cấp dữ liệu trạng thái mới dựa trên dữ liệu từ các Provider khác. Nó cho phép bạn thực hiện các phép tính hoặc xử lý dữ liệu phức tạp trước khi cung cấp cho các widget khác.
6. Provider.of: Provider.of là một phương thức tĩnh được sử dụng để truy cập dữ liệu từ Provider trong các widget. Nó cho phép bạn truy cập dữ liệu trạng thái một cách trực tiếp và nhanh chóng.
7. StatelessWidget và StatefulWidget: Provider có thể được sử dụng cả trong StatelessWidget và StatefulWidget. Bạn có thể sử dụng ChangeNotifierProvider để quản lý trạng thái cho StatelessWidget và ChangeNotifierProxyProvider để quản lý trạng thái cho StatefulWidget.

**Để triển khai kiến trúc Provider trong Flutter, bạn có thể tuân theo các bước sau đây:**
1. Cài đặt package provider: Đầu tiên, bạn cần cài đặt package provider trong project Flutter của mình. Bạn có thể thêm **provider** vào phần dependencies trong file **'pubspec.yaml'** và chạy lệnh **flutter pub** get để cài đặt package:
```dart
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
```
2. Tạo lớp dữ liệu trạng thái: Tạo một lớp để đại diện cho dữ liệu trạng thái bạn muốn chia sẻ trong ứng dụng của mình. Lớp này thường kế thừa từ **ChangeNotifier** hoặc **ChangeNotifierProvider**.
```dart
import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
```
3. Cung cấp Provider: Sử dụng **ChangeNotifierProvider** để cung cấp dữ liệu trạng thái cho cây widget của ứng dụng. Thông thường, bạn sẽ cung cấp Provider ở cấp cao nhất của ứng dụng để các widget con có thể truy cập dữ liệu. Ví dụ:
```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ...
    );
  }
}
```
4. Sử dụng Consumer: Để cập nhật giao diện người dùng dựa trên trạng thái thay đổi, bạn có thể sử dụng **Consumer** widget.  **Consumer** sẽ lắng nghe và tái xây dựng UI của nó khi dữ liệu trạng thái thay đổi. Ví dụ:
```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Counter>(
              builder: (context, counter, _) {
                return Text('Count: ${counter.count}');
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Increment'),
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                ),
                SizedBox(width: 16),
                RaisedButton(
                  child: Text('Decrement'),
                  onPressed: () {
                    context.read<Counter>().decrement();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```
Trên đây là các bước cơ bản để triển khai quản lý Provider trong Flutter. Tuy nhiên, cách triển khai cụ thể có thể thay đổi tùy thuộc vào yêu cầu và cấu trúc của ứng dụng.


### GetX
**Một số nét cơ bản về GetX Management trong Flutter:**
1. State Management: GetX cung cấp một cách tiếp cận khá linh hoạt để quản lý trạng thái. Bạn có thể sử dụng GetX Controller để lưu trữ và quản lý trạng thái của widget hoặc sử dụng GetX Reactive để theo dõi và cập nhật trạng thái tự động khi có thay đổi.
2. Dependency Injection: GetX cung cấp một cơ chế Dependency Injection (DI) tích hợp sẵn. Bạn có thể dễ dàng tạo và quản lý các dependency trong ứng dụng của mình bằng cách sử dụng **'Get.put()'** hoặc **'Get.lazyPut()'**.
3. Routing và Navigation: GetX cung cấp một hệ thống điều hướng mạnh mẽ và linh hoạt. Bạn có thể dễ dàng định nghĩa các route, thực hiện chuyển hướng và truyền dữ liệu giữa các màn hình bằng cách sử dụng GetX Navigator.
4. Reactive Programming: GetX hỗ trợ Reactive Programming, cho phép bạn xử lý sự thay đổi trạng thái và tự động cập nhật UI. Bạn có thể sử dụng các phương thức như Rx, RxList, RxBool, RxInt,... để theo dõi và cập nhật dữ liệu tự động.
5. Internationalization (i18n): GetX hỗ trợ việc quản lý đa ngôn ngữ và localizations trong ứng dụng Flutter. Bạn có thể dễ dàng định nghĩa các ngôn ngữ, thay đổi ngôn ngữ và cập nhật giao diện người dùng dựa trên ngôn ngữ được chọn.
6. Snackbar và Dialogs: GetX cung cấp các lớp đơn giản để hiển thị snackbar và dialogs trong ứng dụng của bạn. Bạn có thể dễ dàng hiển thị các thông báo ngắn gọn hoặc hộp thoại tương tác với người dùng.

**Để triển khai GetX Management trong Flutter, bạn có thể tuân theo các bước sau:**
1. Cài đặt package get: Đầu tiên, bạn cần cài đặt package get trong project Flutter của mình. Bạn có thể thêm get vào phần dependencies trong file **pubspec.yaml** và chạy lệnh **flutter pub get** để cài đặt package:
```dart
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.1
```
2. Tạo và sử dụng GetX Controller: Tạo một lớp GetX Controller để quản lý trạng thái của widget và xử lý logic. Lớp này thường kế thừa từ **GetxController**. Ví dụ:
```dart
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }
}
```
3. Sử dụng GetX Builder hoặc Obx: Sử dụng **GetX Builder** hoặc **Obx** để tái xây dựng UI dựa trên trạng thái thay đổi. **GetX Builder** được sử dụng khi bạn cần truy cập vào cả trạng thái và controller, trong khi **Obx** được sử dụng khi bạn chỉ cần truy cập vào trạng thái. Ví dụ:

 Sử dụng GetX Builder:
```dart
class MyHomePage extends StatelessWidget {
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: GetX<CounterController>(
          builder: (controller) {
            return Text('Count: ${controller.count.value}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _controller.increment,
      ),
    );
  }
}
```

 Sử dụng Obx:
```dart
class MyHomePage extends StatelessWidget {
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Obx(() {
          return Text('Count: ${_controller.count.value}');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _controller.increment,
      ),
    );
  }
}
```
4. Dependency Injection: Bạn có thể sử dụng Get để thực hiện Dependency Injection. Để đăng ký và cung cấp các dependency, bạn có thể sử dụng các phương thức như **Get.put()** hoặc **Get.lazyPut()**. Ví dụ:
```dart
class MyHomePage extends StatelessWidget {
  final UserRepository _userRepository = UserRepository();
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Obx(() {
          return Text('Count: ${_controller.count.value}');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _controller.increment,
      ),
    );
  }
}
```

## Route
Trong Flutter, định tuyến và điều hướng đảm nhận vai trò quan trọng trong việc chuyển đổi giữa các màn hình và quản lý luồng điều hướng trong ứng dụng. Dưới đây là một số khái niệm cơ bản về định tuyến và điều hướng trong Flutter:

1. Route (Định tuyến): Route đại diện cho một màn hình cụ thể trong ứng dụng của bạn. Mỗi màn hình được gắn với một route duy nhất. Flutter cung cấp lớp Route và các lớp con như MaterialPageRoute và CupertinoPageRoute để đại diện cho các route cụ thể.

2. Navigator: Navigator quản lý stack các route và cung cấp các phương thức để điều hướng giữa chúng. Bạn có thể sử dụng Navigator để chuyển đổi giữa các màn hình và quản lý lịch sử điều hướng.

3. Push và Pop: Push là việc thêm một route mới vào stack và chuyển đến màn hình tương ứng. Pop là việc loại bỏ route hiện tại khỏi stack và quay trở lại màn hình trước đó. Bằng cách sử dụng các phương thức Navigator.push() và Navigator.pop(), bạn có thể thực hiện push và pop các route.

4. Named Routes: Named Routes cho phép bạn gán tên cho các route trong ứng dụng. Bằng cách sử dụng tên route, bạn có thể chuyển đến màn hình tương ứng mà không cần tham chiếu trực tiếp đến lớp màn hình. Điều này giúp tăng tính tái sử dụng và dễ dàng quản lý các route trong ứng dụng lớn.


## API
### Để gọi API trong Flutter, bạn có thể sử dụng các thư viện HTTP như **'http'** hoặc **'dio'**.
**Dưới đây là một ví dụ về cách gọi API sử dụng thư viện 'http':**
1. Thêm dependency vào file pubspec.yaml
2. Chạy lệnh **flutter pub get** để cập nhật các dependency mới.
3. Import thư viện **'http'**
4. Gọi API bằng cách sử dụng phương thức **'http.get'** (hoặc **'http.post'**, **'http.put'**, **'http.delete'** tương ứng với các phương thức HTTP khác)
5. Xử lý kết quả từ API:

```dart
import 'package:http/http.dart' as http;

String baseUrl = "https://localhost:8080";

httpGet(url, context) async {
  Map<String, String> headers = {'content-type': 'application/json'};
  var response = await http.get(Uri.parse('$baseUrl$url'), headers: headers);
  if (response.statusCode == 200 &&
      response.headers["content-type"] == 'application/json') {
    try {
      return {
        "headers": response.headers,
        "body": json.decode(utf8.decode(response.bodyBytes))
      };
    } on FormatException catch (e) {
      //bypass
    }
  } else {
    return {
      "headers": response.headers,
      "body": utf8.decode(response.bodyBytes)
    };
  }
}
```
Với thư viện **'dio**, bạn cũng có thể gọi API theo cách tương tự, nhưng với cú pháp và tính năng mở rộng hơn. Để sử dụng **'dio**, bạn cần thêm dependency dio vào file pubspec.yaml và import thư viện **'dio** tương tự như trên.

Lưu ý rằng khi gọi API, bạn cần xử lý các trường hợp xảy ra lỗi, xử lý bất đồng bộ (async/await hoặc Future) và thực hiện các xử lý dữ liệu cần thiết dựa trên kết quả nhận được từ API.


# flutter-toturial
