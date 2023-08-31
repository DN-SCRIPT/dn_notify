// You can add or remove any notification
// type from here. Make sure you use the
// same name as the one in the brackets

const dnNotifications = {
  ['error']: {
    background: 'rgba(255, 0, 0, 0.8)',
    titleColor: '##ffaaaa',
    messageColor: '#ffffff',
    borderRadius: '5px',
    icon: '<i class="fa-solid fa-circle-info"></i>',
  },
  ['success']: {
    background: 'rgba(91, 206, 25, 0.8)',
    titleColor: '##ffaaaa',
    messageColor: '#ffffff',
    borderRadius: '5px',
    icon: '<i class="fa-solid fa-circle-info"></i>',
  },
  ['warn']: {
    background: 'rgba(159, 28, 28, 0.8)',
    titleColor: '##ffaaaa',
    messageColor: '#ffffff',
    borderRadius: '5px',
    icon: '<i class="fa-solid fa-circle-info"></i>',
  },
  ['info']: {
    background: 'rgba(9, 173, 220, 0.8)',
    titleColor: '##ffaaaa',
    messageColor: '#ffffff',
    borderRadius: '5px',
    icon: '<i class="fa-solid fa-circle-info"></i>',
  },
  ['announcement']: {
    background: 'rgba(235, 96, 35, 0.8)',
    titleColor: '##ffaaaa',
    messageColor: '#ffffff',
    boldTitle: false,
    borderRadius: '8px',
    border: '2px solid rgba(65,196,255,1)',
    borderRadius: '5px',
    icon: '<i class="fa-solid fa-circle-info"></i>',
    duration: 4000,
    audio: 'assets/dn_notify.ogg',
  },
}
