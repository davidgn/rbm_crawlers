.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    return-void
.end method

.method public static synthetic a(Lz3/e;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->lambda$providesProgramaticContextualTriggerStream$0(Lz3/e;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;LK3/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->lambda$providesProgramaticContextualTriggerStream$1(Lz3/e;)V

    return-void
.end method

.method private static synthetic lambda$providesProgramaticContextualTriggerStream$0(Lz3/e;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lz3/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$providesProgramaticContextualTriggerStream$1(Lz3/e;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    new-instance v1, LQ1/b;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;->setListener(Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers$Listener;)V

    return-void
.end method


# virtual methods
.method public providesProgramaticContextualTriggerStream()LD3/a;
    .locals 3
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD3/a;"
        }
    .end annotation

    new-instance v0, LQ1/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    sget v1, Lz3/d;->a:I

    const/4 v1, 0x3

    const-string v2, "mode is null"

    invoke-static {v1, v2}, LC/a;->t(ILjava/lang/String;)V

    new-instance v1, LK3/m;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LK3/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Lz3/d;->c()LK3/Q;

    move-result-object v0

    invoke-virtual {v0}, LD3/a;->f()V

    return-object v0
.end method

.method public providesProgramaticContextualTriggers()Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    return-object v0
.end method
