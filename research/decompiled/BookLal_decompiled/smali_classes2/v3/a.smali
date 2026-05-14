.class public final Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b;

.field public final b:Lx3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/a;

    new-instance v1, Lw3/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lv3/a;-><init>(Lt3/b;)V

    return-void
.end method

.method public constructor <init>(Lt3/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lw3/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/a;->a:Lw3/b;

    new-instance p1, Lx3/d;

    const-string v0, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto"

    invoke-direct {p1, v0}, Lx3/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv3/a;->b:Lx3/d;

    new-instance p1, Lx3/d;

    const-string v0, "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto"

    invoke-direct {p1, v0}, Lx3/d;-><init>(Ljava/lang/String;)V

    new-instance p1, Lx3/d;

    const-string v0, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto"

    invoke-direct {p1, v0}, Lx3/d;-><init>(Ljava/lang/String;)V

    new-instance p1, Lj3/G;

    new-instance v0, Lz1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v0}, Lj3/G;-><init>(Lx3/b;)V

    new-instance p1, Lj3/G;

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v0}, Lj3/G;-><init>(Lx3/b;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method
