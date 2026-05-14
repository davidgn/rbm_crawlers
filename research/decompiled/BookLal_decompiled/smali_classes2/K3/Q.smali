.class public final LK3/Q;
.super LD3/a;
.source "SourceFile"


# instance fields
.field public final b:Lz3/d;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:I

.field public final e:LK3/N;


# direct methods
.method public constructor <init>(LK3/N;Lz3/d;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/Q;->e:LK3/N;

    iput-object p2, p0, LK3/Q;->b:Lz3/d;

    iput-object p3, p0, LK3/Q;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, LK3/Q;->d:I

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 1

    iget-object v0, p0, LK3/Q;->e:LK3/N;

    invoke-virtual {v0, p1}, LK3/N;->a(Lz3/g;)V

    return-void
.end method
