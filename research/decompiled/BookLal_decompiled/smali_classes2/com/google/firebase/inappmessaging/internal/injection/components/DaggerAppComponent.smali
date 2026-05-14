.class public final Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_lightWeightExecutor;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_developerListenerManager;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsConnector;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggers;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_blockingExecutor;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_firebaseEventsSubscriber;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundRateLimit;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_rateLimiterClient;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_impressionStorageClient;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_schedulers;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsEventsManager;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_providerInstaller;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_application;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_gRPCChannel;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_clock;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_campaignCacheClient;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggerFlowable;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundEventFlowable;,
        Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    }
.end annotation


# instance fields
.field private abtIntegrationHelperProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private analyticsConnectorProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private analyticsEventsManagerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

.field private appForegroundEventFlowableProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private appForegroundRateLimitProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private applicationProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private blockingExecutorProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private campaignCacheClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private clockProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private developerListenerManagerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private displayCallbacksFactoryProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private firebaseEventsSubscriberProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private firebaseInAppMessagingProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private gRPCChannelProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private grpcClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private impressionStorageClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private inAppMessageStreamManagerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private lightWeightExecutorProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private programmaticContextualTriggerFlowableProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private programmaticContextualTriggersProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providerInstallerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesApiClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesApiKeyHeadersProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesDataCollectionHelperProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesFirebaseAppProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesFirebaseInstallationsProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesInAppMessagingSdkServingStubProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesMetricsLoggerClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesSharedPreferencesUtilsProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private providesTestDeviceHelperProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private rateLimiterClientProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private schedulersProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private transportFactoryProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;LP1/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    .line 4
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->initialize(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;LP1/f;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;LP1/f;Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;LP1/f;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$1;)V

    return-object v0
.end method

.method private getDataCollectionHelper()Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesSharedPreferencesUtilsFactory;->providesSharedPreferencesUtils(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->firebaseEventsSubscriber()Lcom/google/firebase/events/Subscriber;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    invoke-static {v2, v3}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/events/Subscriber;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesDataCollectionHelperFactory;->providesDataCollectionHelper(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;Lcom/google/firebase/events/Subscriber;)Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;LP1/f;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundEventFlowable;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundEventFlowable;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->appForegroundEventFlowableProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggerFlowable;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggerFlowable;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->programmaticContextualTriggerFlowableProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_campaignCacheClient;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_campaignCacheClient;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->campaignCacheClientProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_clock;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_clock;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->clockProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_gRPCChannel;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_gRPCChannel;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->gRPCChannelProvider:LX3/a;

    invoke-static/range {p2 .. p2}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesApiKeyHeadersFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesApiKeyHeadersFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesApiKeyHeadersProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->gRPCChannelProvider:LX3/a;

    move-object/from16 v5, p2

    invoke-static {v5, v4, v3}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesInAppMessagingSdkServingStubProvider:LX3/a;

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->create(LX3/a;)Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->grpcClientProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_application;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_application;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->applicationProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_providerInstaller;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_providerInstaller;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providerInstallerProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->grpcClientProvider:LX3/a;

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->applicationProvider:LX3/a;

    invoke-static {v1, v4, v5, v3}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesApiClientFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesApiClientFactory;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesApiClientProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsEventsManager;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsEventsManager;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->analyticsEventsManagerProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_schedulers;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_schedulers;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->schedulersProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_impressionStorageClient;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_impressionStorageClient;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->impressionStorageClientProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_rateLimiterClient;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_rateLimiterClient;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->rateLimiterClientProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundRateLimit;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_appForegroundRateLimit;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->appForegroundRateLimitProvider:LX3/a;

    invoke-static/range {p1 .. p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesSharedPreferencesUtilsFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesSharedPreferencesUtilsFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesSharedPreferencesUtilsProvider:LX3/a;

    invoke-static {v1, v3}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesTestDeviceHelperFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesTestDeviceHelperFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesTestDeviceHelperProvider:LX3/a;

    invoke-static/range {p1 .. p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesFirebaseInstallationsFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesFirebaseInstallationsFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseInstallationsProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_firebaseEventsSubscriber;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_firebaseEventsSubscriber;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->firebaseEventsSubscriberProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesSharedPreferencesUtilsProvider:LX3/a;

    invoke-static {v1, v4, v3}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesDataCollectionHelperFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesDataCollectionHelperFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesDataCollectionHelperProvider:LX3/a;

    invoke-static/range {p4 .. p4}, Lcom/google/firebase/inappmessaging/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/dagger/internal/Factory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->abtIntegrationHelperProvider:LX3/a;

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_blockingExecutor;

    invoke-direct {v3, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_blockingExecutor;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->blockingExecutorProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->appForegroundEventFlowableProvider:LX3/a;

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->programmaticContextualTriggerFlowableProvider:LX3/a;

    iget-object v6, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->campaignCacheClientProvider:LX3/a;

    iget-object v7, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->clockProvider:LX3/a;

    iget-object v8, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesApiClientProvider:LX3/a;

    iget-object v9, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->analyticsEventsManagerProvider:LX3/a;

    iget-object v10, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->schedulersProvider:LX3/a;

    iget-object v11, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->impressionStorageClientProvider:LX3/a;

    iget-object v12, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->rateLimiterClientProvider:LX3/a;

    iget-object v13, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->appForegroundRateLimitProvider:LX3/a;

    iget-object v14, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesTestDeviceHelperProvider:LX3/a;

    iget-object v15, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseInstallationsProvider:LX3/a;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesDataCollectionHelperProvider:LX3/a;

    iget-object v2, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->abtIntegrationHelperProvider:LX3/a;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v4 .. v18}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->create(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->inAppMessageStreamManagerProvider:LX3/a;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggers;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_programmaticContextualTriggers;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->programmaticContextualTriggersProvider:LX3/a;

    invoke-static/range {p1 .. p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesFirebaseAppFactory;->create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule_ProvidesFirebaseAppFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseAppProvider:LX3/a;

    invoke-static/range {p5 .. p5}, Lcom/google/firebase/inappmessaging/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/dagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->transportFactoryProvider:LX3/a;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsConnector;

    invoke-direct {v1, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_analyticsConnector;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->analyticsConnectorProvider:LX3/a;

    new-instance v8, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_developerListenerManager;

    invoke-direct {v8, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_developerListenerManager;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v8, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->developerListenerManagerProvider:LX3/a;

    iget-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseAppProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->transportFactoryProvider:LX3/a;

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->analyticsConnectorProvider:LX3/a;

    iget-object v6, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseInstallationsProvider:LX3/a;

    iget-object v7, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->clockProvider:LX3/a;

    iget-object v9, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->blockingExecutorProvider:LX3/a;

    invoke-static/range {v3 .. v9}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule_ProvidesMetricsLoggerClientFactory;->create(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule_ProvidesMetricsLoggerClientFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v9

    iput-object v9, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesMetricsLoggerClientProvider:LX3/a;

    iget-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->impressionStorageClientProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->clockProvider:LX3/a;

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->schedulersProvider:LX3/a;

    iget-object v6, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->rateLimiterClientProvider:LX3/a;

    iget-object v7, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->campaignCacheClientProvider:LX3/a;

    iget-object v8, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->appForegroundRateLimitProvider:LX3/a;

    iget-object v10, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesDataCollectionHelperProvider:LX3/a;

    invoke-static/range {v3 .. v10}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory_Factory;->create(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->displayCallbacksFactoryProvider:LX3/a;

    new-instance v8, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_lightWeightExecutor;

    invoke-direct {v8, v2}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$com_google_firebase_inappmessaging_internal_injection_components_UniversalComponent_lightWeightExecutor;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)V

    iput-object v8, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->lightWeightExecutorProvider:LX3/a;

    iget-object v2, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->inAppMessageStreamManagerProvider:LX3/a;

    iget-object v3, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->programmaticContextualTriggersProvider:LX3/a;

    iget-object v4, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesDataCollectionHelperProvider:LX3/a;

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesFirebaseInstallationsProvider:LX3/a;

    iget-object v6, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->displayCallbacksFactoryProvider:LX3/a;

    iget-object v7, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->developerListenerManagerProvider:LX3/a;

    invoke-static/range {v2 .. v8}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->create(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/DoubleCheck;->provider(LX3/a;)LX3/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->firebaseInAppMessagingProvider:LX3/a;

    return-void
.end method


# virtual methods
.method public displayCallbacksFactory()Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;
    .locals 11

    new-instance v9, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->impressionStorageClient()Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->clock()Lcom/google/firebase/inappmessaging/internal/time/Clock;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->schedulers()Lcom/google/firebase/inappmessaging/internal/Schedulers;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->rateLimiterClient()Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->campaignCacheClient()Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->appForegroundRateLimit()Lcom/google/firebase/inappmessaging/model/RateLimit;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/inappmessaging/model/RateLimit;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->providesMetricsLoggerClientProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->getDataCollectionHelper()Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    move-result-object v10

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;)V

    return-object v9
.end method

.method public providesFirebaseInAppMessaging()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->firebaseInAppMessagingProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    return-object v0
.end method
