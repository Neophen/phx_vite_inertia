<script setup lang="ts" name="XIcon">
interface Props {
  icon: string
  color?:
  | 'primary'
  | 'secondary'
  | 'success'
  | 'danger'
  | 'warning'
  | 'info'
  | 'light'
  | 'dark'
  size?:
  | 'sm'
  | 'md'
  | 'lg'
  | 'xl'
  | '2xl'
  | '3xl'
  | '4xl'
  | '5xl'
  | '6xl'
  | '7xl'
  | '8xl'
  | '9xl'
  | '10xl'
}

const { icon, color = 'primary', size = 'md' } = defineProps<Props>()

const SIZE_TO_CLASS = {
  'sm': 'text-sm',
  'md': 'text-base',
  'lg': 'text-lg',
  'xl': 'text-xl',
  '2xl': 'text-2xl',
  '3xl': 'text-3xl',
  '4xl': 'text-4xl',
  '5xl': 'text-5xl',
  '6xl': 'text-6xl',
  '7xl': 'text-7xl',
  '8xl': 'text-8xl',
  '9xl': 'text-9xl',
  '10xl': 'text-10xl',
}

const COLOR_TO_CLASS = {
  primary: 'text-primary-500',
  secondary: 'text-secondary-500',
  success: 'text-success-500',
  danger: 'text-danger-500',
  warning: 'text-warning-500',
  info: 'text-info-500',
  light: 'text-light-500',
  dark: 'text-dark-500',
}

const iconSize = $computed(() => SIZE_TO_CLASS[size])
const iconColor = $computed(() => COLOR_TO_CLASS[color])

const classes = $computed(() => [icon, iconSize, iconColor].join(' '))
</script>

<template>
  <div :class="classes" />
</template>
