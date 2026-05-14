.class public final Lq3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lcom/google/protobuf/B0;

.field public final b:Lcom/google/protobuf/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lq3/b;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b;->b:Lcom/google/protobuf/K;

    invoke-interface {p1}, Lcom/google/protobuf/t0;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object p1

    iput-object p1, p0, Lq3/b;->a:Lcom/google/protobuf/B0;

    return-void
.end method
