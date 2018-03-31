.class Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlobalSettingsObserver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    .line 343
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    .line 349
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->sInstance:Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;

    return-object v0
.end method


# virtual methods
.method attach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1
    .param p1, "sbiv"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->observe()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method detach(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1
    .param p1, "sbiv"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->unobserve()V

    .line 364
    :cond_0
    return-void
.end method

.method observe()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_notif_count"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    return-void
.end method

.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "status_bar_notif_count"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 380
    .local v2, "showIconCount":Z
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 381
    .local v1, "sbiv":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$002(Lcom/android/systemui/statusbar/StatusBarIconView;Z)Z

    .line 382
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$100(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->access$200(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/internal/statusbar/StatusBarIcon;Z)Z

    goto :goto_0

    .line 384
    .end local v1    # "sbiv":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    return-void
.end method

.method unobserve()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$GlobalSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 374
    return-void
.end method
