<div id="top">

<!-- HEADER STYLE: CLASSIC -->
<div align="left">


# MODERN-POS

<em>Transforming Retail with Seamless, Future-Ready Payments</em>

<!-- BADGES -->
<img src="https://img.shields.io/github/last-commit/LyNNxMooon/Modern-POS?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
<img src="https://img.shields.io/github/languages/top/LyNNxMooon/Modern-POS?style=flat&color=0080ff" alt="repo-top-language">
<img src="https://img.shields.io/github/languages/count/LyNNxMooon/Modern-POS?style=flat&color=0080ff" alt="repo-language-count">

<em>Built with the tools and technologies:</em>

<img src="https://img.shields.io/badge/JSON-000000.svg?style=flat&logo=JSON&logoColor=white" alt="JSON">
<img src="https://img.shields.io/badge/JetBrains-000000.svg?style=flat&logo=JetBrains&logoColor=white" alt="JetBrains">
<img src="https://img.shields.io/badge/Markdown-000000.svg?style=flat&logo=Markdown&logoColor=white" alt="Markdown">
<img src="https://img.shields.io/badge/Swift-F05138.svg?style=flat&logo=Swift&logoColor=white" alt="Swift">
<img src="https://img.shields.io/badge/Org-77AA99.svg?style=flat&logo=Org&logoColor=white" alt="Org">
<img src="https://img.shields.io/badge/Gradle-02303A.svg?style=flat&logo=Gradle&logoColor=white" alt="Gradle">
<img src="https://img.shields.io/badge/Dart-0175C2.svg?style=flat&logo=Dart&logoColor=white" alt="Dart">
<br>
<img src="https://img.shields.io/badge/C++-00599C.svg?style=flat&logo=C++&logoColor=white" alt="C++">
<img src="https://img.shields.io/badge/XML-005FAD.svg?style=flat&logo=XML&logoColor=white" alt="XML">
<img src="https://img.shields.io/badge/Flutter-02569B.svg?style=flat&logo=Flutter&logoColor=white" alt="Flutter">
<img src="https://img.shields.io/badge/CMake-064F8C.svg?style=flat&logo=CMake&logoColor=white" alt="CMake">
<img src="https://img.shields.io/badge/Kotlin-7F52FF.svg?style=flat&logo=Kotlin&logoColor=white" alt="Kotlin">
<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat&logo=YAML&logoColor=white" alt="YAML">

</div>
<br>

---

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Testing](#testing)
- [Features](#features)
- [Project Structure](#project-structure)
    - [Project Index](#project-index)

---

## Overview

Modern-POS is a versatile, open-source point-of-sale solution built with Flutter, enabling seamless retail management across multiple platforms. Its modular architecture promotes maintainability and scalability, making it ideal for developers aiming to create robust retail apps.

**Why Modern-POS?**

This project simplifies the development of scalable POS systems with features including:

- 🎯 **🧩 Modular Design:** Clear separation of concerns for UI, network, and GetX state management.
- 🚀 **🌐 Cross-Platform Support:** Compatible with iOS, Android, Web, Windows, macOS, and Linux.
- 🔒 **🗃️ Local Data Storage:** Secure user data persistence with Hive.
- ⚙️ **🔗 Extensive API Integration:** Seamless communication with backend services.
- 🎨 **🖌️ Custom UI Components:** Consistent and customizable user interface elements.
- 🛠️ **🧰 Developer-Friendly:** Built-in static analysis, configuration, and build scripts for efficient workflows.

---

## Features

|      | Component       | Details                                                                                     |
| :--- | :-------------- | :------------------------------------------------------------------------------------------ |
| ⚙️  | **Architecture**  | <ul><li>Multi-platform support via Flutter (iOS, Android, Windows, Linux)</li><li>Modular codebase with platform-specific directories</li></ul> |
| 🔩 | **Code Quality**  | <ul><li>Consistent CMake build configurations for native components</li><li>Use of modern C++ standards</li></ul> |
| 📄 | **Documentation** | <ul><li>Basic README with project overview</li><li>Includes build instructions for each platform</li></ul> |
| 🔌 | **Integrations**  | <ul><li>Flutter plugin system for UI and platform channels, GetX State Management</li><li>CI/CD tools like `pub`, `cmake`, `gradle` integrated for build automation</li></ul> |
| 🧩 | **Modularity**    | <ul><li>Separation of platform-specific code (e.g., `windows/`, `linux/`, `android/` directories)</li><li>Use of plugin architecture for extensibility</li></ul> |
| 🧪 | **Testing**       | <ul><li>Limited evidence of dedicated testing frameworks; potential for unit tests in C++ and Dart</li></ul> |
| ⚡️  | **Performance**   | <ul><li>Native C++ components for performance-critical tasks</li><li>Use of Flutter for smooth UI rendering</li></ul> |
| 🛡️ | **Security**      | <ul><li>Standard entitlements and manifest files for platform security</li><li>Code signing and entitlements configured for iOS/macOS</li></ul> |
| 📦 | **Dependencies**  | <ul><li>Package managers: `pub` (Dart/Flutter), `cmake`, `gradle` for Android</li><li>External libraries include Flutter SDK, Kotlin, Swift, CMake modules</li></ul> |

---

## Project Structure

```sh
└── Modern-POS/
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   ├── build.gradle
    │   ├── gradle
    │   ├── gradle.properties
    │   └── settings.gradle
    ├── assets
    │   ├── animations
    │   ├── fonts
    │   └── images
    ├── ios
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── lib
    │   ├── constants
    │   ├── controller
    │   ├── data
    │   ├── main.dart
    │   ├── network
    │   ├── persistent
    │   ├── screens
    │   ├── utils
    │   └── widgets
    ├── linux
    │   ├── .gitignore
    │   ├── CMakeLists.txt
    │   ├── flutter
    │   ├── main.cc
    │   ├── my_application.cc
    │   └── my_application.h
    ├── macos
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── pubspec.lock
    ├── pubspec.yaml
    ├── test
    │   └── widget_test.dart
    ├── web
    │   ├── favicon.png
    │   ├── icons
    │   ├── index.html
    │   └── manifest.json
    └── windows
        ├── .gitignore
        ├── CMakeLists.txt
        ├── flutter
        └── runner
```

---

### Project Index

<details open>
	<summary><b><code>MODERN-POS/</code></b></summary>
	<!-- __root__ Submodule -->
	<details>
		<summary><b>__root__</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ __root__</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/pubspec.yaml'>pubspec.yaml</a></b></td>
					<td style='padding: 8px;'>- Defines the core configuration and dependencies for the modern POS Flutter application, establishing project metadata, environment constraints, UI assets, and essential packages<br>- It orchestrates the setup necessary for building, testing, and deploying the app, ensuring consistent environment and resource management across the entire codebase.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/analysis_options.yaml'>analysis_options.yaml</a></b></td>
					<td style='padding: 8px;'>- Defines static analysis configurations to enforce coding standards and best practices across the Flutter project<br>- By specifying lint rules and analysis options, it ensures code quality, consistency, and maintainability throughout the entire codebase, facilitating early detection of issues and promoting a robust development workflow.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/README.md'>README.md</a></b></td>
					<td style='padding: 8px;'>- Establishes the foundational structure for a Flutter-based point-of-sale application, enabling rapid development of a mobile POS system<br>- Facilitates core functionalities such as user interface, transaction processing, and device integration, serving as the central entry point for building a scalable and user-friendly retail solution within the overall app architecture.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- test Submodule -->
	<details>
		<summary><b>test</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ test</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/test/widget_test.dart'>widget_test.dart</a></b></td>
					<td style='padding: 8px;'>- Provides a fundamental widget test verifying the core functionality of the Flutter application by simulating user interactions and ensuring the counter updates correctly<br>- It supports the overall testing strategy within the project, ensuring UI components behave as expected and maintaining app stability during development<br>- This test contributes to the quality assurance process across the codebase architecture.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- ios Submodule -->
	<details>
		<summary><b>ios</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ ios</b></code>
			<!-- Runner.xcodeproj Submodule -->
			<details>
				<summary><b>Runner.xcodeproj</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner.xcodeproj</b></code>
					<!-- project.xcworkspace Submodule -->
					<details>
						<summary><b>project.xcworkspace</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.xcodeproj.project.xcworkspace</b></code>
							<!-- xcshareddata Submodule -->
							<details>
								<summary><b>xcshareddata</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.xcodeproj.project.xcworkspace.xcshareddata</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
											<td style='padding: 8px;'>- Configure workspace settings to disable preview features within the iOS project environment, ensuring a streamlined development experience<br>- This setting helps maintain focus on core development tasks by preventing unnecessary preview generation, aligning with the overall architectures goal of optimizing build efficiency and developer productivity in the Flutter-based mobile application.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- Runner.xcworkspace Submodule -->
			<details>
				<summary><b>Runner.xcworkspace</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner.xcworkspace</b></code>
					<!-- xcshareddata Submodule -->
					<details>
						<summary><b>xcshareddata</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.xcworkspace.xcshareddata</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
									<td style='padding: 8px;'>- Configures workspace settings to disable live previews within the iOS development environment, ensuring a streamlined and distraction-free development experience<br>- It aligns the workspace with project preferences, contributing to consistent behavior across team members and maintaining focus on core development tasks without unnecessary preview updates.</td>
								</tr>
							</table>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- Runner Submodule -->
			<details>
				<summary><b>Runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.Runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
							<td style='padding: 8px;'>- Facilitates the integration of Flutter with the iOS platform by initializing the application and registering necessary plugins during startup<br>- Ensures seamless communication between native iOS components and Flutter modules, serving as the primary entry point for app launch and plugin setup within the iOS architecture of the project.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner/Runner-Bridging-Header.h'>Runner-Bridging-Header.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates seamless integration between Flutter and native iOS components by bridging generated plugin registrations<br>- Ensures that all Flutter plugins are properly linked within the iOS environment, supporting smooth communication and functionality across the app’s architecture<br>- This setup is essential for maintaining consistent plugin behavior and stability within the overall Flutter-based iOS application.</td>
						</tr>
					</table>
					<!-- Assets.xcassets Submodule -->
					<details>
						<summary><b>Assets.xcassets</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ ios.Runner.Assets.xcassets</b></code>
							<!-- AppIcon.appiconset Submodule -->
							<details>
								<summary><b>AppIcon.appiconset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.Assets.xcassets.AppIcon.appiconset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the app icon assets for iOS devices, specifying various sizes and resolutions to ensure consistent branding across iPhone, iPad, and marketing platforms<br>- Facilitates seamless visual presentation by providing appropriately scaled images tailored to different device idioms and display densities within the overall app architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- LaunchImage.imageset Submodule -->
							<details>
								<summary><b>LaunchImage.imageset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ ios.Runner.Assets.xcassets.LaunchImage.imageset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the launch screen assets for the iOS application, ensuring a consistent and visually appealing startup experience across various device sizes and resolutions<br>- Integrates multiple image scales to optimize display quality, contributing to the overall user interface architecture by providing a seamless initial impression during app launch.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md'>README.md</a></b></td>
											<td style='padding: 8px;'>- Defines customizable launch screen assets for the iOS application, enabling visual branding and user experience personalization during app startup<br>- Integrates with the Flutter projects Xcode workspace to facilitate easy replacement of launch images, ensuring a seamless and branded initial impression within the overall app architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- RunnerTests Submodule -->
			<details>
				<summary><b>RunnerTests</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ ios.RunnerTests</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/ios/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
							<td style='padding: 8px;'>- Provides a foundational test structure for the iOS Runner application within the Flutter project, enabling validation of core functionalities<br>- Serves as a starting point for implementing unit tests to ensure stability and correctness of the app’s iOS-specific components, supporting overall code quality and reliability in the project’s architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- lib Submodule -->
	<details>
		<summary><b>lib</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ lib</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/main.dart'>main.dart</a></b></td>
					<td style='padding: 8px;'>- Initializes the application environment, setting device orientation and establishing local data storage with Hive<br>- Launches the core app structure, integrating state management via GetX, and directs users to the splash screen for onboarding or authentication<br>- Serves as the entry point that orchestrates startup procedures and prepares the app for user interaction within the overall architecture.</td>
				</tr>
			</table>
			<!-- persistent Submodule -->
			<details>
				<summary><b>persistent</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.persistent</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/persistent/hive_constant.dart'>hive_constant.dart</a></b></td>
							<td style='padding: 8px;'>- Defines constant keys and box identifiers for securely storing user email, phone, and password data within the Hive local storage system<br>- These constants facilitate consistent data access and management across the application, supporting user authentication and profile persistence within the overall architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/persistent/hive_dao.dart'>hive_dao.dart</a></b></td>
							<td style='padding: 8px;'>- Provides an interface for persistent storage of user credentials within the applications architecture, utilizing Hive as a local database<br>- Facilitates secure saving and retrieval of user email or phone number and password, supporting user authentication workflows and maintaining data consistency across sessions<br>- Integrates seamlessly with the overall data management layer of the project.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- constants Submodule -->
			<details>
				<summary><b>constants</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.constants</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/constants/images.dart'>images.dart</a></b></td>
							<td style='padding: 8px;'>- Defines constant image URLs used throughout the application, including a placeholder image and a prefix for profile images<br>- These constants facilitate consistent image referencing and loading across the app, supporting the overall architecture by centralizing image URL management for improved maintainability and uniform user interface presentation.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/constants/text.dart'>text.dart</a></b></td>
							<td style='padding: 8px;'>- Defines consistent text styles for the applications user interface, enhancing visual coherence and readability across various screens<br>- By centralizing style constants, it supports maintainability and uniformity within the overall architecture, ensuring that textual elements adhere to the design system and contribute to a polished, professional user experience.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/constants/colors.dart'>colors.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a centralized color palette to ensure consistent visual styling across the application<br>- Facilitates easy updates to color schemes and supports maintainability by providing a single source of truth for primary, secondary, and status-related colors, thereby enhancing the overall design coherence within the app’s architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- widgets Submodule -->
			<details>
				<summary><b>widgets</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.widgets</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/error_widget.dart'>error_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable error dialog component for Flutter applications, enabling consistent and user-friendly display of error messages<br>- It centralizes error handling UI, allowing developers to easily present alerts with customizable messages and actions, thereby enhancing the overall user experience and maintaining visual consistency across the app.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/loading_state_widget.dart'>loading_state_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a widget to manage and display different UI states based on loading status within the application<br>- It orchestrates transitions between initial, loading, error, and success states, ensuring a consistent user experience during asynchronous operations<br>- This component integrates seamlessly into the app’s architecture, facilitating clear state representation and user feedback during data fetching or processing tasks.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/confirmation_widget.dart'>confirmation_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable confirmation dialog component within the Flutter application, enabling consistent user prompts for critical actions<br>- It displays an error icon, message, and action buttons, facilitating user acknowledgment and decision-making<br>- Integrates seamlessly into the overall UI architecture to enhance user experience and ensure confirmation flows are standardized across the app.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/password_permission_widget.dart'>password_permission_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Implements a password verification dialog within the applications user interface, enabling secure access control for sensitive actions<br>- It prompts users for their password, validates it against stored credentials, and executes a specified function upon successful authentication<br>- This component integrates seamlessly into the overall architecture to enforce permission checks and enhance security workflows.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/load_fail_widget.dart'>load_fail_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable widget to display a load failure state within the application, visually indicating an error with animation and offering a retry option<br>- Integrates seamlessly into the overall architecture to enhance user experience during data fetch failures, ensuring consistent error handling and recovery prompts across different parts of the app.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/textfield.dart'>textfield.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a customizable text input widget for user data entry within the applications UI<br>- Facilitates consistent styling and behavior for form fields across the project, supporting features like obscured text for passwords and optional icons<br>- Enhances user experience by providing a reusable component aligned with the app’s visual theme, contributing to a cohesive and maintainable codebase architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/success_widget.dart'>success_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable success notification widget within the Flutter application, displaying confirmation messages with a visual checkmark and an acknowledgment button<br>- It enhances user experience by offering consistent, visually appealing feedback for successful actions, integrating seamlessly into the overall app architecture to maintain uniformity across different screens and workflows.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/profile_image_widget.dart'>profile_image_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable widget for displaying user profile images with smooth loading and error handling<br>- Integrates cached network image fetching to optimize performance and ensures a consistent circular appearance<br>- Enhances the overall user interface by seamlessly rendering profile pictures within the apps architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/buttons.dart'>buttons.dart</a></b></td>
							<td style='padding: 8px;'>- Defines a customizable button widget for the applications user interface, enabling consistent styling and interaction across various screens<br>- It streamlines user engagement by providing a reusable component that handles tap gestures and visual presentation, supporting the overall architectures focus on modular, maintainable UI elements within the Flutter-based POS system.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/widgets/loading_widget.dart'>loading_widget.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a reusable loading indicator component that visually communicates ongoing processes within the application<br>- Integrates a customizable animated spinner aligned with the app’s color scheme, enhancing user experience during data fetching or processing states across the project<br>- Serves as a consistent UI element to indicate activity in various parts of the codebase.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- network Submodule -->
			<details>
				<summary><b>network</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.network</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/api_constant.dart'>api_constant.dart</a></b></td>
							<td style='padding: 8px;'>- Defines API endpoints and constants for seamless communication with the backend services, facilitating user authentication, profile management, and product data retrieval within the application architecture<br>- Serves as a centralized reference to ensure consistent API interactions across the codebase, supporting efficient integration and maintenance of network-related functionalities.</td>
						</tr>
					</table>
					<!-- response Submodule -->
					<details>
						<summary><b>response</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ lib.network.response</b></code>
							<!-- profile_image_upload_response Submodule -->
							<details>
								<summary><b>profile_image_upload_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.profile_image_upload_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/profile_image_upload_response/profile_image_upload_response.dart'>profile_image_upload_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling server responses related to profile image uploads, encapsulating success status, message, and user data<br>- Facilitates seamless deserialization of JSON responses into usable objects within the application, supporting the overall architecture of user profile management and ensuring consistent data handling across the codebase.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/profile_image_upload_response/profile_image_upload_response.g.dart'>profile_image_upload_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the data structure for handling responses from profile image upload operations, encapsulating success status, message, and user data<br>- Integrates with the overall network response architecture to facilitate seamless parsing and serialization of server responses related to profile image updates, ensuring consistent data handling across the application.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- category_response Submodule -->
							<details>
								<summary><b>category_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.category_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/category_response/category_response.dart'>category_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling category-related API responses within the network layer, encapsulating success status, message, and a list of category data objects<br>- Facilitates seamless deserialization of JSON data into usable domain models, supporting the overall architectures goal of efficient data retrieval and presentation in the application.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/category_response/category_response.g.dart'>category_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for parsing and serializing category response data within the network layer, facilitating seamless conversion between JSON payloads and in-memory data models<br>- Supports consistent handling of API responses related to categories, ensuring reliable data flow and integration across the applications architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- password_update_response Submodule -->
							<details>
								<summary><b>password_update_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.password_update_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/password_update_response/password_update_response.g.dart'>password_update_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the data structure for handling responses to password update requests within the network layer<br>- Facilitates serialization and deserialization of success status and message, ensuring consistent communication of password update outcomes across the applications architecture<br>- Supports seamless integration with API responses, contributing to reliable user account management workflows.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/password_update_response/password_update_response.dart'>password_update_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling server responses related to password updates, encapsulating success status and message details<br>- Integrates seamlessly within the network response layer, enabling consistent parsing and interpretation of password update outcomes across the application<br>- Supports reliable communication flow and user feedback during password management processes within the overall architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- register_response Submodule -->
							<details>
								<summary><b>register_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.register_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/register_response/register_response.dart'>register_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling server responses to user registration requests, encapsulating success status, authentication token, and additional data<br>- Facilitates seamless deserialization of registration response data within the network layer, supporting consistent and reliable communication between the client and backend services in the overall architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/register_response/register_response.g.dart'>register_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines serialization logic for handling registration responses within the network layer, enabling seamless conversion between JSON data and application-specific objects<br>- Facilitates consistent interpretation of server responses related to user registration, ensuring reliable data exchange and integration with the overall architecture<br>- Supports the broader systems goal of managing user authentication workflows efficiently.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- login_response Submodule -->
							<details>
								<summary><b>login_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.login_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/login_response/login_response.dart'>login_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling login API responses, encapsulating success status, authentication token, and additional data<br>- Facilitates seamless deserialization of server responses into usable objects, supporting authentication workflows within the applications network layer<br>- Ensures consistent and efficient processing of login results across the codebase.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/login_response/login_response.g.dart'>login_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the serialization logic for login response data, enabling seamless conversion between JSON format and internal data structures<br>- Facilitates efficient handling of authentication responses within the network layer, ensuring consistent data parsing and serialization across the applications architecture<br>- Supports reliable communication with backend services during user login processes.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- cred_update_response Submodule -->
							<details>
								<summary><b>cred_update_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.cred_update_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/cred_update_response/cred_update_response.dart'>cred_update_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling responses to user credential updates within the network layer, encapsulating success status, message, and user data<br>- Facilitates seamless deserialization of server responses into application-specific objects, supporting reliable user credential management and synchronization across the app’s architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/cred_update_response/cred_update_response.g.dart'>cred_update_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the serialization logic for handling responses to credential update requests within the network layer<br>- Facilitates seamless conversion between JSON data and internal data structures, enabling reliable communication of success status, messages, and user data updates in the overall architecture<br>- Ensures consistent data exchange and integration with backend services during credential management workflows.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- error_response Submodule -->
							<details>
								<summary><b>error_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.error_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/error_response/error_response.dart'>error_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines a standardized structure for error responses within the network communication layer, enabling consistent handling and serialization of error information across the application<br>- Facilitates clear error messaging and debugging by encapsulating error details, supporting seamless integration with API responses and enhancing overall robustness of the system’s error management architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/error_response/profile_image_error_response.g.dart'>profile_image_error_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling error responses related to profile image operations within the network layer<br>- Facilitates consistent serialization and deserialization of error data, enabling seamless communication of profile image errors across client and server components<br>- Integrates into the broader error management system, ensuring reliable error reporting and debugging throughout the application.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/error_response/error_response.g.dart'>error_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for error responses within the network communication layer, enabling consistent serialization and deserialization of error data<br>- Facilitates clear and standardized handling of server error messages across the application, ensuring reliable error reporting and debugging in the overall architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/error_response/profile_image_error_response.dart'>profile_image_error_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines a structured response model for profile image-related errors within the network layer, facilitating consistent error handling and serialization across the application<br>- Integrates seamlessly into the broader error management architecture, ensuring clear communication of profile image issues during API interactions and supporting robust client-side error processing.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- item_detail_response Submodule -->
							<details>
								<summary><b>item_detail_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.item_detail_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/item_detail_response/item_detail_response.g.dart'>item_detail_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the serialization logic for item detail responses within the network layer, enabling seamless conversion between JSON data and internal data models<br>- Facilitates consistent data handling for item detail retrieval, supporting the overall architectures focus on reliable API communication and data integrity across the application.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/item_detail_response/item_detail_response.dart'>item_detail_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling item detail responses within the network layer, encapsulating success status, message, and detailed item data<br>- Facilitates seamless deserialization of JSON responses from the backend, ensuring consistent data transfer and integration with the applications item management features<br>- Supports reliable communication between the server and client components in the overall architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- item_response Submodule -->
							<details>
								<summary><b>item_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.item_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/item_response/item_response.dart'>item_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling server responses related to item data within the application<br>- Facilitates parsing and serialization of JSON data to manage item collections efficiently, supporting features like pagination and success status tracking<br>- Integrates seamlessly into the overall network architecture, enabling consistent data exchange and state management for item-related functionalities.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/item_response/item_response.g.dart'>item_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling item list responses within the network layer, encapsulating success status, total item count, load-more capability, and a list of item data objects<br>- Facilitates seamless serialization and deserialization of server responses, ensuring consistent data exchange and integration with the applications data models.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- profile_response Submodule -->
							<details>
								<summary><b>profile_response</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ lib.network.response.profile_response</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/profile_response/profile_response.g.dart'>profile_response.g.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the serialization logic for handling profile response data within the network layer, enabling seamless conversion between JSON payloads and internal data models<br>- Facilitates consistent data parsing and formatting for user profile information, supporting reliable communication between the client and server in the overall architecture.</td>
										</tr>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/response/profile_response/profile_response.dart'>profile_response.dart</a></b></td>
											<td style='padding: 8px;'>- Defines the structure for handling user profile responses within the network layer, encapsulating success status, message, and user data<br>- Facilitates seamless deserialization of JSON data into application-specific user objects, supporting reliable communication between the backend API and the app’s user profile features<br>- Integrates into the overall architecture by standardizing profile data exchange and ensuring data consistency across the system.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
					<!-- data_agent Submodule -->
					<details>
						<summary><b>data_agent</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ lib.network.data_agent</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/data_agent/modern_pos_data_agent_impl.dart'>modern_pos_data_agent_impl.dart</a></b></td>
									<td style='padding: 8px;'>- Implements the data layer for the Modern POS application by managing user authentication, profile updates, and product data retrieval through API interactions<br>- Facilitates seamless communication between the apps UI and backend services, ensuring secure data handling, error management, and synchronization of user and product information within the overall architecture.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/data_agent/modern_pos_data_agent.dart'>modern_pos_data_agent.dart</a></b></td>
									<td style='padding: 8px;'>- Defines the core interface for network interactions within the Modern POS system, facilitating user authentication, profile management, and product data retrieval<br>- It orchestrates communication between the app and backend services, ensuring seamless access to user accounts, categories, and items, thereby supporting the applications overall architecture for data flow and user experience.</td>
								</tr>
							</table>
						</blockquote>
					</details>
					<!-- api Submodule -->
					<details>
						<summary><b>api</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ lib.network.api</b></code>
							<table style='width: 100%; border-collapse: collapse;'>
							<thead>
								<tr style='background-color: #f8f9fa;'>
									<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
									<th style='text-align: left; padding: 8px;'>Summary</th>
								</tr>
							</thead>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/api/modern_pos_api.g.dart'>modern_pos_api.g.dart</a></b></td>
									<td style='padding: 8px;'>- Defines the API client for modern POS operations, facilitating communication with the backend services<br>- It manages user registration, authentication, profile management, item retrieval, and category data, integrating seamlessly into the overall architecture to enable secure, efficient data exchange and user interactions within the application.</td>
								</tr>
								<tr style='border-bottom: 1px solid #eee;'>
									<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/network/api/modern_pos_api.dart'>modern_pos_api.dart</a></b></td>
									<td style='padding: 8px;'>- Defines the core API interface for the Modern POS system, facilitating communication between the app and backend services<br>- It manages user authentication, profile updates, item retrieval, category listing, and image uploads, ensuring seamless data exchange and synchronization within the applications architecture<br>- This abstraction centralizes network interactions, supporting the overall modular and scalable design.</td>
								</tr>
							</table>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- utils Submodule -->
			<details>
				<summary><b>utils</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.utils</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/utils/enum.dart'>enum.dart</a></b></td>
							<td style='padding: 8px;'>- Defines the LoadingState enumeration to represent various stages of data processing within the application<br>- It standardizes status indicators for initialization, ongoing loading, successful completion, and error states, facilitating consistent state management across the codebase and enhancing the clarity of asynchronous operations.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/utils/file_picker.dart'>file_picker.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates image selection within the application by providing an abstraction for capturing photos via camera or selecting existing images from the gallery<br>- Integrates seamlessly into the broader architecture to support user-generated content workflows, enabling flexible media input handling while maintaining a clean separation of concerns in the codebase.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- screens Submodule -->
			<details>
				<summary><b>screens</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.screens</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/order.dart'>order.dart</a></b></td>
							<td style='padding: 8px;'>- Displays the Order History page within the application, providing users with a centralized view of past transactions<br>- Serves as a foundational component for tracking and reviewing order data, integrating seamlessly into the overall app architecture to enhance user experience and facilitate order management.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/register.dart'>register.dart</a></b></td>
							<td style='padding: 8px;'>- Implements the user registration interface within the overall POS application, enabling new users to input personal details and create an account<br>- Facilitates user onboarding by capturing essential information, managing form state, and triggering registration logic, thereby supporting seamless user account creation and integration into the broader system architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/main_menu.dart'>main_menu.dart</a></b></td>
							<td style='padding: 8px;'>- Provides the main menu interface for a point-of-sale application, enabling users to browse product categories and view items in a grid layout<br>- Facilitates product search and category selection, supporting intuitive navigation and quick access to product details, thereby enhancing the overall user experience within the apps architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/home.dart'>home.dart</a></b></td>
							<td style='padding: 8px;'>- Provides the main navigation structure for the application, enabling seamless switching between core sections such as the main menu, cart, order history, and user profile<br>- Integrates a curved bottom navigation bar with animated transitions, dynamically loading relevant screens based on user interaction, and ensures profile data is fetched when accessing the profile section.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/change_password.dart'>change_password.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates user password updates within the application by providing a secure interface for entering current and new passwords<br>- Integrates with profile management to handle password change requests, ensuring proper state management and user feedback during the process<br>- Serves as a critical component for maintaining account security and user authentication workflows in the overall app architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/cart.dart'>cart.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a user interface for displaying the shopping cart within the application<br>- It serves as the main entry point for users to view their selected items, offering a foundational layout that can be expanded with detailed cart contents and interactions<br>- This component integrates into the overall app architecture to facilitate seamless shopping experience navigation.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/profile_update.dart'>profile_update.dart</a></b></td>
							<td style='padding: 8px;'>- Facilitates user profile updates by providing an intuitive interface for editing personal information and profile images<br>- Integrates with the profile controller to handle image selection, uploading, and credential updates, ensuring seamless synchronization with backend data<br>- Serves as a key component within the app’s user account management architecture, enabling users to maintain current and accurate profile details.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/login.dart'>login.dart</a></b></td>
							<td style='padding: 8px;'>- Implements the user login interface within the overall application architecture, facilitating user authentication through email or phone and password inputs<br>- Integrates state management and loading feedback to ensure a smooth login experience, while providing navigation to account registration<br>- Serves as the primary entry point for user access, connecting UI components with backend authentication processes.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/auth.dart'>auth.dart</a></b></td>
							<td style='padding: 8px;'>- Provides an entry point for user authentication flow by directing users to either the login or home screen based on their authentication status<br>- Integrates with the login controller to determine if a user is already authenticated, ensuring seamless navigation within the app’s architecture<br>- Serves as a central decision-maker for user access, maintaining a smooth user experience.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/profile.dart'>profile.dart</a></b></td>
							<td style='padding: 8px;'>- Provides a user interface for viewing and managing personal profile information within the application<br>- Facilitates profile display, updates, password changes, account deletion, and logout functionalities, integrating with the apps state management and navigation system to ensure a seamless user experience<br>- Serves as a central component for user account interactions in the overall app architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/screens/splash.dart'>splash.dart</a></b></td>
							<td style='padding: 8px;'>- Provides an animated splash screen that introduces the Modern Cashier POS application, displaying engaging visuals and branding<br>- Initiates user login status verification and seamlessly transitions to the authentication interface, serving as the entry point that enhances user experience and sets the stage for subsequent app interactions within the overall architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- controller Submodule -->
			<details>
				<summary><b>controller</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ lib.controller</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/register_controller.dart'>register_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Handles user registration by orchestrating the registration process, managing loading states, and navigating to the home screen upon success<br>- Integrates with backend services to create new user accounts, updates shared state with authentication tokens, and displays error dialogs for registration failures, thereby facilitating seamless onboarding within the apps architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/login_controller.dart'>login_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Manages user authentication by handling login requests, updating user state, and navigating to the home screen upon success<br>- Integrates with persistent storage to retain user credentials and verifies existing login sessions<br>- Serves as a central controller for login-related workflows, ensuring seamless user access and session management within the app’s architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/base_controller.dart'>base_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Establishes a foundational controller for managing loading states and error messages across the application, facilitating consistent state handling and user feedback within the overall architecture<br>- Serves as a base class for other controllers, promoting code reuse and streamlined state management in the project’s modular structure.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/profile_controller.dart'>profile_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Manages user profile operations within the application, including fetching and updating user details, changing passwords, uploading profile images, and handling user logout<br>- Integrates with backend services and local storage to ensure data consistency, while providing user feedback through dialogs<br>- Serves as a central controller for user profile interactions, supporting seamless profile management in the app architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/main_menu_controller.dart'>main_menu_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Provides core logic for managing main menu interactions by fetching and handling categories and items, including detailed item views<br>- Facilitates seamless data retrieval, state management, and error handling within the app’s architecture, supporting dynamic content display and user navigation in a POS system<br>- Ensures responsive updates and robust error feedback across the main menu interface.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/lib/controller/value_holder_controller.dart'>value_holder_controller.dart</a></b></td>
							<td style='padding: 8px;'>- Manages user authentication state within the application by holding and observing the user token<br>- Integrates with the overall architecture to facilitate reactive updates and seamless user session handling, contributing to the applications modular and maintainable structure<br>- This controller ensures that user authentication status is efficiently tracked and accessible across different components.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- web Submodule -->
	<details>
		<summary><b>web</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ web</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/web/manifest.json'>manifest.json</a></b></td>
					<td style='padding: 8px;'>- Defines the web applications metadata and visual identity for the Flutter-based POS system, ensuring proper installation, branding, and user experience across devices<br>- Serves as a foundational configuration that integrates the web app into the broader architecture, facilitating seamless launch and consistent appearance within the overall project ecosystem.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/web/index.html'>index.html</a></b></td>
					<td style='padding: 8px;'>- Defines the web applications entry point for a Flutter-based POS system, orchestrating the loading and initialization of the Flutter engine within a browser environment<br>- Facilitates seamless startup of the client-side interface, ensuring the app is correctly configured for deployment across various hosting paths and devices<br>- Serves as the foundational HTML scaffold that integrates Flutters web runtime.</td>
				</tr>
			</table>
		</blockquote>
	</details>
	<!-- windows Submodule -->
	<details>
		<summary><b>windows</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ windows</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/CMakeLists.txt'>CMakeLists.txt</a></b></td>
					<td style='padding: 8px;'>- Defines the build configuration and installation process for the Windows platform within a cross-platform application<br>- It orchestrates compilation settings, manages dependencies, and ensures proper placement of runtime assets, including Flutter components and native libraries, facilitating seamless deployment and execution of the modern POS application on Windows systems.</td>
				</tr>
			</table>
			<!-- runner Submodule -->
			<details>
				<summary><b>runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ windows.runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/Runner.rc'>Runner.rc</a></b></td>
							<td style='padding: 8px;'>- Defines application metadata and visual resources for the Windows build of the modern POS system, ensuring consistent branding, versioning, and system integration<br>- Facilitates proper identification and presentation of the application within the Windows environment, supporting seamless user experience and system compatibility.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/flutter_window.cpp'>flutter_window.cpp</a></b></td>
							<td style='padding: 8px;'>- Facilitates the creation and management of a native Windows window integrated with Flutter, enabling seamless rendering of Flutter content within a Windows environment<br>- Handles window lifecycle events, plugin registration, and message processing to ensure smooth operation and interaction between Windows and Flutter components within the applications architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/flutter_window.h'>flutter_window.h</a></b></td>
							<td style='padding: 8px;'>- Defines a Flutter window within a Windows environment, serving as a container that hosts and manages a Flutter view<br>- Facilitates integration of Flutter UI components into native Windows applications by initializing, displaying, and handling the lifecycle of the embedded Flutter engine and its associated view<br>- Acts as a bridge between Windows native code and Flutter rendering, ensuring seamless UI rendering and interaction.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build configuration for the Windows runner application, orchestrating compilation, linking, and dependency management<br>- It ensures the executable integrates Flutter components, applies standard settings, and incorporates versioning and platform-specific macros, facilitating a seamless build process within the overall project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/win32_window.h'>win32_window.h</a></b></td>
							<td style='padding: 8px;'>- Provides a high DPI-aware Win32 window abstraction to facilitate custom rendering and input handling within the application<br>- It manages window creation, display, destruction, and message routing, serving as a foundational component for building platform-specific UI elements<br>- This class enables seamless integration of Windows OS window features while supporting extensibility for specialized behavior.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/main.cpp'>main.cpp</a></b></td>
							<td style='padding: 8px;'>- Initialize and launch a Windows desktop application built with Flutter, establishing the main window, setting up the Dart runtime, and managing the application lifecycle<br>- It integrates Flutters rendering engine within a native Windows environment, enabling a seamless user interface experience while handling system messages and application termination<br>- This core component facilitates the execution of Flutter-based UI within the Windows platform.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/resource.h'>resource.h</a></b></td>
							<td style='padding: 8px;'>- Defines visual resources for the Windows runner, including application icons and UI elements, integrating with the project’s overall architecture<br>- Facilitates consistent resource management and visual branding across the Windows environment, supporting seamless user interface rendering within the larger codebase<br>- Ensures resource identifiers are organized and accessible for the build process and runtime execution.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/utils.cpp'>utils.cpp</a></b></td>
							<td style='padding: 8px;'>- Facilitates Windows-specific runtime support by creating and attaching a console for output, and manages command-line argument parsing and encoding conversions<br>- Ensures seamless integration between the Flutter engine and Windows environment, enabling proper handling of user inputs and output streams within the applications architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/runner.exe.manifest'>runner.exe.manifest</a></b></td>
							<td style='padding: 8px;'>- Defines the application manifest for the Windows runner executable, specifying DPI awareness and compatibility settings across multiple Windows versions<br>- Ensures the runner operates with optimal display scaling and broad OS support, contributing to a consistent and reliable user experience within the overall project architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/utils.h'>utils.h</a></b></td>
							<td style='padding: 8px;'>- Provides utility functions to facilitate Windows process management and command-line handling within the project<br>- It enables creating console windows with redirected output for integrated process interaction and converts command-line arguments between UTF-16 and UTF-8 encodings, ensuring proper data handling across different components of the architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/runner/win32_window.cpp'>win32_window.cpp</a></b></td>
							<td style='padding: 8px;'>- Implements window management for a Windows desktop application within the Flutter architecture, handling window creation, theming, DPI scaling, and message processing<br>- Facilitates seamless integration of native Win32 window functionalities, including dark mode support and dynamic resizing, ensuring consistent user experience across different display configurations and system themes.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- flutter Submodule -->
			<details>
				<summary><b>flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ windows.flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates the registration of Flutter plugins within the Windows platform, ensuring seamless integration of native functionalities into the Flutter application<br>- Serves as a crucial component in the plugin architecture, enabling the dynamic addition and management of plugins during app initialization<br>- Supports the overall architecture by maintaining a standardized registration process across the codebase.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build process for integrating Flutter with Windows, orchestrating the compilation of Flutters core libraries, platform-specific wrappers, and plugin support<br>- Facilitates seamless linkage between Flutters engine components and custom C++ wrappers, ensuring proper setup for Windows application deployment within the overall architecture<br>- Automates build dependencies to maintain synchronization across components.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
							<td style='padding: 8px;'>- Registers and links Flutter plugins for Windows within the build system, ensuring proper integration of platform-specific functionalities<br>- Facilitates the inclusion of plugin libraries and dependencies, enabling seamless extension of Flutter applications on Windows<br>- This setup supports modular plugin management, contributing to the overall architectures flexibility and maintainability.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/windows/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
							<td style='padding: 8px;'>- Registers platform-specific plugins for Windows within the Flutter application, enabling seamless integration of native functionalities such as file selection<br>- Serves as an automated component in the project’s plugin registration system, ensuring that Windows-specific plugins are correctly initialized during app startup, thereby facilitating cross-platform compatibility and extending Flutter’s capabilities on Windows environments.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- macos Submodule -->
	<details>
		<summary><b>macos</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ macos</b></code>
			<!-- Flutter Submodule -->
			<details>
				<summary><b>Flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.Flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Flutter/GeneratedPluginRegistrant.swift'>GeneratedPluginRegistrant.swift</a></b></td>
							<td style='padding: 8px;'>- Registers platform-specific plugins for macOS within the Flutter application, enabling seamless integration of file selection, path management, and database functionalities<br>- This setup ensures that essential native capabilities are accessible to the Flutter app, facilitating smooth operation and interaction with macOS features across the overall project architecture.</td>
						</tr>
					</table>
				</blockquote>
			</details>
			<!-- Runner Submodule -->
			<details>
				<summary><b>Runner</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.Runner</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
							<td style='padding: 8px;'>- Defines the applications main delegate for macOS, managing lifecycle events and ensuring the app terminates when the last window closes<br>- Integrates Flutter into the macOS environment, facilitating seamless communication between native macOS features and Flutter components within the overall architecture<br>- This setup supports a smooth user experience and proper app behavior on macOS platforms.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Runner/DebugProfile.entitlements'>DebugProfile.entitlements</a></b></td>
							<td style='padding: 8px;'>- Defines security entitlements for the macOS application, enabling sandboxing, allowing runtime code execution, and permitting network server operations<br>- These settings ensure the app operates within specified security boundaries while supporting necessary functionalities, aligning with the overall architecture that emphasizes secure, flexible, and network-enabled desktop application behavior.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Runner/Release.entitlements'>Release.entitlements</a></b></td>
							<td style='padding: 8px;'>- Defines security entitlements for the macOS application, specifically enabling sandboxing to restrict app permissions<br>- This configuration enhances security by isolating the apps runtime environment, aligning with the overall architectures focus on secure, controlled execution within the macOS platform<br>- It ensures the application operates with minimal privileges, safeguarding user data and system integrity.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Runner/MainFlutterWindow.swift'>MainFlutterWindow.swift</a></b></td>
							<td style='padding: 8px;'>- Defines the main application window for the macOS platform, integrating Flutter content within a native Cocoa environment<br>- It establishes the windows structure, embeds the Flutter view controller, and registers generated plugins, ensuring seamless communication between native macOS components and Flutter, thereby serving as the foundational entry point for the apps user interface within the overall architecture.</td>
						</tr>
					</table>
					<!-- Assets.xcassets Submodule -->
					<details>
						<summary><b>Assets.xcassets</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ macos.Runner.Assets.xcassets</b></code>
							<!-- AppIcon.appiconset Submodule -->
							<details>
								<summary><b>AppIcon.appiconset</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ macos.Runner.Assets.xcassets.AppIcon.appiconset</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
											<td style='padding: 8px;'>- Defines the set of application icons for the macOS version, specifying various sizes and resolutions to ensure consistent visual branding across different display contexts<br>- This configuration supports the overall app architecture by providing the necessary assets for a polished user interface and seamless integration within the macOS ecosystem.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
			<!-- RunnerTests Submodule -->
			<details>
				<summary><b>RunnerTests</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ macos.RunnerTests</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/macos/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
							<td style='padding: 8px;'>- Provides a foundational test structure for the macOS Runner application, enabling validation of core functionalities within the Flutter-based environment<br>- Serves as a starting point for implementing unit tests to ensure stability and correctness of the Runners integration with macOS, supporting overall project reliability and quality assurance in the larger codebase.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- linux Submodule -->
	<details>
		<summary><b>linux</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ linux</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/CMakeLists.txt'>CMakeLists.txt</a></b></td>
					<td style='padding: 8px;'>- Defines the build configuration and setup for the modern POS application, orchestrating compilation, dependency management, and resource bundling<br>- Ensures seamless integration of Flutter components, GTK system dependencies, and native assets, facilitating a consistent, relocatable, and optimized executable tailored for cross-platform deployment.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/main.cc'>main.cc</a></b></td>
					<td style='padding: 8px;'>- Initialize and launch the application within the Linux environment, serving as the entry point for the overall software system<br>- It orchestrates the creation of the main application instance and manages its execution flow, ensuring seamless startup and integration with the broader architecture<br>- This core component facilitates the transition from system initialization to user interaction.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/my_application.h'>my_application.h</a></b></td>
					<td style='padding: 8px;'>- Defines the interface for creating and managing a Flutter-based desktop application within the project architecture<br>- It establishes a final application type that integrates GTK, enabling seamless initialization and lifecycle management of the Flutter application in a Linux environment<br>- This component serves as the foundational entry point for launching and controlling the apps core functionality.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/my_application.cc'>my_application.cc</a></b></td>
					<td style='padding: 8px;'>- Establishes the core application structure for a Linux-based Flutter desktop app, managing window creation, platform-specific UI adjustments, and integrating Dart entry points<br>- Facilitates seamless startup, window configuration, and plugin registration, ensuring a consistent user interface across different Linux environments while bridging Flutter and native GTK functionalities within the overall architecture.</td>
				</tr>
			</table>
			<!-- flutter Submodule -->
			<details>
				<summary><b>flutter</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ linux.flutter</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
							<td style='padding: 8px;'>- Facilitates the registration of Flutter plugins within the Linux platform, ensuring seamless integration of native functionalities into the Flutter application<br>- Serves as a crucial component in the plugin management architecture, enabling the dynamic loading and initialization of plugins to extend app capabilities on Linux environments.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
							<td style='padding: 8px;'>- Defines the build process for integrating Flutters Linux library into the project, managing dependencies, configurations, and compilation steps<br>- Ensures that Flutters core components and platform-specific assets are correctly assembled and linked, facilitating seamless embedding of Flutter UI within the Linux environment as part of the overall architecture.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
							<td style='padding: 8px;'>- Defines the integration of Flutter plugins for Linux within the build system, ensuring proper linkage and inclusion of plugin libraries<br>- Facilitates seamless incorporation of platform-specific plugin components into the overall application architecture, enabling extended functionality and modular plugin management during the build process.</td>
						</tr>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/linux/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
							<td style='padding: 8px;'>- Registers platform-specific plugins for Linux within the Flutter application, enabling seamless integration of native functionalities<br>- It ensures that the File Selector plugin is properly initialized and available for use, facilitating cross-platform compatibility and extending Flutters capabilities on Linux environments<br>- This setup is essential for managing plugin registration during app startup.</td>
						</tr>
					</table>
				</blockquote>
			</details>
		</blockquote>
	</details>
	<!-- android Submodule -->
	<details>
		<summary><b>android</b></summary>
		<blockquote>
			<div class='directory-path' style='padding: 8px 0; color: #666;'>
				<code><b>⦿ android</b></code>
			<table style='width: 100%; border-collapse: collapse;'>
			<thead>
				<tr style='background-color: #f8f9fa;'>
					<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
					<th style='text-align: left; padding: 8px;'>Summary</th>
				</tr>
			</thead>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/build.gradle'>build.gradle</a></b></td>
					<td style='padding: 8px;'>- Defines the build configuration for the Android project, managing plugin dependencies and repository sources<br>- It orchestrates the setup of Kotlin support and ensures consistent build directories across subprojects, facilitating a cohesive and efficient build process within the overall architecture<br>- This file establishes foundational build parameters essential for compiling and assembling the Android application.</td>
				</tr>
				<tr style='border-bottom: 1px solid #eee;'>
					<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/settings.gradle'>settings.gradle</a></b></td>
					<td style='padding: 8px;'>- Defines the plugin management configuration for the Android build system, integrating Flutter SDK and plugins into the project architecture<br>- Facilitates seamless inclusion of Flutter and Android components, ensuring proper dependency resolution and plugin setup within the overall codebase<br>- Supports the coordinated build process across Flutter and native Android modules, maintaining consistency and compatibility.</td>
				</tr>
			</table>
			<!-- app Submodule -->
			<details>
				<summary><b>app</b></summary>
				<blockquote>
					<div class='directory-path' style='padding: 8px 0; color: #666;'>
						<code><b>⦿ android.app</b></code>
					<table style='width: 100%; border-collapse: collapse;'>
					<thead>
						<tr style='background-color: #f8f9fa;'>
							<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
							<th style='text-align: left; padding: 8px;'>Summary</th>
						</tr>
					</thead>
						<tr style='border-bottom: 1px solid #eee;'>
							<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/app/build.gradle'>build.gradle</a></b></td>
							<td style='padding: 8px;'>- Defines Android build configurations for the Modern POS Flutter application, establishing project parameters such as application ID, SDK versions, and build types<br>- Integrates Flutter-specific settings to ensure seamless compilation and deployment, serving as a foundational component that aligns native Android build processes with the Flutter framework within the overall project architecture.</td>
						</tr>
					</table>
					<!-- src Submodule -->
					<details>
						<summary><b>src</b></summary>
						<blockquote>
							<div class='directory-path' style='padding: 8px 0; color: #666;'>
								<code><b>⦿ android.app.src</b></code>
							<!-- profile Submodule -->
							<details>
								<summary><b>profile</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.profile</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/app/src/profile/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the necessary internet permission for development and debugging purposes within the Android profile build of the project<br>- It ensures the Flutter tool can communicate with the application during development activities such as hot reload and breakpoint setting, supporting smooth and efficient debugging workflows in the overall app architecture.</td>
										</tr>
									</table>
								</blockquote>
							</details>
							<!-- main Submodule -->
							<details>
								<summary><b>main</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.main</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/app/src/main/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the main application configuration for the Android platform within the project, establishing the apps entry point, theme, and essential metadata<br>- It ensures proper initialization of the Flutter-based user interface and integrates necessary plugins, serving as a foundational component that supports the overall architecture of the mobile application.</td>
										</tr>
									</table>
									<!-- kotlin Submodule -->
									<details>
										<summary><b>kotlin</b></summary>
										<blockquote>
											<div class='directory-path' style='padding: 8px 0; color: #666;'>
												<code><b>⦿ android.app.src.main.kotlin</b></code>
											<!-- com Submodule -->
											<details>
												<summary><b>com</b></summary>
												<blockquote>
													<div class='directory-path' style='padding: 8px 0; color: #666;'>
														<code><b>⦿ android.app.src.main.kotlin.com</b></code>
													<!-- example Submodule -->
													<details>
														<summary><b>example</b></summary>
														<blockquote>
															<div class='directory-path' style='padding: 8px 0; color: #666;'>
																<code><b>⦿ android.app.src.main.kotlin.com.example</b></code>
															<!-- modern_pos Submodule -->
															<details>
																<summary><b>modern_pos</b></summary>
																<blockquote>
																	<div class='directory-path' style='padding: 8px 0; color: #666;'>
																		<code><b>⦿ android.app.src.main.kotlin.com.example.modern_pos</b></code>
																	<table style='width: 100%; border-collapse: collapse;'>
																	<thead>
																		<tr style='background-color: #f8f9fa;'>
																			<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
																			<th style='text-align: left; padding: 8px;'>Summary</th>
																		</tr>
																	</thead>
																		<tr style='border-bottom: 1px solid #eee;'>
																			<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/app/src/main/kotlin/com/example/modern_pos/MainActivity.kt'>MainActivity.kt</a></b></td>
																			<td style='padding: 8px;'>- Defines the main entry point for the Android application within a Flutter project, enabling seamless integration of Flutters UI components with native Android functionality<br>- Serves as the bridge that launches the Flutter environment on Android devices, facilitating cross-platform compatibility and ensuring the apps core interface is rendered correctly on Android platforms.</td>
																		</tr>
																	</table>
																</blockquote>
															</details>
														</blockquote>
													</details>
												</blockquote>
											</details>
										</blockquote>
									</details>
								</blockquote>
							</details>
							<!-- debug Submodule -->
							<details>
								<summary><b>debug</b></summary>
								<blockquote>
									<div class='directory-path' style='padding: 8px 0; color: #666;'>
										<code><b>⦿ android.app.src.debug</b></code>
									<table style='width: 100%; border-collapse: collapse;'>
									<thead>
										<tr style='background-color: #f8f9fa;'>
											<th style='width: 30%; text-align: left; padding: 8px;'>File Name</th>
											<th style='text-align: left; padding: 8px;'>Summary</th>
										</tr>
									</thead>
										<tr style='border-bottom: 1px solid #eee;'>
											<td style='padding: 8px;'><b><a href='https://github.com/LyNNxMooon/Modern-POS/blob/master/android/app/src/debug/AndroidManifest.xml'>AndroidManifest.xml</a></b></td>
											<td style='padding: 8px;'>- Defines the necessary internet permission for development activities within the Android environment, enabling communication between the Flutter tool and the application<br>- This setup facilitates essential debugging features such as hot reload and breakpoint management, supporting efficient development workflows and ensuring smooth integration during the apps debugging and testing phases.</td>
										</tr>
									</table>
								</blockquote>
							</details>
						</blockquote>
					</details>
				</blockquote>
			</details>
		</blockquote>
	</details>
</details>

---

## Getting Started

### Prerequisites

This project requires the following dependencies:

- **Programming Language:** Dart
- **Package Manager:** Pub, Cmake, Gradle

### Installation

Build Modern-POS from the source and install dependencies:

1. **Clone the repository:**

    ```sh
    ❯ git clone https://github.com/LyNNxMooon/Modern-POS
    ```

2. **Navigate to the project directory:**

    ```sh
    ❯ cd Modern-POS
    ```

3. **Install the dependencies:**

**Using [pub](https://dart.dev/):**

```sh
❯ pub get
```
**Using [cmake](https://isocpp.org/):**

```sh
❯ cmake . && make
```
**Using [gradle](https://gradle.org/):**

```sh
❯ gradle build
```

### Usage

Run the project with:

**Using [pub](https://dart.dev/):**

```sh
dart {entrypoint}
```
**Using [cmake](https://isocpp.org/):**

```sh
./Modern-POS
```
**Using [gradle](https://gradle.org/):**

```sh
gradle run
```

### Testing

Modern-pos uses the {__test_framework__} test framework. Run the test suite with:

**Using [pub](https://dart.dev/):**

```sh
pub run test
```
**Using [cmake](https://isocpp.org/):**

```sh
ctest
```
**Using [gradle](https://gradle.org/):**

```sh
gradle test
```

---

<div align="left"><a href="#top">⬆ Return</a></div>

---
