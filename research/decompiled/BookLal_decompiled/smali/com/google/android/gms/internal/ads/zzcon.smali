.class public final Lcom/google/android/gms/internal/ads/zzcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcmq;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcpk;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfot;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcpy;

.field private zze:Lcom/google/android/gms/internal/ads/zzflg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/internal/ads/zzcon;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcpk;)Lcom/google/android/gms/internal/ads/zzcon;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzb:Lcom/google/android/gms/internal/ads/zzcpk;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcmo;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcmq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzb:Lcom/google/android/gms/internal/ads/zzcpk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcpk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzfot;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfot;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzfot;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzd:Lcom/google/android/gms/internal/ads/zzcpy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzd:Lcom/google/android/gms/internal/ads/zzcpy;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zze:Lcom/google/android/gms/internal/ads/zzflg;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zze:Lcom/google/android/gms/internal/ads/zzflg;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzb:Lcom/google/android/gms/internal/ads/zzcpk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzfot;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzd:Lcom/google/android/gms/internal/ads/zzcpy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcon;->zze:Lcom/google/android/gms/internal/ads/zzflg;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzcpk;Lcom/google/android/gms/internal/ads/zzfot;Lcom/google/android/gms/internal/ads/zzcpy;Lcom/google/android/gms/internal/ads/zzflg;)V

    return-object v0
.end method
