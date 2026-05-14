.class public final Lcom/google/protobuf/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B0;


# static fields
.field public static final b:Lcom/google/protobuf/y;


# instance fields
.field public final a:Lcom/google/protobuf/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/y;->a()Lcom/google/protobuf/y;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/G;->b:Lcom/google/protobuf/y;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/G;->a:Lcom/google/protobuf/K;

    return-void
.end method
