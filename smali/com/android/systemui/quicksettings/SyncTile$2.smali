.class Lcom/android/systemui/quicksettings/SyncTile$2;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/SyncTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/SyncTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/SyncTile;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SyncTile$2;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$2;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/SyncTile;->access$100(Lcom/android/systemui/quicksettings/SyncTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$2;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/SyncTile;->updateResources()V

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method
