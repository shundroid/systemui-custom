.class public Lcom/android/systemui/DessertCase;
.super Landroid/app/Activity;
.source "DessertCase.java"


# instance fields
.field mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCase$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCase$1;-><init>(Lcom/android/systemui/DessertCase;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/DessertCase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_cm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    .local v2, "isCM":Z
    invoke-virtual {p0}, Lcom/android/systemui/DessertCase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 39
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/systemui/DessertCaseDream;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    const-string v4, "DessertCase"

    const-string v5, "CyanogenMod enabled!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    invoke-virtual {v3, v0, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 51
    :cond_0
    if-eqz v2, :cond_2

    .line 52
    new-instance v4, Lcom/android/systemui/cm/CMCaseView;

    invoke-direct {v4, p0}, Lcom/android/systemui/cm/CMCaseView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    .line 57
    :goto_1
    new-instance v1, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "container":Lcom/android/systemui/DessertCaseView$RescalingContainer;
    iget-object v4, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCase;->setContentView(Landroid/view/View;)V

    .line 62
    return-void

    .line 44
    .end local v1    # "container":Lcom/android/systemui/DessertCaseView$RescalingContainer;
    :cond_1
    const-string v4, "DessertCase"

    const-string v5, "ACHIEVEMENT UNLOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    new-instance v4, Lcom/android/systemui/DessertCaseView;

    invoke-direct {v4, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    goto :goto_1
.end method
