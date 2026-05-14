.class public final Lcom/google/android/gms/internal/ads/zzaoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamv;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzamn;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaob;

.field private zze:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Ljava/util/List;JJ)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaob;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzd:Lcom/google/android/gms/internal/ads/zzaob;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaob;->zza(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzamu;Lcom/google/android/gms/internal/ads/zzds;)V
    .locals 8

    add-int/2addr p3, p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zze:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zze:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zze:Ljava/util/zip/Inflater;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzfk;->zzL(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzes;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result p1

    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoc;->zzd:Lcom/google/android/gms/internal/ads/zzaob;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzc()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_6

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result p3

    if-eq p3, p2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzaob;->zzd(Lcom/google/android/gms/internal/ads/zzes;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzf()J

    move-result-wide p2

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzaob;->zzb(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zze()J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zze()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzf()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zze()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzf()J

    move-result-wide v0

    sub-long/2addr v0, p2

    :cond_3
    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzf()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzamn;

    if-eqz p4, :cond_5

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p3

    :goto_2
    move-object v3, p3

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p3

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zze()J

    move-result-wide v4

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Ljava/util/List;JJ)V

    goto :goto_5

    :cond_6
    :goto_4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaoc;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    :goto_5
    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/ads/zzds;->zza(Ljava/lang/Object;)V

    return-void
.end method
