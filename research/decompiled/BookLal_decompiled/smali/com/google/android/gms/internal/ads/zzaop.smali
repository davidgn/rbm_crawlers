.class final synthetic Lcom/google/android/gms/internal/ads/zzaop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzaop;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaop;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaop;->zza:Lcom/google/android/gms/internal/ads/zzaop;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaog;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaog;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaog;->zzb:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzaog;->zzb:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
