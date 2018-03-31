.class Lcom/android/systemui/quicksettings/SyncTile$1$1;
.super Ljava/lang/Object;
.source "SyncTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/SyncTile$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/quicksettings/SyncTile$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/SyncTile$1;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/quicksettings/SyncTile$1$1;->this$1:Lcom/android/systemui/quicksettings/SyncTile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile$1$1;->this$1:Lcom/android/systemui/quicksettings/SyncTile$1;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/SyncTile$1;->this$0:Lcom/android/systemui/quicksettings/SyncTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/SyncTile;->updateResources()V

    .line 41
    return-void
.end method
