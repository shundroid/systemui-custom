.class Lcom/android/systemui/quicksettings/TorchTile$2;
.super Ljava/lang/Object;
.source "TorchTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/TorchTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/TorchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/TorchTile;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/quicksettings/TorchTile$2;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile$2;->this$0:Lcom/android/systemui/quicksettings/TorchTile;

    sget-object v1, Lcom/android/internal/util/cm/TorchConstants;->INTENT_LAUNCH_APP:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/TorchTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method