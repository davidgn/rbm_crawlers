.class public final Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataCollectionHelperProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final developerListenerManagerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final displayCallbacksFactoryProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final firebaseInstallationsProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final inAppMessageStreamManagerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final lightWeightExecutorProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final programaticContextualTriggersProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->inAppMessageStreamManagerProvider:LX3/a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->programaticContextualTriggersProvider:LX3/a;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->dataCollectionHelperProvider:LX3/a;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->firebaseInstallationsProvider:LX3/a;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->displayCallbacksFactoryProvider:LX3/a;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->developerListenerManagerProvider:LX3/a;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->lightWeightExecutorProvider:LX3/a;

    return-void
.end method

.method public static create(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            ")",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;"
        }
    .end annotation

    new-instance v8, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;-><init>(LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;LX3/a;)V

    return-object v8
.end method

.method public static newInstance(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 9

    new-instance v8, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->inAppMessageStreamManagerProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->programaticContextualTriggersProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->dataCollectionHelperProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->firebaseInstallationsProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->displayCallbacksFactoryProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->developerListenerManagerProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->lightWeightExecutorProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/Executor;

    invoke-static/range {v1 .. v7}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->newInstance(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging_Factory;->get()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object v0

    return-object v0
.end method
