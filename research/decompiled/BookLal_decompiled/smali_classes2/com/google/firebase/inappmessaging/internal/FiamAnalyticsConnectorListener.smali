.class final Lcom/google/firebase/inappmessaging/internal/FiamAnalyticsConnectorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;


# instance fields
.field private emitter:Lz3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz3/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz3/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/FiamAnalyticsConnectorListener;->emitter:Lz3/e;

    return-void
.end method


# virtual methods
.method public onMessageTriggered(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/FiamAnalyticsConnectorListener;->emitter:Lz3/e;

    const-string v0, "events"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lz3/e;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
