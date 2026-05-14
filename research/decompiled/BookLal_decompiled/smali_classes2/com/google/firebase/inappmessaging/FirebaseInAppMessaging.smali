.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
.end annotation


# instance fields
.field private areMessagesSuppressed:Z

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

.field private final displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

.field private fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field private lightWeightExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/firebase/annotations/concurrent/Lightweight;
    .end annotation
.end field

.field private final programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2    # Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/Executor;
        .annotation build Lcom/google/firebase/annotations/concurrent/Lightweight;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->lightWeightExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p4}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/google/firebase/firestore/remote/f;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/google/firebase/firestore/remote/f;-><init>(I)V

    invoke-virtual {p2, p7, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->createFirebaseInAppMessageStream()Lz3/d;

    move-result-object p1

    new-instance p2, LQ1/b;

    const/16 p3, 0x10

    invoke-direct {p2, p0, p3}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LQ3/c;

    invoke-direct {p3, p2}, LQ3/c;-><init>(LQ1/b;)V

    invoke-virtual {p1, p3}, Lz3/d;->d(Lz3/g;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 2

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    return-object v0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting InAppMessaging runtime with Installation ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getTriggeringEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;->generateDisplayCallback(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;->displayMessage(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    return-void
.end method

.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V

    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public areMessagesSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    return v0
.end method

.method public clearDisplayListener()V
    .locals 1

    const-string v0, "Removing display event component"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

.method public isAutomaticDataCollectionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeAllListeners()V

    return-void
.end method

.method public removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    return-void
.end method

.method public removeDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V

    return-void
.end method

.method public removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    return-void
.end method

.method public removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Z)V

    return-void
.end method

.method public setMessageDisplayComponent(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V
    .locals 1

    const-string v0, "Setting display event component"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

.method public setMessagesSuppressed(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    return-void
.end method

.method public triggerEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method
