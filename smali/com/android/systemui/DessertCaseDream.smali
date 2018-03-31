.class public Lcom/android/systemui/DessertCaseDream;
.super Landroid/service/dreams/DreamService;
.source "DessertCaseDream.java"


# instance fields
.field private mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

.field private mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseDream;)Lcom/android/systemui/DessertCaseView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseDream;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 33
    invoke-virtual {p0, v4}, Lcom/android/systemui/DessertCaseDream;->setInteractive(Z)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/android/systemui/DessertCaseDream;->setFullscreen(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseDream;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "dessert_case_cm"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, "isCM":Z
    if-eqz v0, :cond_0

    .line 40
    new-instance v2, Lcom/android/systemui/cm/CMCaseView;

    invoke-direct {v2, p0}, Lcom/android/systemui/cm/CMCaseView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 45
    :goto_0
    new-instance v2, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    iget-object v3, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 49
    iget-object v2, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-virtual {p0, v2}, Lcom/android/systemui/DessertCaseDream;->setContentView(Landroid/view/View;)V

    .line 50
    return-void

    .line 42
    :cond_0
    new-instance v2, Lcom/android/systemui/DessertCaseView;

    invoke-direct {v2, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCaseDream$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCaseDream$1;-><init>(Lcom/android/systemui/DessertCaseDream;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 66
    return-void
.end method
