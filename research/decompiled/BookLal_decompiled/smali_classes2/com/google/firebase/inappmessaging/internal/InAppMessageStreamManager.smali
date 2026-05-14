.class public Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
.end annotation


# static fields
.field public static final ON_FOREGROUND:Ljava/lang/String; = "ON_FOREGROUND"


# instance fields
.field private final abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field private final analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

.field private final apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

.field private final appForegroundEventFlowable:LD3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LD3/a;"
        }
    .end annotation
.end field

.field private final appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

.field private final blockingExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/firebase/annotations/concurrent/Blocking;
    .end annotation
.end field

.field private final campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field private final programmaticTriggerEventFlowable:LD3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LD3/a;"
        }
    .end annotation
.end field

.field private final rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field private final schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

.field private final testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method public constructor <init>(LD3/a;LD3/a;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # LD3/a;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
    .param p2    # LD3/a;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .param p10    # Lcom/google/firebase/inappmessaging/model/RateLimit;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
    .param p15    # Ljava/util/concurrent/Executor;
        .annotation build Lcom/google/firebase/annotations/concurrent/Blocking;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD3/a;",
            "LD3/a;",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:LD3/a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:LD3/a;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    iput-object p11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    iput-object p13, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iput-object p12, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iput-object p14, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iput-object p15, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic A(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$18(LZ2/j;)V

    return-void
.end method

.method public static synthetic C(LY2/e;Ljava/lang/Boolean;)LY2/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$10(LY2/e;Ljava/lang/Boolean;)LY2/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;LL3/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$30(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lz3/i;)V

    return-void
.end method

.method public static synthetic E(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/d;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/j;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$16(LZ2/d;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/j;Lcom/google/firebase/inappmessaging/internal/m;Lcom/google/firebase/inappmessaging/internal/k;LZ2/j;)Lz3/h;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$14(Ljava/lang/String;LE3/c;LE3/c;LE3/c;LZ2/j;)Lz3/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(LY2/e;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$8(LY2/e;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LL3/g;LZ2/d;)Lz3/h;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$20(Lz3/h;LZ2/d;)Lz3/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LY2/e;)Lz3/h;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$13(LY2/e;)Lz3/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LY2/e;)Lz3/h;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$11(LY2/e;)Lz3/h;

    move-result-object p0

    return-object p0
.end method

.method public static cacheExpiringResponse()LZ2/j;
    .locals 3

    invoke-static {}, LZ2/j;->j()LZ2/i;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, LZ2/i;->c(J)V

    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object v0

    check-cast v0, LZ2/j;

    return-object v0
.end method

.method private static compareByPriority(LY2/e;LY2/e;)I
    .locals 1

    invoke-virtual {p0}, LY2/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LY2/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, LY2/e;->j()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result p0

    invoke-virtual {p1}, LY2/e;->j()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static containsTriggeringCondition(Ljava/lang/String;LY2/e;)Z
    .locals 3

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, LY2/e;->k()Lcom/google/protobuf/Y;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The event "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is contained in the list of triggers"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;LY2/e;)Lz3/k;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$27(Ljava/lang/String;LY2/e;)Lz3/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)LT4/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$21(Ljava/lang/String;)LT4/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz3/i;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$29(Lz3/i;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$23(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private getContentIfNotRateLimited(Ljava/lang/String;LY2/e;)Lz3/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LY2/e;",
            ")",
            "Lz3/h;"
        }
    .end annotation

    invoke-virtual {p2}, LY2/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    invoke-virtual {p1, v0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isRateLimited(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lz3/q;

    move-result-object p1

    new-instance v0, LD4/a;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LN3/a;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, LN3/a;-><init>(Lz3/q;Ljava/lang/Object;I)V

    new-instance p1, LN3/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG3/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance p1, LN3/a;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v0, v2}, LN3/a;-><init>(Lz3/q;Ljava/lang/Object;I)V

    new-instance v0, LD4/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    new-instance v1, LL3/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, LL3/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/l;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/inappmessaging/internal/l;-><init>(LY2/e;I)V

    new-instance p2, LL3/j;

    const/4 v0, 0x1

    invoke-direct {p2, v1, p1, v0}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    return-object p2

    :cond_0
    invoke-static {p2}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    return-object p1
.end method

.method private getTriggeredInAppMessageMaybe(Ljava/lang/String;LE3/c;LE3/c;LE3/c;LZ2/j;)Lz3/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LE3/c;",
            "LE3/c;",
            "LE3/c;",
            "LZ2/j;",
            ")",
            "Lz3/h;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p5}, LZ2/j;->i()Lcom/google/protobuf/Y;

    move-result-object p5

    sget v2, Lz3/d;->a:I

    const-string v2, "source is null"

    invoke-static {p5, v2}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LK3/m;

    invoke-direct {v2, p5, v0}, LK3/m;-><init>(Ljava/lang/Object;I)V

    new-instance p5, Lcom/google/firebase/inappmessaging/internal/j;

    invoke-direct {p5, p0, v0}, Lcom/google/firebase/inappmessaging/internal/j;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V

    new-instance v3, LK3/x;

    invoke-direct {v3, v2, p5, v1}, LK3/x;-><init>(Lz3/d;Ljava/lang/Object;I)V

    new-instance p5, LQ1/b;

    const/16 v2, 0x13

    invoke-direct {p5, p1, v2}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LK3/x;

    invoke-direct {v2, v3, p5, v1}, LK3/x;-><init>(Lz3/d;Ljava/lang/Object;I)V

    invoke-virtual {v2, p2}, Lz3/d;->b(LE3/c;)LK3/B;

    move-result-object p2

    invoke-virtual {p2, p3}, Lz3/d;->b(LE3/c;)LK3/B;

    move-result-object p2

    invoke-virtual {p2, p4}, Lz3/d;->b(LE3/c;)LK3/B;

    move-result-object p2

    new-instance p3, LJ/b;

    const/16 p4, 0x9

    invoke-direct {p3, p4}, LJ/b;-><init>(I)V

    new-instance p4, LK3/x;

    invoke-direct {p4, p2}, LK3/x;-><init>(LK3/B;)V

    new-instance p2, LK0/j;

    invoke-direct {p2, p3, v0}, LK0/j;-><init>(Ljava/lang/Object;I)V

    new-instance p3, LK3/x;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p2, p5}, LK3/x;-><init>(Lz3/d;Ljava/lang/Object;I)V

    sget p2, Lz3/d;->a:I

    const-string p4, "bufferSize"

    invoke-static {p2, p4}, LG3/d;->b(ILjava/lang/String;)V

    new-instance p4, LK3/B;

    invoke-direct {p4, p3, p2}, LK3/B;-><init>(LK3/x;I)V

    new-instance p2, LK3/t;

    invoke-direct {p2, p4}, LK3/t;-><init>(LK3/B;)V

    new-instance p3, Lcom/google/firebase/inappmessaging/internal/m;

    invoke-direct {p3, p0, p1, v1}, Lcom/google/firebase/inappmessaging/internal/m;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;I)V

    new-instance p1, LL3/j;

    invoke-direct {p1, p2, p3, v1}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    return-object p1
.end method

.method public static synthetic h(LZ2/j;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$1(LZ2/j;)V

    return-void
.end method

.method private static hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$22(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;LY2/e;)Z
    .locals 7

    invoke-virtual {p1}, LY2/e;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/e;->a(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LY2/e;->l()LY2/f;

    move-result-object v0

    invoke-virtual {v0}, LY2/f;->h()J

    move-result-wide v3

    invoke-virtual {p1}, LY2/e;->l()LY2/f;

    move-result-object p1

    invoke-virtual {p1}, LY2/f;->f()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LY2/e;->i()I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ls/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object v0

    invoke-virtual {v0}, LY2/b;->h()J

    move-result-wide v3

    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object p1

    invoke-virtual {p1}, LY2/b;->f()J

    move-result-wide v5

    :goto_0
    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide p0

    cmp-long v0, p0, v3

    if-lez v0, :cond_1

    cmp-long p0, p0, v5

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    return v2
.end method

.method public static isAppForegroundEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAppForegroundEvent(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;LY2/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$26(Ljava/lang/String;LY2/e;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$3()V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$15(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event Triggered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$1(LZ2/j;)V
    .locals 0

    const-string p0, "Fetched from cache"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$10(LY2/e;Ljava/lang/Boolean;)LY2/e;
    .locals 0

    return-object p0
.end method

.method private lambda$createFirebaseInAppMessageStream$11(LY2/e;)Lz3/h;
    .locals 4

    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->isImpressed(LY2/e;)Lz3/q;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LN3/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, LN3/a;-><init>(Lz3/q;Ljava/lang/Object;I)V

    new-instance v0, LN3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LG3/c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LN3/a;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, LN3/a;-><init>(Lz3/q;Ljava/lang/Object;I)V

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/inappmessaging/internal/l;-><init>(LY2/e;I)V

    new-instance v2, LN3/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, LN3/a;-><init>(Lz3/q;Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v1, LL3/h;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0}, LL3/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/l;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lcom/google/firebase/inappmessaging/internal/l;-><init>(LY2/e;I)V

    new-instance p1, LL3/j;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v0, v2}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$12(Ljava/lang/String;LY2/e;)Lz3/h;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getContentIfNotRateLimited(Ljava/lang/String;LY2/e;)Lz3/h;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$13(LY2/e;)Lz3/h;
    .locals 2

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$1;->$SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase:[I

    invoke-virtual {p0}, LY2/e;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "Filtering non-displayable message"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    sget-object p0, LL3/e;->a:LL3/e;

    return-object p0

    :cond_0
    invoke-static {p0}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$14(Ljava/lang/String;LE3/c;LE3/c;LE3/c;LZ2/j;)Lz3/h;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getTriggeredInAppMessageMaybe(Ljava/lang/String;LE3/c;LE3/c;LE3/c;LZ2/j;)Lz3/h;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$15(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impressions store read fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$16(LZ2/d;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/j;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getFiams(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;LZ2/d;)LZ2/j;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$17(LZ2/j;)V
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, LZ2/j;->i()Lcom/google/protobuf/Y;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully fetched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " messages from backend"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private lambda$createFirebaseInAppMessageStream$18(LZ2/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearImpressions(LZ2/j;)Lz3/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LB3/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LB3/c;-><init>(I)V

    invoke-virtual {p1, v0}, Lz3/a;->d(Lz3/b;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$19(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service fetch error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$2(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache read error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private lambda$createFirebaseInAppMessageStream$20(Lz3/h;LZ2/d;)Lz3/h;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Automatic data collection is disabled, not attempting campaign fetch from service."

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()LZ2/j;

    move-result-object p1

    invoke-static {p1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LD4/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/a;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0, p2}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, LL3/j;

    const/4 v0, 0x1

    invoke-direct {p2, v1, p1, v0}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()LZ2/j;

    move-result-object p1

    invoke-static {p1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    new-instance v0, LL3/g;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p1, v1}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance p1, LD4/a;

    const/16 p2, 0x1c

    invoke-direct {p1, p2}, LD4/a;-><init>(I)V

    new-instance p2, LL3/r;

    sget-object v1, LG3/d;->d:Lz2/e;

    invoke-direct {p2, v0, p1, v1}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/j;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/inappmessaging/internal/j;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V

    new-instance v0, LL3/r;

    invoke-direct {v0, p2, p1, v1}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LQ1/b;

    const/16 v2, 0x11

    invoke-direct {p2, p1, v2}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    new-instance p1, LL3/r;

    invoke-direct {p1, v0, p2, v1}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LQ1/b;

    const/16 v2, 0x12

    invoke-direct {v0, p2, v2}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    new-instance p2, LL3/r;

    invoke-direct {p2, p1, v0, v1}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v0, LL3/r;

    invoke-direct {v0, p2, v1, p1}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    sget-object p1, LL3/e;->a:LL3/e;

    new-instance p2, LG3/c;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance p1, LL3/j;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p2, v1}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    return-object p1
.end method

.method private lambda$createFirebaseInAppMessageStream$21(Ljava/lang/String;)LT4/a;
    .locals 14

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->get()Lz3/h;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LL3/r;

    sget-object v7, LG3/d;->d:Lz2/e;

    invoke-direct {v6, v4, v5, v7}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    new-instance v4, Lcom/google/firebase/inappmessaging/internal/k;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v5, LL3/r;

    invoke-direct {v5, v6, v7, v4}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    sget-object v4, LL3/e;->a:LL3/e;

    new-instance v6, LG3/c;

    invoke-direct {v6, v4, v3}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance v4, LL3/j;

    invoke-direct {v4, v5, v6, v2}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance v5, Lcom/google/firebase/inappmessaging/internal/j;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/google/firebase/inappmessaging/internal/j;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V

    new-instance v11, Lcom/google/firebase/inappmessaging/internal/j;

    invoke-direct {v11, p0, v0}, Lcom/google/firebase/inappmessaging/internal/j;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V

    new-instance v12, Lcom/google/firebase/inappmessaging/internal/m;

    invoke-direct {v12, p0, p1, v1}, Lcom/google/firebase/inappmessaging/internal/m;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;I)V

    new-instance v13, Lcom/google/firebase/inappmessaging/internal/k;

    const/16 v6, 0x9

    invoke-direct {v13, v6}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/n;

    move-object v8, v6

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/google/firebase/inappmessaging/internal/n;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/j;Lcom/google/firebase/inappmessaging/internal/m;Lcom/google/firebase/inappmessaging/internal/k;)V

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {v8}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lz3/h;

    move-result-object v8

    new-instance v9, LD4/a;

    const/16 v10, 0x19

    invoke-direct {v9, v10}, LD4/a;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, LL3/r;

    invoke-direct {v10, v8, v7, v9}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    invoke-static {}, LZ2/d;->h()LZ2/d;

    move-result-object v8

    const-string v9, "item is null"

    invoke-static {v8, v9}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object v8

    new-instance v9, LL3/g;

    invoke-direct {v9, v10, v8, v2}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    invoke-static {}, LZ2/d;->h()LZ2/d;

    move-result-object v8

    invoke-static {v8}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object v8

    new-instance v10, LG3/c;

    invoke-direct {v10, v8, v3}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance v8, LL3/j;

    invoke-direct {v8, v9, v10, v2}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    iget-object v9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v9}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v9

    iget-object v10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v9, v10}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)Lz3/h;

    move-result-object v9

    iget-object v10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v10, v3}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v10

    iget-object v11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v10, v11}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)Lz3/h;

    move-result-object v10

    new-instance v11, LD4/a;

    const/16 v12, 0x1a

    invoke-direct {v11, v12}, LD4/a;-><init>(I)V

    const-string v12, "source1 is null"

    invoke-static {v9, v12}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "source2 is null"

    invoke-static {v10, v12}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ld3/a;

    invoke-direct {v12, v11}, Ld3/a;-><init>(LD4/a;)V

    new-array v11, v2, [Lz3/k;

    aput-object v9, v11, v3

    aput-object v10, v11, v1

    new-instance v9, LL3/h;

    invoke-direct {v9, v1, v11, v12}, LL3/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v10}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lz3/p;

    move-result-object v10

    const-string v11, "scheduler is null"

    invoke-static {v10, v11}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LL3/g;

    invoke-direct {v11, v9, v10, v1}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/a;

    const/4 v9, 0x6

    invoke-direct {v1, v9, p0, v11}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->shouldIgnoreCache(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result p1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forcing fetch from service rather than cache. Test Device: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | App Fresh Install: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    new-instance p1, LL3/j;

    invoke-direct {p1, v8, v1, v3}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance v1, LL3/j;

    invoke-direct {v1, p1, v6, v3}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance p1, LK3/m;

    invoke-direct {p1, v1, v0}, LK3/m;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    const-string p1, "Attempting to fetch campaigns using cache"

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance p1, LL3/j;

    invoke-direct {p1, v8, v1, v3}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance v1, LL3/r;

    invoke-direct {v1, p1, v5, v7}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    new-instance p1, LL3/g;

    invoke-direct {p1, v4, v1, v2}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v1, LL3/j;

    invoke-direct {v1, p1, v6, v3}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance p1, LK3/m;

    invoke-direct {p1, v1, v0}, LK3/m;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$3()V
    .locals 1

    const-string v0, "Wrote to cache"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$4(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache write error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lz3/c;
    .locals 0

    sget-object p0, LJ3/c;->a:LJ3/c;

    return-object p0
.end method

.method private lambda$createFirebaseInAppMessageStream$6(LZ2/j;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->put(LZ2/j;)Lz3/a;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    invoke-virtual {p1, v0}, Lz3/a;->c(LE3/a;)LJ3/e;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    sget-object v1, LG3/d;->c:Ly3/c;

    new-instance v2, LJ3/e;

    invoke-direct {v2, p1, v0, v1}, LJ3/e;-><init>(Lz3/a;LE3/b;LE3/a;)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/k;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v0, LJ3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1}, LJ3/f;-><init>(Ljava/lang/Object;LE3/c;I)V

    new-instance p1, LB3/c;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, LB3/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lz3/a;->d(Lz3/b;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$7(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impression store read fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$8(LY2/e;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->logImpressionStatus(LY2/e;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$22(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App foreground rate limited ? : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$23(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$24(LY2/e;Ljava/lang/Boolean;)LY2/e;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$getTriggeredInAppMessageMaybe$25(LY2/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;LY2/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$getTriggeredInAppMessageMaybe$26(Ljava/lang/String;LY2/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->containsTriggeringCondition(Ljava/lang/String;LY2/e;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getTriggeredInAppMessageMaybe$27(Ljava/lang/String;LY2/e;)Lz3/k;
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->triggeredInAppMessage(LY2/e;Ljava/lang/String;)Lz3/h;

    move-result-object p1

    return-object p1
.end method

.method private static lambda$taskToMaybe$28(Lz3/i;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, LL3/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LF3/a;->a:LF3/a;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB3/b;

    if-eq v1, v2, :cond_2

    iget-object v0, v0, LL3/c;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v2, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, LB3/b;->b()V

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, LB3/b;->b()V

    :cond_1
    throw p0

    :cond_2
    :goto_2
    check-cast p0, LL3/c;

    invoke-virtual {p0}, LL3/c;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$taskToMaybe$29(Lz3/i;Ljava/lang/Exception;)V
    .locals 0

    check-cast p0, LL3/c;

    invoke-virtual {p0, p1}, LL3/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LL3/c;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$taskToMaybe$30(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lz3/i;)V
    .locals 2

    new-instance v0, LY0/l;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, LY0/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, LY0/I;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, LY0/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static logImpressionStatus(LY2/e;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, LY2/e;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/e;->a(II)Z

    move-result v0

    const-string v1, " ? : "

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LY2/e;->l()LY2/f;

    move-result-object p0

    invoke-virtual {p0}, LY2/f;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already impressed campaign "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LY2/e;->i()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ls/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LY2/e;->g()LY2/b;

    move-result-object p0

    invoke-virtual {p0}, LY2/b;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already impressed experiment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic m(Lz3/i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$28(Lz3/i;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic o(LY2/e;Ljava/lang/Boolean;)LY2/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$24(LY2/e;Ljava/lang/Boolean;)LY2/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;LY2/e;)Lz3/h;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$12(Ljava/lang/String;LY2/e;)Lz3/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LY2/e;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$25(LY2/e;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(LZ2/j;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$17(LZ2/j;)V

    return-void
.end method

.method private shouldIgnoreCache(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result p1

    return p1
.end method

.method public static synthetic t(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)Lz3/h;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lcom/google/firebase/annotations/concurrent/Blocking;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz3/h;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, LL3/d;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, LL3/d;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method private triggeredInAppMessage(LY2/e;Ljava/lang/String;)Lz3/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY2/e;",
            "Ljava/lang/String;",
            ")",
            "Lz3/h;"
        }
    .end annotation

    invoke-virtual {p1}, LY2/e;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/e;->a(II)Z

    move-result v0

    sget-object v1, LL3/e;->a:LL3/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LY2/e;->l()LY2/f;

    move-result-object v0

    invoke-virtual {v0}, LY2/f;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LY2/e;->l()LY2/f;

    move-result-object v2

    invoke-virtual {v2}, LY2/f;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LY2/e;->i()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ls/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object v0

    invoke-virtual {v0}, LY2/b;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object v2

    invoke-virtual {v2}, LY2/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object v4

    invoke-virtual {v4}, LY2/b;->j()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->setExperimentActive(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, LY2/e;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v3

    invoke-virtual {p1}, LY2/e;->h()Z

    move-result v4

    invoke-virtual {p1}, LY2/e;->f()Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, v0, v2, v4, p1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static synthetic u(LY2/e;LY2/e;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->compareByPriority(LY2/e;LY2/e;)I

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$6(LZ2/j;)V

    return-void
.end method

.method private static validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic w(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$4(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic y(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$19(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic z(Ljava/lang/Throwable;)Lz3/c;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lz3/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFirebaseInAppMessageStream()Lz3/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz3/d;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:LD3/a;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->getAnalyticsEventsFlowable()LD3/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:LD3/a;

    sget v6, Lz3/d;->a:I

    const-string v6, "source1 is null"

    invoke-static {v3, v6}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "source2 is null"

    invoke-static {v4, v6}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "source3 is null"

    invoke-static {v5, v6}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v1, [LT4/a;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v2

    aput-object v5, v6, v0

    new-instance v3, LK3/m;

    invoke-direct {v3, v6, v2}, LK3/m;-><init>(Ljava/lang/Object;I)V

    sget-object v4, LG3/d;->a:Ld3/a;

    const-string v5, "maxConcurrency"

    invoke-static {v1, v5}, LG3/d;->b(ILjava/lang/String;)V

    sget v1, Lz3/d;->a:I

    const-string v5, "bufferSize"

    invoke-static {v1, v5}, LG3/d;->b(ILjava/lang/String;)V

    instance-of v6, v3, LH3/f;

    if-eqz v6, :cond_1

    check-cast v3, LH3/f;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, LK3/u;->b:LK3/u;

    goto :goto_0

    :cond_0
    new-instance v6, LK3/S;

    invoke-direct {v6, v3, v4}, LK3/S;-><init>(Ljava/lang/Object;LE3/c;)V

    move-object v3, v6

    goto :goto_0

    :cond_1
    new-instance v4, LK3/h;

    invoke-direct {v4, v3, v1}, LK3/h;-><init>(LK3/m;I)V

    move-object v3, v4

    :goto_0
    new-instance v4, Lcom/google/firebase/inappmessaging/internal/k;

    invoke-direct {v4, v2}, Lcom/google/firebase/inappmessaging/internal/k;-><init>(I)V

    new-instance v6, LK3/p;

    invoke-direct {v6, v3, v4}, LK3/p;-><init>(Lz3/d;Lcom/google/firebase/inappmessaging/internal/k;)V

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lz3/p;

    move-result-object v3

    const-string v4, "scheduler is null"

    invoke-static {v3, v4}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, LG3/d;->b(ILjava/lang/String;)V

    new-instance v7, LK3/B;

    invoke-direct {v7, v6, v3, v1}, LK3/B;-><init>(Lz3/d;Lz3/p;I)V

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/j;

    invoke-direct {v3, p0, v2}, Lcom/google/firebase/inappmessaging/internal/j;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V

    const-string v2, "prefetch"

    invoke-static {v0, v2}, LG3/d;->b(ILjava/lang/String;)V

    instance-of v0, v7, LH3/f;

    if-eqz v0, :cond_3

    check-cast v7, LH3/f;

    invoke-interface {v7}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, LK3/u;->b:LK3/u;

    goto :goto_1

    :cond_2
    new-instance v2, LK3/S;

    invoke-direct {v2, v0, v3}, LK3/S;-><init>(Ljava/lang/Object;LE3/c;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, LK3/h;

    invoke-direct {v0, v7, v3}, LK3/h;-><init>(LK3/B;Lcom/google/firebase/inappmessaging/internal/j;)V

    :goto_1
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThread()Lz3/p;

    move-result-object v2

    invoke-static {v2, v4}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, LG3/d;->b(ILjava/lang/String;)V

    new-instance v3, LK3/B;

    invoke-direct {v3, v0, v2, v1}, LK3/B;-><init>(Lz3/d;Lz3/p;I)V

    return-object v3
.end method
