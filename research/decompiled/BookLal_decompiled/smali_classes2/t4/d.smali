.class public final Lt4/d;
.super Lt4/N;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lt4/N;-><init>()V

    iput-object p1, p0, Lt4/d;->n:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final t()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lt4/d;->n:Ljava/lang/Thread;

    return-object v0
.end method
