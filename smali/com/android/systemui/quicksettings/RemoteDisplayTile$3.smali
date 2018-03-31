.class Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;
.super Ljava/lang/Object;
.source "RemoteDisplayTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/RemoteDisplayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 99
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$200(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)Landroid/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$100(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)Landroid/media/MediaRouter$SimpleCallback;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 103
    return-void
.end method
