.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityClickListener:Landroid/view/View$OnClickListener;

.field private mApplicationWidgetIcon:[B

.field private mApplicationWidgetPackageName:Ljava/lang/String;

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private mCameraDisabledByDpm:Z

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHasCmKeyguard:Z

.field private mHomeIcon:Landroid/graphics/drawable/Drawable;

.field private mHomeLandIcon:Landroid/graphics/drawable/Drawable;

.field private mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field private mInEditMode:Z

.field mLeftInLandscape:Z

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mModLockDisabled:Z

.field private mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

.field mNavigationIconHints:I

.field private mObserver:Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field private mSetApplicationWidgetReceiver:Landroid/content/BroadcastReceiver;

.field private mShowDpadArrowKeys:Z

.field mShowMenu:Z

.field public mSlotOneVisibility:I

.field public mSlotSixVisibility:I

.field private mStatusBarBlockerTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

.field private mThemedResources:Landroid/content/res/Resources;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHasCmKeyguard:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mModLockDisabled:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowDpadArrowKeys:Z

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 358
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 930
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSetApplicationWidgetReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 264
    .local v12, "res":Landroid/content/res/Resources;
    const v0, 0x7f0b0022

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftInLandscape:Z

    .line 268
    new-instance v0, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 270
    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 272
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isCameraDisabledByDpm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->watchForDevicePolicyChanges()V

    .line 277
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    .line 278
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.NAVBAR_EDIT"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, "f":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavBarReceiver:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavBarReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v7, "applicationWidgetFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SET_KEYGUARD_APPLICATION_WIDGET_ACTION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v0, "android.intent.action.UNSET_KEYGUARD_APPLICATION_WIDGET_ACTION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSetApplicationWidgetReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.SET_KEYGUARD_APPLICATION_WIDGET"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 291
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v1, 0x104010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 297
    .local v11, "keyguardPackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getApplicationMetadata(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 298
    .local v10, "keyguardMetadata":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    const-string v0, "com.cyanogenmod.keyguard"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHasCmKeyguard:Z

    .line 300
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NavigationBarView;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # [B

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetIcon:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHasCmKeyguard:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mModLockDisabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowDpadArrowKeys:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isCameraDisabledByDpm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInEditMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInEditMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeButtonListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavbarEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->enableAccessibility(Z)V

    return-void
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    if-nez p2, :cond_1

    .line 1017
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    .end local p2    # "button":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1029
    return-void

    .line 1019
    .restart local p2    # "button":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " drawingAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawingAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quiescentAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p2    # "button":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableAccessibility(Z)V
    .locals 11
    .param p1, "touchEnabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 794
    const-string v8, "PhoneStatusBar/NavigationBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "touchEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-eqz p1, :cond_2

    move-object v6, v5

    .line 799
    .local v6, "onTouchListener":Landroid/view/View$OnTouchListener;
    :goto_0
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 800
    .local v5, "onClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    const/4 v3, 0x0

    .line 801
    .local v3, "hasCamera":Z
    const/4 v2, 0x0

    .line 802
    .local v2, "hasApplicationWidget":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v8, v8

    if-ge v4, v8, :cond_6

    .line 803
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v8, v8, v4

    if-nez v8, :cond_3

    .line 802
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 798
    .end local v2    # "hasApplicationWidget":Z
    .end local v3    # "hasCamera":Z
    .end local v4    # "i":I
    .end local v5    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v6    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_0

    .line 807
    .restart local v2    # "hasApplicationWidget":Z
    .restart local v3    # "hasCamera":Z
    .restart local v4    # "i":I
    .restart local v5    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v6    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v8, v8, v4

    const v9, 0x7f080046

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 808
    .local v1, "cameraButton":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v8, v8, v4

    const v9, 0x7f080045

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 809
    .local v7, "searchLight":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v8, v8, v4

    const v9, 0x7f080044

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 811
    .local v0, "applicationWidgetButton":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 812
    const/4 v3, 0x1

    .line 813
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 814
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    :cond_4
    if-eqz v7, :cond_5

    .line 817
    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    :cond_5
    if-eqz v0, :cond_1

    .line 820
    const/4 v2, 0x1

    .line 821
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 822
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 825
    .end local v0    # "applicationWidgetButton":Landroid/view/View;
    .end local v1    # "cameraButton":Landroid/view/View;
    .end local v7    # "searchLight":Landroid/view/View;
    :cond_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    .line 828
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 830
    :cond_8
    return-void
.end method

.method private static getApplicationMetadata(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1032
    if-eqz p1, :cond_0

    .line 1034
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1035
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1036
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v3

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 471
    const v0, 0x7f0200c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 472
    const v0, 0x7f0200cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 473
    const v0, 0x7f0200ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 474
    const v0, 0x7f0200cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 475
    const v0, 0x7f0200db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 476
    const v0, 0x7f0200dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 477
    const v0, 0x7f0200d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    .line 478
    const v0, 0x7f0200d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeLandIcon:Landroid/graphics/drawable/Drawable;

    .line 479
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 955
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 960
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 956
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 957
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 960
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 708
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 710
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 712
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 713
    .local v4, "userId":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 714
    .local v1, "disabledFlags":I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 717
    .local v0, "disabledBecauseKeyguardSecure":Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .line 722
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "disabledFlags":I
    .restart local v4    # "userId":I
    :cond_2
    move v0, v5

    .line 714
    goto :goto_0

    .line 718
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 719
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneStatusBar/NavigationBarView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 966
    return-void
.end method

.method private removeButtonListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v5, 0x7f080042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 379
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 380
    .local v3, "viewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 381
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, "button":Landroid/view/View;
    instance-of v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v4, :cond_0

    .line 383
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 380
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "button":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V
    .locals 5
    .param p1, "info"    # Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, -0x1

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, "findView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 407
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 408
    .local v1, "visibility":I
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08000f

    if-ne v2, v3, :cond_2

    .line 409
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    goto :goto_0

    .line 407
    .end local v1    # "visibility":I
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 410
    .restart local v1    # "visibility":I
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080015

    if-ne v2, v3, :cond_3

    .line 411
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 703
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :cond_0
    return-void

    .line 703
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateKeyButtonViewResources(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 496
    const v5, 0x7f080010

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 497
    .local v3, "midNavButtons":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 499
    .local v4, "nChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 500
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v5, :cond_0

    .line 502
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local v0    # "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateResources(Landroid/content/res/Resources;)V

    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    .end local v4    # "nChildren":I
    :cond_1
    const v5, 0x7f08000f

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 507
    .local v2, "kbv":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    if-eqz v2, :cond_2

    .line 508
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateResources(Landroid/content/res/Resources;)V

    .line 510
    :cond_2
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "kbv":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 511
    .restart local v2    # "kbv":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    if-eqz v2, :cond_3

    .line 512
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateResources(Landroid/content/res/Resources;)V

    .line 514
    :cond_3
    return-void
.end method

.method private updateLightsOutResources(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 517
    const v5, 0x7f080043

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 518
    .local v3, "lightsOut":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 519
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 520
    .local v4, "nChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 521
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 523
    check-cast v2, Landroid/widget/ImageView;

    .line 527
    .local v2, "iv":Landroid/widget/ImageView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    const v6, 0x7f0200d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "nChildren":I
    :cond_1
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 969
    sparse-switch p0, :sswitch_data_0

    .line 975
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 971
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 973
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 969
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private watchForAccessibilityChanges()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 782
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->enableAccessibility(Z)V

    .line 785
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 791
    return-void
.end method

.method private watchForDevicePolicyChanges()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void
.end method


# virtual methods
.method public disableSearchBar()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 335
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 980
    const-string v5, "NavigationBarView {"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 982
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 983
    .local v2, "size":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 989
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 990
    .local v0, "offscreen":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v5, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string v5, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    const-string v5, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_2
    aput-object v3, v6, v4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string v3, "true"

    :goto_3
    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    const-string v3, "back"

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 1006
    const-string v3, "home"

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 1007
    const-string v3, "rcnt"

    sget-object v4, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 1008
    const-string v3, "srch"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 1009
    const-string v3, "cmra"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/view/View;)V

    .line 1011
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    return-void

    .end local v0    # "offscreen":Z
    :cond_1
    move v0, v3

    .line 989
    goto/16 :goto_0

    .line 990
    .restart local v0    # "offscreen":Z
    :cond_2
    const-string v5, ""

    goto/16 :goto_1

    .line 1000
    :cond_3
    const-string v3, "false"

    goto :goto_2

    :cond_4
    const-string v3, "false"

    goto :goto_3
.end method

.method public enableSearchBar()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 339
    return-void
.end method

.method findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;
    .locals 1
    .param p1, "info"    # Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationWidgetButton()Landroid/view/View;
    .locals 10

    .prologue
    .line 429
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v8, 0x7f080044

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 430
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetPackageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetIcon:[B

    if-nez v7, :cond_1

    .line 432
    :cond_0
    const/4 v5, 0x0

    .line 454
    .end local v5    # "v":Landroid/view/View;
    :goto_0
    return-object v5

    .line 440
    .restart local v5    # "v":Landroid/view/View;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200f2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 441
    .local v4, "searchIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 442
    .local v6, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 449
    .end local v4    # "searchIcon":Landroid/graphics/drawable/Drawable;
    .local v3, "height":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetIcon:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetIcon:[B

    array-length v9, v9

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .local v0, "bMap":Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    invoke-static {v0, v6, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bMapScaled":Landroid/graphics/Bitmap;
    move-object v7, v5

    .line 452
    check-cast v7, Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getApplicationWidgetLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    .end local v0    # "bMap":Landroid/graphics/Bitmap;
    .end local v1    # "bMapScaled":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v6, 0x20

    .line 447
    .restart local v6    # "width":I
    const/16 v3, 0x20

    .restart local v3    # "height":I
    goto :goto_1
.end method

.method public getApplicationWidgetLabel()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 466
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 467
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 462
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCameraButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getSearchLight()Landroid/view/View;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarBlockerTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarBlockerTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

    return-object v0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInEditMode:Z

    return v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 574
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 575
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 767
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->observe()V

    .line 769
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 773
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mObserver:Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->unobserve()V

    .line 775
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f080048

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 759
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarBlockerTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->watchForAccessibilityChanges()V

    .line 763
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 880
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 882
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 883
    .local v3, "midNavButtons":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 884
    .local v1, "count":I
    new-array v0, v1, [Landroid/view/View;

    .line 886
    .local v0, "buttons":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 887
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v2

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 890
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 891
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 898
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 899
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 900
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 905
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 906
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 907
    return-void

    .line 898
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 348
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 350
    .end local v0    # "ret":Z
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 843
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 844
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v4, v0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 847
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->isDevicePhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 849
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 850
    .local v1, "rotation":I
    if-eq v1, v3, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 851
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSwapXY(Z)V

    .line 855
    .end local v1    # "rotation":I
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/NavbarEditor;-><init>(Landroid/view/View;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    .line 856
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSettings()V

    .line 858
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f080047

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 859
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftInLandscape:Z

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/DeadZone;->setStartFromRight(Z)V

    .line 862
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init(Z)V

    .line 863
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarBlockerTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;->init()V

    .line 864
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 865
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 871
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 872
    return-void

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 331
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 644
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 13
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 647
    if-nez p2, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v9, p1, :cond_0

    .line 699
    :goto_0
    return-void

    .line 649
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 651
    const/high16 v9, 0x200000

    and-int/2addr v9, p1

    if-eqz v9, :cond_4

    move v1, v10

    .line 652
    .local v1, "disableHome":Z
    :goto_1
    const/high16 v9, 0x1000000

    and-int/2addr v9, p1

    if-eqz v9, :cond_5

    move v2, v10

    .line 653
    .local v2, "disableRecent":Z
    :goto_2
    const/high16 v9, 0x400000

    and-int/2addr v9, p1

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_6

    move v0, v10

    .line 655
    .local v0, "disableBack":Z
    :goto_3
    const/high16 v9, 0x2000000

    and-int/2addr v9, p1

    if-eqz v9, :cond_7

    move v3, v10

    .line 658
    .local v3, "disableSearch":Z
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    move v9, v10

    :goto_5
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 661
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v12, 0x7f08000d

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 662
    .local v5, "navButtons":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 663
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 664
    .local v4, "lt":Landroid/animation/LayoutTransition;
    if-eqz v4, :cond_2

    .line 665
    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 666
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4, v9}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 668
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 669
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 678
    .end local v4    # "lt":Landroid/animation/LayoutTransition;
    :cond_2
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v0, :cond_9

    move v9, v10

    :goto_6
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 679
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v1, :cond_a

    move v9, v10

    :goto_7
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 680
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v2, :cond_b

    move v9, v10

    :goto_8
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 681
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v2, :cond_c

    move v9, v10

    :goto_9
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 682
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v2, :cond_d

    move v9, v10

    :goto_a
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 683
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v2, :cond_e

    move v9, v10

    :goto_b
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 684
    sget-object v12, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_SEARCH:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-nez v2, :cond_f

    move v9, v10

    :goto_c
    invoke-direct {p0, v12, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    .line 686
    if-eqz v1, :cond_10

    if-nez v3, :cond_10

    move v8, v10

    .line 687
    .local v8, "showSearch":Z
    :goto_d
    if-eqz v8, :cond_11

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCameraDisabledByDpm:Z

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getCameraEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    move v7, v10

    .line 690
    .local v7, "showCamera":Z
    :goto_e
    if-eqz v8, :cond_12

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mApplicationWidgetPackageName:Ljava/lang/String;

    if-eqz v9, :cond_12

    move v6, v10

    .line 693
    .local v6, "showApplicationWidget":Z
    :goto_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v9

    if-eqz v8, :cond_3

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mModLockDisabled:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/util/cm/NavigationRingHelpers;->hasLockscreenTargets(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v11, v10

    :cond_3
    invoke-direct {p0, v9, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getApplicationWidgetButton()Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 698
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v11

    invoke-virtual {v9, v11, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    goto/16 :goto_0

    .end local v0    # "disableBack":Z
    .end local v1    # "disableHome":Z
    .end local v2    # "disableRecent":Z
    .end local v3    # "disableSearch":Z
    .end local v5    # "navButtons":Landroid/view/ViewGroup;
    .end local v6    # "showApplicationWidget":Z
    .end local v7    # "showCamera":Z
    .end local v8    # "showSearch":Z
    :cond_4
    move v1, v11

    .line 651
    goto/16 :goto_1

    .restart local v1    # "disableHome":Z
    :cond_5
    move v2, v11

    .line 652
    goto/16 :goto_2

    .restart local v2    # "disableRecent":Z
    :cond_6
    move v0, v11

    .line 653
    goto/16 :goto_3

    .restart local v0    # "disableBack":Z
    :cond_7
    move v3, v11

    .line 655
    goto/16 :goto_4

    .restart local v3    # "disableSearch":Z
    :cond_8
    move v9, v11

    .line 658
    goto/16 :goto_5

    .restart local v5    # "navButtons":Landroid/view/ViewGroup;
    :cond_9
    move v9, v11

    .line 678
    goto/16 :goto_6

    :cond_a
    move v9, v11

    .line 679
    goto/16 :goto_7

    :cond_b
    move v9, v11

    .line 680
    goto/16 :goto_8

    :cond_c
    move v9, v11

    .line 681
    goto :goto_9

    :cond_d
    move v9, v11

    .line 682
    goto :goto_a

    :cond_e
    move v9, v11

    .line 683
    goto :goto_b

    :cond_f
    move v9, v11

    .line 684
    goto :goto_c

    :cond_10
    move v8, v11

    .line 686
    goto :goto_d

    .restart local v8    # "showSearch":Z
    :cond_11
    move v7, v11

    .line 687
    goto :goto_e

    .restart local v7    # "showCamera":Z
    :cond_12
    move v6, v11

    .line 690
    goto :goto_f
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 539
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 540
    return-void
.end method

.method public setLeftInLandscape(Z)V
    .locals 1
    .param p1, "leftInLandscape"    # Z

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftInLandscape:Z

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setLeftIfVertical(Z)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->setStartFromRight(Z)V

    .line 840
    return-void
.end method

.method setListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "recentsClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "recentsPreloadListener"    # Landroid/view/View$OnTouchListener;
    .param p3, "homeSearchActionListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 372
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

    .line 373
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonListeners()V

    .line 375
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 743
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 746
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 748
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 750
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setButtonVisibility(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;Z)V

    goto :goto_0
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 579
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 13
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const v10, 0x7f080015

    const v11, 0x7f08000f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 582
    if-nez p2, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v9, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_6

    move v0, v7

    .line 584
    .local v0, "backAlt":Z
    :goto_1
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    if-nez v0, :cond_2

    .line 585
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 593
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 595
    sget-object v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_BACK:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 596
    .local v1, "backView":Landroid/widget/ImageView;
    sget-object v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 597
    .local v4, "recentView":Landroid/widget/ImageView;
    sget-object v9, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 599
    .local v2, "homeView":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 600
    if-eqz v0, :cond_8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    :cond_3
    if-eqz v4, :cond_4

    .line 606
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    :cond_4
    if-eqz v2, :cond_5

    .line 610
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    :cond_5
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v9, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 615
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowDpadArrowKeys:Z

    if-eqz v9, :cond_0

    .line 616
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    move v5, v7

    .line 619
    .local v5, "showingIme":Z
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v9, 0x7f08000e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v9, 0x7f080016

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v9

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v7, :cond_d

    move v7, v10

    :goto_6
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 623
    .local v3, "one":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v9, :cond_e

    :goto_7
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 624
    .local v6, "six":Landroid/view/View;
    if-eqz v5, :cond_f

    .line 625
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    .line 626
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    .line 627
    invoke-direct {p0, v3, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 628
    invoke-direct {p0, v6, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibleOrGone(Landroid/view/View;Z)V

    goto/16 :goto_0

    .end local v0    # "backAlt":Z
    .end local v1    # "backView":Landroid/widget/ImageView;
    .end local v2    # "homeView":Landroid/widget/ImageView;
    .end local v3    # "one":Landroid/view/View;
    .end local v4    # "recentView":Landroid/widget/ImageView;
    .end local v5    # "showingIme":Z
    .end local v6    # "six":Landroid/view/View;
    :cond_6
    move v0, v8

    .line 583
    goto/16 :goto_1

    .line 600
    .restart local v0    # "backAlt":Z
    .restart local v1    # "backView":Landroid/widget/ImageView;
    .restart local v2    # "homeView":Landroid/widget/ImageView;
    .restart local v4    # "recentView":Landroid/widget/ImageView;
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_8
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 606
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 610
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_c
    move v5, v8

    .line 616
    goto :goto_5

    .restart local v5    # "showingIme":Z
    :cond_d
    move v7, v11

    .line 622
    goto :goto_6

    .restart local v3    # "one":Landroid/view/View;
    :cond_e
    move v11, v10

    .line 623
    goto :goto_7

    .line 630
    .restart local v6    # "six":Landroid/view/View;
    :cond_f
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    if-eq v7, v12, :cond_10

    .line 631
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    .line 634
    :cond_10
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    if-eq v7, v12, :cond_0

    .line 635
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iput v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    goto/16 :goto_0
.end method

.method public setSlippery(Z)V
    .locals 5
    .param p1, "newSlippery"    # Z

    .prologue
    const/high16 v4, 0x20000000

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 727
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 728
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 729
    .local v1, "oldSlippery":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 730
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 736
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 737
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    .end local v1    # "oldSlippery":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 728
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 731
    .restart local v1    # "oldSlippery":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 732
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected updateButtonListeners()V
    .locals 3

    .prologue
    .line 391
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_RECENT:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, "recentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsPreloadListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findButton(Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "homeView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    :cond_1
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mThemedResources:Landroid/content/res/Resources;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateResources(Landroid/content/res/Resources;)V

    .line 485
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarBlockerTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;->updateResources(Landroid/content/res/Resources;)V

    .line 486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v2, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 488
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateKeyButtonViewResources(Landroid/view/ViewGroup;)V

    .line 490
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLightsOutResources(Landroid/view/ViewGroup;)V

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public updateSettings()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mEditBar:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->updateKeys()V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeButtonListeners()V

    .line 568
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonListeners()V

    .line 569
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 570
    return-void
.end method
