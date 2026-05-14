.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# static fields
.field private static final TRANSPORT_NAME:Ljava/lang/String; = "FIREBASE_INAPPMESSAGING"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LC4/E;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->lambda$providesMetricsLoggerClient$1(LP1/e;[B)V

    return-void
.end method

.method public static synthetic b([B)[B
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->lambda$providesMetricsLoggerClient$0([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$providesMetricsLoggerClient$0([B)[B
    .locals 0

    return-object p0
.end method

.method private static lambda$providesMetricsLoggerClient$1(LP1/e;[B)V
    .locals 1

    new-instance v0, LP1/a;

    invoke-direct {v0, p1}, LP1/a;-><init>(Ljava/lang/Object;)V

    check-cast p0, LC4/E;

    invoke-virtual {p0, v0}, LC4/E;->n(LP1/a;)V

    return-void
.end method

.method public static providesMetricsLoggerClient(Lcom/google/firebase/FirebaseApp;LP1/f;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;
    .locals 9
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Lcom/google/firebase/annotations/concurrent/Blocking;
        .end annotation
    .end param
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
    .end annotation

    new-instance v0, LD4/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    check-cast p1, LS1/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LP1/b;

    const-string v2, "proto"

    invoke-direct {v1, v2}, LP1/b;-><init>(Ljava/lang/String;)V

    const-string v2, "FIREBASE_INAPPMESSAGING"

    invoke-virtual {p1, v2, v1, v0}, LS1/r;->a(Ljava/lang/String;LP1/b;LP1/d;)LC4/E;

    move-result-object p1

    new-instance v8, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    new-instance v1, LQ1/b;

    const/4 v0, 0x4

    invoke-direct {v1, p1, v0}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;-><init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method
