.class public Lcom/google/firebase/inappmessaging/internal/Schedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final computeScheduler:Lz3/p;

.field private final ioScheduler:Lz3/p;

.field private final mainThreadScheduler:Lz3/p;


# direct methods
.method public constructor <init>(Lz3/p;Lz3/p;Lz3/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lz3/p;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lz3/p;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lz3/p;

    return-void
.end method


# virtual methods
.method public computation()Lz3/p;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lz3/p;

    return-object v0
.end method

.method public io()Lz3/p;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lz3/p;

    return-object v0
.end method

.method public mainThread()Lz3/p;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lz3/p;

    return-object v0
.end method
