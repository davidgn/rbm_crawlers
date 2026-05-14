.class public final Lcom/google/android/gms/internal/ads/zzbha$zzaf;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbha$zzag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzidd<",
        "Lcom/google/android/gms/internal/ads/zzbha$zzaf;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzag;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field private static final zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

.field private static volatile zzw:Lcom/google/android/gms/internal/ads/zziew;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziew<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzidp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidp<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:J

.field private zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzB()Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    return-object v0
.end method

.method public static zzC(Lcom/google/android/gms/internal/ads/zzbha$zzaf;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbo(Lcom/google/android/gms/internal/ads/zzidd;)Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    return-object p0
.end method

.method public static zzD()Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object v0
.end method

.method public static zzH()Lcom/google/android/gms/internal/ads/zziew;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zziew<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbd()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v0

    return-object v0
.end method

.method private zzaA()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzD()Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method private zzaB(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzA()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    return-void
.end method

.method private zzaC(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzp:J

    return-void
.end method

.method private zzaD()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzp:J

    return-void
.end method

.method private zzaE(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzu:I

    return-void
.end method

.method private zzaF()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzu:I

    return-void
.end method

.method public static synthetic zzai()Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object v0
.end method

.method private zzaj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbN(Lcom/google/android/gms/internal/ads/zzidp;)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    :cond_0
    return-void
.end method

.method private zzak(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzal(Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzam(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzan(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzibi;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzao()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    return-void
.end method

.method private zzap(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzaq(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzk:I

    return-void
.end method

.method private zzar()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzk:I

    return-void
.end method

.method private zzas(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzl:I

    return-void
.end method

.method private zzat()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzl:I

    return-void
.end method

.method private zzau(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzm:J

    return-void
.end method

.method private zzav()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzm:J

    return-void
.end method

.method private zzaw(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    return-void
.end method

.method private zzax()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzD()Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    return-void
.end method

.method private zzay(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzA()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    return-void
.end method

.method private zzaz(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzg(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbR(Lcom/google/android/gms/internal/ads/zzidd;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzh(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbQ(Lcom/google/android/gms/internal/ads/zzidd;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbS(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbT(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbU(Lcom/google/android/gms/internal/ads/zzidd;[B)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzl([BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbV(Lcom/google/android/gms/internal/ads/zzidd;[BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzo(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbW(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzp(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbX(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzca(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzt(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzcb(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbY(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbZ(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p0
.end method


# virtual methods
.method public zzA()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    return-object v0
.end method

.method public zzE()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public zzG()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzI(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzak(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V

    return-void
.end method

.method public final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzal(Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V

    return-void
.end method

.method public zzK()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzp:J

    return-wide v0
.end method

.method public final synthetic zzM(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzam(ILcom/google/android/gms/internal/ads/zzbha$zzaf$zza;)V

    return-void
.end method

.method public final synthetic zzN(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzan(Ljava/lang/Iterable;)V

    return-void
.end method

.method public zzO()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzu:I

    return v0
.end method

.method public final synthetic zzQ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzao()V

    return-void
.end method

.method public final synthetic zzR(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzap(I)V

    return-void
.end method

.method public final synthetic zzS(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaq(I)V

    return-void
.end method

.method public final synthetic zzT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzar()V

    return-void
.end method

.method public final synthetic zzU(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzas(I)V

    return-void
.end method

.method public final synthetic zzV()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzat()V

    return-void
.end method

.method public final synthetic zzW(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzau(J)V

    return-void
.end method

.method public final synthetic zzX()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzav()V

    return-void
.end method

.method public final synthetic zzY(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaw(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzZ()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzax()V

    return-void
.end method

.method public zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    return-object v0
.end method

.method public final synthetic zzaa(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzay(Lcom/google/android/gms/internal/ads/zzibz;)V

    return-void
.end method

.method public final synthetic zzab(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaz(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzac()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaA()V

    return-void
.end method

.method public final synthetic zzad(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaB(Lcom/google/android/gms/internal/ads/zzibz;)V

    return-void
.end method

.method public final synthetic zzae(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaC(J)V

    return-void
.end method

.method public final synthetic zzaf()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaD()V

    return-void
.end method

.method public final synthetic zzag(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaE(I)V

    return-void
.end method

.method public final synthetic zzah()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzaF()V

    return-void
.end method

.method public zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public zzc(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;

    return-object p1
.end method

.method public zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    return-object v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zziew;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    throw p3

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzc;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zzi"

    const-string v1, "zzj"

    const-class v2, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;

    const-string v3, "zzk"

    const-string v4, "zzl"

    const-string v5, "zzm"

    const-string v6, "zzn"

    const-string v7, "zzo"

    const-string v8, "zzp"

    const-string v9, "zzu"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbha$zzaf;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzb;

    return-object p1
.end method

.method public zzm()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzk:I

    return v0
.end method

.method public zzq()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzl:I

    return v0
.end method

.method public zzu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzv()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzm:J

    return-wide v0
.end method

.method public zzy()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzi:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf;->zzn:Ljava/lang/String;

    return-object v0
.end method
