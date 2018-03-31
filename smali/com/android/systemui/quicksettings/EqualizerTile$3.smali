.class Lcom/android/systemui/quicksettings/EqualizerTile$3;
.super Ljava/lang/Object;
.source "EqualizerTile.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/EqualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/EqualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile$3;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 2
    .param p1, "clearing"    # Z

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$3;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$200(Lcom/android/systemui/quicksettings/EqualizerTile;I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 0
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 103
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$3;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0, p1}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$200(Lcom/android/systemui/quicksettings/EqualizerTile;I)V

    .line 87
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$3;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0, p1}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$200(Lcom/android/systemui/quicksettings/EqualizerTile;I)V

    .line 93
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 98
    return-void
.end method
