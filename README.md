# CleanArchitectureSample (SwiftUI Todo App)

SwiftUI + Clean Architecture 패턴을 적용한 간단한 Todo List 예제 프로젝트입니다.  
의존성 주입(Dependency Injection), 계층 분리(Data / Domain / Presentation),  
MVVM 구조를 기반으로 구성되어 있습니다.

---

## 프로젝트 개요

이 프로젝트는 **클린 아키텍처(Clean Architecture)** 의 계층적 설계를  
SwiftUI 환경에서 어떻게 적용할 수 있는지를 보여주는 학습용 예제입니다.

구성 요소별 역할은 다음과 같습니다:

| Layer | 역할 | 주요 구성요소 |
|--------|------|----------------|
| **Presentation** | UI 및 상태(ViewModel) 관리 | `TodoListView`, `TodoViewModel` |
| **Domain** | 핵심 비즈니스 로직, 추상화 계층 | `Todo`, `UseCase`, `TodoRepository` |
| **Data** | 데이터 접근 및 저장소 구현 | `TodoRepositoryImpl`, `LocalTodoDataSource` |
| **App (Composition Root)** | 의존성 주입(DI) 및 조립 | `CleanArchitectureSampleApp.swift`, `DIContainer.swift` |

--- 

## 개발 환경

| 항목 | 버전 |
|------|------|
| Xcode | 16 이상 |
| iOS Deployment Target | 18.2 |
| Language | Swift 6.0.3 |
| Architecture | Clean Architecture + MVVM |

---

## 주요 설계 개념

### Clean Architecture
- **의존성 방향:** Presentation → Domain → Data  
- Domain 계층은 외부 구현(Data)을 모름  
- UseCase와 Repository Interface를 통해 느슨한 결합 유지

### MVVM 패턴
- **View:** SwiftUI `TodoListView`  
- **ViewModel:** `TodoViewModel` (상태 및 로직 관리)  
- **Model:** Domain 계층의 `Todo` 및 UseCase

### 의존성 주입 (DI)
- App Entry(`CleanArchitectureSampleApp.swift`)에서 모든 의존성 조립 -> `DIContainer` 구조로 통합 관리 
- `LocalTodoDataSource` → `TodoRepositoryImpl` → `UseCase` → `TodoViewModel` → `TodoListView`


---

## 💻 실행 방법

1. **Xcode 15+** 환경에서 프로젝트를 열기  
2. `iOS 17` 시뮬레이터 선택  
3. **Build & Run (`⌘ + R`)**  
4. “Clean Todo” 화면에서 할 일을 추가하거나 완료 상태를 토글할 수 있습니다.

---

## 🧰 미리보기 (SwiftUI Preview)

`TodoListView` 파일에는 SwiftUI Canvas용 프리뷰가 포함되어 있습니다.  
Xcode에서 아래 단축키를 사용하여 실행할 수 있습니다:

- Canvas 열기: `⌥ + ⌘ + ↩︎`
- Preview 새로고침: “▶️ Resume” 클릭

---
