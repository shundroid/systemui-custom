.class public Lcom/pheelicks/visualizer/FFTData;
.super Ljava/lang/Object;
.source "FFTData.java"


# instance fields
.field public bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/pheelicks/visualizer/FFTData;->bytes:[B

    .line 16
    return-void
.end method
