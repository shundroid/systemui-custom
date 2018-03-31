.class Lcom/android/systemui/quicksettings/InputMethodTile$1;
.super Ljava/lang/Object;
.source "InputMethodTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/InputMethodTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/InputMethodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/InputMethodTile;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v2, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/InputMethodTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/InputMethodTile$1;->this$0:Lcom/android/systemui/quicksettings/InputMethodTile;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 55
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0
.end method
