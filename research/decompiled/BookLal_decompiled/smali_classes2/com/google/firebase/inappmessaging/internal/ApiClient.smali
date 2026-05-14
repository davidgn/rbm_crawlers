.class public Lcom/google/firebase/inappmessaging/internal/ApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
.end annotation


# static fields
.field private static final FETCHING_CAMPAIGN_MESSAGE:Ljava/lang/String; = "Fetching campaigns from service."


# instance fields
.field private final application:Landroid/app/Application;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final grpcClient:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;


# direct methods
.method public constructor <init>(LX3/a;Lcom/google/firebase/FirebaseApp;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "Lcom/google/firebase/FirebaseApp;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            "Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->grpcClient:LX3/a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;

    return-void
.end method

.method private getClientAppInfo(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/f;
    .locals 2

    invoke-static {}, LZ2/f;->i()LZ2/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ2/e;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ2/e;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZ2/e;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LZ2/f;

    return-object p1
.end method

.method private getClientSignals()LP2/b;
    .locals 3

    invoke-static {}, LP2/b;->j()LP2/a;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LP2/a;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LP2/a;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LP2/a;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, LP2/a;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object v0

    check-cast v0, LP2/b;

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error finding versionName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private withCacheExpirationSafeguards(LZ2/j;)LZ2/j;
    .locals 9

    invoke-virtual {p1}, LZ2/j;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v2

    cmp-long v0, v0, v7

    if-ltz v0, :cond_1

    invoke-virtual {p1}, LZ2/j;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x3

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v2

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/K;->toBuilder()Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, LZ2/i;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, LZ2/i;->c(J)V

    invoke-virtual {p1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LZ2/j;

    return-object p1
.end method


# virtual methods
.method public getFiams(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;LZ2/d;)LZ2/j;
    .locals 3

    const-string v0, "Fetching campaigns from service."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;->install()V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->grpcClient:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    invoke-static {}, LZ2/h;->k()LZ2/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LZ2/g;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, LZ2/d;->g()Lcom/google/protobuf/Y;

    move-result-object p2

    invoke-virtual {v1, p2}, LZ2/g;->c(Lcom/google/protobuf/Y;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getClientSignals()LP2/b;

    move-result-object p2

    invoke-virtual {v1, p2}, LZ2/g;->d(LP2/b;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getClientAppInfo(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)LZ2/f;

    move-result-object p1

    invoke-virtual {v1, p1}, LZ2/g;->f(LZ2/f;)V

    invoke-virtual {v1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LZ2/h;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->fetchEligibleCampaigns(LZ2/h;)LZ2/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->withCacheExpirationSafeguards(LZ2/j;)LZ2/j;

    move-result-object p1

    return-object p1
.end method
