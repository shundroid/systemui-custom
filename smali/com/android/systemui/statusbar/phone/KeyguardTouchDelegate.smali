.class public Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# instance fields
.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 66
    const v3, 0x104010c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "keyguardPackage":Ljava/lang/String;
    const v3, 0x104010d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "keyguardClass":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .prologue
    .line 39
    sput-object p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 83
    .local v0, "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 86
    .restart local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 207
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException dismissing keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dismiss(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchApplicationWidgetEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 121
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->dispatchApplicationWidgetEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v2, 0x1

    .line 132
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException sending event to keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dispatch(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispatchCameraEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 105
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->dispatchCameraEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const/4 v2, 0x1

    .line 116
    :goto_0
    return v2

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException sending event to keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dispatch(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInputRestricted()Z
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 137
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isInputRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 146
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isInputRestricted(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 91
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 100
    :goto_0
    return v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException calling keyguard.isSecure()!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isSecure(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowingAndNotHidden()Z
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 151
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 160
    :goto_0
    return v2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isShowingAndNotHidden(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchApplicationWidget()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 193
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->launchApplicationWidget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching ApplicationWidget!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "launchApplicationWidget(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 179
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->launchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching camera!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "launchCamera(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 165
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->showAssistant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching assistant!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "showAssistant(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
