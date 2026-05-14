.class public abstract LW2/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/protobuf/m1;->c:Lcom/google/protobuf/i1;

    sget-object v1, Lcom/google/protobuf/m1;->e:Lcom/google/protobuf/k1;

    invoke-static {}, LW2/H0;->t()LW2/H0;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/n0;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/n0;-><init>(Lcom/google/protobuf/i1;Lcom/google/protobuf/m1;Ljava/lang/Object;)V

    sput-object v3, LW2/H;->a:Lcom/google/protobuf/n0;

    return-void
.end method
