.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lf0/c;->a:Lf0/c;

    return-void
.end method
