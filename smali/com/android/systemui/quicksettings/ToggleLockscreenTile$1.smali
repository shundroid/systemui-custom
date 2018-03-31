.class Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;
.super Ljava/lang/Object;
.source "ToggleLockscreenTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ToggleLockscreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;->this$0:Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->access$000(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->toggleState()V

    .line 40
    return-void
.end method
