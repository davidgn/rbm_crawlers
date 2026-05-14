.class public Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;
    }
.end annotation


# static fields
.field static final TOO_MANY_CONTEXTUAL_TRIGGERS_ERROR:Ljava/lang/String; = "Too many contextual triggers defined - limiting to 50"


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final flowable:LD3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LD3/a;"
        }
    .end annotation
.end field

.field private handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;

    invoke-direct {p1, p0}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;-><init>(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)V

    sget v0, Lz3/d;->a:I

    const/4 v0, 0x3

    const-string v1, "mode is null"

    invoke-static {v0, v1}, LC/a;->t(ILjava/lang/String;)V

    new-instance v0, LK3/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LK3/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lz3/d;->c()LK3/Q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->flowable:LD3/a;

    invoke-virtual {p1}, LD3/a;->f()V

    return-void
.end method

.method public static synthetic access$002(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object p0
.end method

.method public static extractAnalyticsEventNames(LZ2/j;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZ2/j;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, LZ2/j;->i()Lcom/google/protobuf/Y;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/e;

    invoke-virtual {v1}, LY2/e;->k()Lcom/google/protobuf/Y;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    const/16 v1, 0x32

    if-le p0, v1, :cond_3

    const-string p0, "Too many contextual triggers defined - limiting to 50"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getAnalyticsEventsFlowable()LD3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD3/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->flowable:LD3/a;

    return-object v0
.end method

.method public getHandle()Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    return-object v0
.end method

.method public updateContextualTriggers(LZ2/j;)V
    .locals 2

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->extractAnalyticsEventNames(LZ2/j;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updating contextual triggers for the following analytics events: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->registerEventNames(Ljava/util/Set;)V

    return-void
.end method
