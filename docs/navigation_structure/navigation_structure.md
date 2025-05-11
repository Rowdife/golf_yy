# アプリナビゲーション構造

このドキュメントでは、アプリケーションのナビゲーション構造を説明します。

## 全体フロー

以下のフローチャートは、アプリケーションの全体的なナビゲーション構造を示しています：

```mermaid
flowchart TD
  StartApp["アプリ起動"]

  StartApp --> Onboarding{"初回起動？"}
  Onboarding -->|はい| IntroSlides["アプリ紹介スライド"] --> Login["ログイン / 会員登録"] --> SignupFlow
  Onboarding -->|いいえ| isLoggedIn{"ログインされてる？"}
  isLoggedIn -->|はい| BottomTab
  isLoggedIn -->|いいえ| SignupFlow["Google / Apple連携 → プロフィール登録"] --> BottomTab

  subgraph BottomTab["📱 Bottom Tabs"]
    Home["🏠 ホーム（フィード）"]
    Dashboard["📅 ダッシュボード"]
    Record["⛳ 記録"]
    Profile["👤 プロフィール"]
  end

  %% Home Stack
  Home --> PostDetail["Timeline"]
  Home --> CreatePost["投稿作成"]
  CreatePost --> UploadPractice["練習記録"]
  CreatePost --> UploadRound["ラウンド共有"]
  UploadPractice --> |照会 & 選択| PracticeSeeAll
  UploadRound --> |照会 & 選択| RoundSeeAll


  %% Dashboard Stack
  Calendar --> PracticeRecordDB[("練習記録DB")]
  Calendar --> RoundRecordDB[("ラウンド記録DB")]
  Dashboard --> Practice["練習記録閲覧"]
  Practice --> PracticeSeeAll["練習記録一覧"]
  Dashboard --> Round["ラウンド記録閲覧"]
  Round --> RoundSeeAll["ラウンド記録分析一覧"]
  Dashboard --> Calendar["記録カレンダー"]
  Dashboard --> EurekaNote["ユレカノート一覧"]


  %% Record Stack
  Record --> SelectRoundType["9H or 18H 選択"]
  SelectRoundType --> InputScore["スコア入力"]
  InputScore --> ResultAnalysis["ラウンド分析"]

  %% Profile Stack
  Profile --> MyPosts["投稿履歴"]
  Profile --> ClubSettings["クラブ設定"]
  Profile --> Subscription["サブスクリプション"]
  Profile --> Settings["通知・アプリ設定"]
```

## 主要なナビゲーションフロー

### 1. オンボーディングフロー

- 初回起動時のみ表示
- アプリ紹介スライド
- ログイン/会員登録
- Google/Apple 連携
- プロフィール登録

### 2. メインアプリ（Bottom Tabs）

- 🏠 ホーム（フィード）
- 📅 ダッシュボード
- ⛳ 記録
- 👤 プロフィール

### 3. ホームタブ

- Timeline
- 投稿作成
  - 練習記録
  - ラウンド共有

### 4. ダッシュボードタブ

- 練習記録閲覧
- ラウンド記録閲覧
- 記録カレンダー
- ユレカノート一覧

### 5. 記録タブ

- 9H or 18H 選択
- スコア入力
- ラウンド分析

### 6. プロフィールタブ

- 投稿履歴
- クラブ設定
- サブスクリプション
- 通知・アプリ設定
